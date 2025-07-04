local mq              = require('mq')
local ImGui           = require('ImGui')
local Icons           = require('mq.ICONS')
local Data            = require('quest.quest_data')
local Actors          = require('actors')
local PackageMan      = require('mq.PackageMan')
local SQL             = PackageMan.Require('lsqlite3')
local Utils           = require('mq.Utils')
local Version         = 1.3

local ResourceDir     = mq.TLO.MacroQuest.Path('resources')()
local FileDB          = string.format("%s/QuestWatch.db", ResourceDir)
local UpdateFile      = string.format("%s/QuestWatchVer.lua", ResourceDir)
local ExportFile      = string.format("%s/QuestWatchExport.lua", ResourceDir)
local ImportFile      = ''

local MySelf          = mq.TLO.Me
local MyName          = MySelf.CleanName()
local MyClass         = (MySelf.Class.ShortName() or 'unknown'):lower()
local MyArmor         = 'cloth'
local MyActor         = nil

local Boxes           = {} -- holds actors data
local BoxCompleted    = {}
local ActorsList      = {}
local SelectedBox     = 'none' -- currently selected actor box
local GetData         = false  -- flag to ask for data from actors
local SendData        = false  -- flag to send data to actors

local isRunning       = true
local ShowMain        = false
local ShowActors      = false
local ShowAddQuest    = false
local ExportData      = false
local ImportQuests    = false

local LookupExpan     = 'none'
local LastLookupExpan = 'none'
local EnterNewQuest   = false
local NewQuestExpan   = 'none'
local NewQuestData    = {}

local SQLFilters      = {
	['expansion'] = '',
	['quest_name'] = '',
	['item_slot'] = '',
	['item_type'] = '',
	['item_name'] = '',
	['quest_cat'] = '',
	['restriction'] = '', -- class, armor type, etc.
}

local EQ_ICON_OFFSET  = 500
local animMini        = mq.FindTextureAnimation("A_DragItem")


local buttonWinFlags = bit32.bor(
	ImGuiWindowFlags.NoTitleBar,
	ImGuiWindowFlags.NoResize,
	ImGuiWindowFlags.NoScrollbar,
	ImGuiWindowFlags.NoFocusOnAppearing,
	ImGuiWindowFlags.AlwaysAutoResize
)

local Colors         = {
	red = ImVec4(0.9, 0.1, 0.1, 1),
	red2 = ImVec4(0.928, 0.352, 0.035, 1.000),
	pink2 = ImVec4(0.976, 0.518, 0.844, 1.000),
	pink = ImVec4(0.9, 0.4, 0.4, 0.8),
	orange = ImVec4(0.78, 0.20, 0.05, 0.8),
	tangarine = ImVec4(1.000, 0.557, 0.000, 1.000),
	yellow = ImVec4(1, 1, 0, 1),
	yellow2 = ImVec4(0.7, 0.6, 0.1, 0.7),
	white = ImVec4(1, 1, 1, 1),
	blue = ImVec4(0, 0, 1, 1),
	softblue = ImVec4(0.370, 0.704, 1.000, 1.000),
	['light blue2'] = ImVec4(0.2, 0.9, 0.9, 0.5),
	['light blue'] = ImVec4(0, 1, 1, 1),
	teal = ImVec4(0, 1, 1, 1),
	green = ImVec4(0, 1, 0, 1),
	green2 = ImVec4(0.01, 0.56, 0.001, 1),
	grey = ImVec4(0.6, 0.6, 0.6, 1),
	purple = ImVec4(0.8, 0.0, 1.0, 1.0),
	purple2 = ImVec4(0.460, 0.204, 1.000, 1.000),
	btn_red = ImVec4(1.0, 0.4, 0.4, 0.4),
	btn_green = ImVec4(0.4, 1.0, 0.4, 0.4),
	transparent = ImVec4(0, 0, 0, 0),
	transparent2 = ImVec4(0.5, 0.5, 0.0, 0.5),
}

local ArmorTypes     = {
	['plate'] = 'clr war pal shd brd',
	['chain'] = 'rng shm rog ber',
	['leather'] = 'dru bst mnk',
	['cloth'] = 'wiz mag nec enc',
}

local expans         = {
	'Classic',
	'Ruins of Kunark',
	'Scars of Velious',
	'Shadows of Luclin',
	'Planes of Power',
	'Legacy of Ykesha',
	'Lost Dungeons of Norrath',
	'Gates of Discord',
	'Omens of War',
	'Dragons of Norrath',
	'Depths of Darkhollow',
	'Prophecy of Ro',
	'The Serpent\'s Spine',
	'The Buried Sea',
	'Secrets of Faydwer',
	'Seeds of Destruction',
	'Underfoot',
	'House of Thule',
	'Veil of Alaris',
	'Rain of Fear',
	'Call of the Forsaken',
	'The Darkened Sea',
	'The Broken Mirror',
	'Empires of Kunark',
	'Ring of Scale',
	'The Burning Lands',
	'Torment of Velious',
	'Claws of Veeshan',
	'Terror of Luclin',
	'Night of Shadows',
	'Laurion\'s Song',
	'The Outer Brood',
}

local hasData        = {} -- lists all expansions and if they have data we will enable them for the drop down filter (adding new quests will always show all expansions)


local WorkingTable = nil

-- SQL STUFF --

local function OpenDB(path)
	if not Utils.File.Exists(FileDB) then
		printf("Database file does not exist, creating new database at %s", FileDB)
	end
	local db = SQL.open(FileDB)
	if db then
		db:exec("PRAGMA journal_mode=WAL;")
		-- Load the database schema if needed

		-- quest_cat isn't used atm currently it is doubling as Tier \ Quest Name will split these later
		-- quest_name doubles as tier and quest name
		-- item_type and restrictions are currently sharing a dual role (type: leather plate cloth chain, or class shortname war pal shd brd etc.) will split these later
		local schema = [[
			CREATE TABLE IF NOT EXISTS quest_data (
				id INTEGER PRIMARY KEY AUTOINCREMENT,
				expansion TEXT,
				quest_name TEXT,
				quest_cat TEXT,
				item_slot TEXT,
				item_type TEXT,
				restriction TEXT DEFAULT 'All',
				item_name TEXT,
				quantity INTEGER DEFAULT 1,
				extra_info TEXT DEFAULT '',
				UNIQUE(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
			);
		]]
		db:exec(schema)
		return db
	else
		print("Failed to open database.")
	end
end

local function ImportData(file)
	local tmpData = {}

	if file == nil then
		tmpData = Data
	else
		if Utils.File.Exists(file) then
			tmpData = dofile(file)
		else
			print("File not found: " .. file)
			return
		end
	end

	local db = OpenDB(FileDB)
	if not db then return end

	db:exec("BEGIN TRANSACTION;")
	local success = true
	for expansion, questCat in pairs(tmpData) do
		for cat, itemSlots in pairs(questCat) do
			for slot, itemTypes in pairs(itemSlots) do
				for itemType, restrictions in pairs(itemTypes) do
					for restriction, quests in pairs(restrictions) do
						for questName, items in pairs(quests) do
							-- escape single quotes in SQL strings
							local expansionEsc = expansion:gsub("'", "''")
							local questNameEsc = questName:gsub("'", "''")
							local questCatEsc = cat:gsub("'", "''")
							local slotEsc = slot:gsub("'", "''")
							local itemTypeEsc = itemType:gsub("'", "''")
							local restrictionEsc = restriction:gsub("'", "''")

							for _, itemData in pairs(items or {}) do
								if not itemData.name or not itemData.qty then
									print("Invalid item data. Each item must have a Name and Qty.")
									success = false
									break
								end

								local itemNameEsc = itemData.name:gsub("'", "''")
								local extraInfoEsc = (itemData.extra or ''):gsub("'", "''")
								local quantity = tonumber(itemData.qty) or 1

								local query = string.format([[
									INSERT INTO quest_data (
										expansion, quest_name, quest_cat, item_slot,
										item_type, restriction, item_name, quantity, extra_info)
									VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', %d, '%s')
									ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
									DO UPDATE SET
										quantity = excluded.quantity,
										extra_info = excluded.extra_info;
								]], expansionEsc, questNameEsc, questCatEsc, slotEsc, itemTypeEsc,
									restrictionEsc, itemNameEsc, quantity, extraInfoEsc)

								local ok, err = pcall(function() db:exec(query) end)
								if not ok then
									print(string.format("Insert failed for item '%s': %s", itemNameEsc, err))
									success = false
									break
								end
							end
							if not success then break end
						end

						if not success then break end
					end
					if not success then break end
				end
				if not success then break end
			end
			if not success then break end
		end
		if not success then break end
	end

	if success then
		db:exec("COMMIT;")
		printf("Data imported successfully into the database.")
	else
		db:exec("ROLLBACK;")
		print("Import failed. Transaction rolled back.")
	end

	db:close()
end

local function AddNewQuest(expansion, questData)
	if not expansion then
		print("Invalid parameters for adding new quest.")
		return
	end

	local db = OpenDB(FileDB)
	if not db then return end

	local expansionEsc = expansion:gsub("'", "''")
	local questNameEsc = questData.Name:gsub("'", "''")
	local questCatEsc = questData.Category:gsub("'", "''")
	local itemSlotEsc = questData.Slot:gsub("'", "''")
	local restrictionEsc = questData.Restrictions and questData.Restrictions:gsub("'", "''") or 'All'
	local itemTypeEsc = questData.ItemType:gsub("'", "''")

	db:exec("BEGIN TRANSACTION;")
	for _, item in ipairs(questData.Items) do
		if not item.Name or not item.Qty then
			print("Invalid item data. Each item must have a Name and Qty.")
			db:exec("ROLLBACK;")
			db:close()
			return
		end

		local itemNameEsc = item.Name:gsub("'", "''")
		local extraInfoEsc = (item.Extra or ''):gsub("'", "''")
		local quantity = tonumber(item.Qty) or 1

		local query = string.format([[
				INSERT INTO quest_data (
					expansion, quest_name, quest_cat, item_slot,
					item_type, restriction, item_name, quantity, extra_info)
				VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', %d, '%s')
				ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
				DO UPDATE SET
					quantity = excluded.quantity,
					extra_info = excluded.extra_info;
			]], expansionEsc, questNameEsc, questCatEsc, itemSlotEsc, itemTypeEsc, restrictionEsc, itemNameEsc, quantity, extraInfoEsc)

		local ok, err = pcall(function() db:exec(query) end)
		if not ok then
			print(string.format("Insert failed for item '%s': %s", itemNameEsc, err))
			db:exec("ROLLBACK;")
			db:close()
			return
		end
	end
	db:exec("COMMIT;")
	printf("New quest '%s' added successfully to the database.", questData.Name)
	db:close()
end

-- update the hasData table for filtering the expansion combo list
local function CheckExpansionData()
	-- iterate through the expansions and check if we have data for them so we can filter out the combo list
	-- check the DB for the expansion data if we find any set the hasData flag for that expansion
	local db = OpenDB(FileDB)
	if not db then return end
	local query = "SELECT DISTINCT expansion FROM quest_data;"
	local stmt = db:prepare(query)
	if stmt then
		for row in stmt:nrows() do
			local expansion = row.expansion or 'Unknown Expansion'
			hasData[expansion] = true
		end
		stmt:finalize()
	end
	db:close()
end

-- Helpers --

-- Check to see if the database needs to update with new data
local function CheckUpdate()
	if not Utils.File.Exists(UpdateFile) then
		ImportData()
		mq.pickle(UpdateFile, { Version = Version, })
	else
		local tmp = dofile(UpdateFile)
		if tmp and tmp.Version and tmp.Version < Version then
			printf("Updating database to version %s", Version)
			ImportData()
			tmp.Version = Version
			mq.pickle(UpdateFile, tmp)
		else
			printf("Database is already up to date.")
		end
	end
end

---comment
---@param expansion string the expansion to get quests for.
---@param filters table containing filters for class, armor type, item name, slot, and tier.
---@return table QuestData Returns a table containing quest data for the specified expansion.
local function GetQuests(expansion, filters)
	local tmp = {}
	local db = OpenDB(FileDB)
	if not db then return tmp end

	local classFilter = filters.restriction ~= '' and filters.restriction or MyClass
	local armorFilter = filters.restriction ~= '' and filters.restriction or MyArmor
	local itemNameFilter = filters.item_name ~= '' and filters.item_name or ''
	local slotFilter = filters.item_slot ~= '' and filters.item_slot or ''
	local catFilter = filters.quest_cat ~= '' and filters.quest_cat or ''
	local questNameFilter = filters.quest_name ~= '' and filters.quest_name or ''
	local rewardTypeFilter = filters.item_type ~= '' and filters.item_type or 'All'


	local expansionEsc = expansion:gsub("'", "''")
	local query = string.format([[
		SELECT * FROM quest_data
		WHERE expansion = '%s'
		AND (restriction = 'All' OR restriction LIKE '%%%s%%' OR restriction LIKE '%%%s%%')
	]], expansionEsc, classFilter, armorFilter)
	if itemNameFilter ~= '' then
		query = query .. string.format(" AND item_name LIKE '%%%s%%'", itemNameFilter:gsub("'", "''"))
	end
	if slotFilter ~= '' then
		query = query .. string.format(" AND item_slot LIKE '%%%s%%'", slotFilter:gsub("'", "''"))
	end
	if catFilter ~= '' then
		query = query .. string.format(" AND quest_cat LIKE '%%%s%%'", catFilter:gsub("'", "''"))
	end
	if questNameFilter ~= '' then
		query = query .. string.format(" AND quest_name LIKE '%%%s%%'", questNameFilter:gsub("'", "''"))
	end
	if rewardTypeFilter ~= 'All' then
		query = query .. string.format(" AND (item_type = 'All' OR item_type LIKE '%%%s%%')", rewardTypeFilter:gsub("'", "''"))
	end
	query = query .. ";"
	local stmt = db:prepare(query)
	if stmt then
		for row in stmt:nrows() do
			local questName = row.quest_name or 'Unknown Quest'
			local questCat = row.quest_cat or 'Unknown Category'
			local itemSlot = row.item_slot or 'Unknown Slot'
			local itemType = row.item_type or 'All'
			local restriction = row.restriction or 'All'
			local itemName = row.item_name or 'Unknown Item'
			local quantity = tonumber(row.quantity) or 1
			local extraInfo = row.extra_info or ''
			-- tmp[expansion][questCat][itemSlot][itemType][restrictions][questName]={items}
			if not tmp[expansion] then tmp[expansion] = {} end
			if not tmp[expansion][questCat] then tmp[expansion][questCat] = {} end
			if not tmp[expansion][questCat][itemSlot] then tmp[expansion][questCat][itemSlot] = {} end
			if not tmp[expansion][questCat][itemSlot][itemType] then tmp[expansion][questCat][itemSlot][itemType] = {} end
			if not tmp[expansion][questCat][itemSlot][itemType][restriction] then
				tmp[expansion][questCat][itemSlot][itemType][restriction] = {}
			end
			if not tmp[expansion][questCat][itemSlot][itemType][restriction][questName] then
				tmp[expansion][questCat][itemSlot][itemType][restriction][questName] = {}
			end


			table.insert(tmp[expansion][questCat][itemSlot][itemType][restriction][questName], {
				name = itemName,
				qty = quantity,
				on_hand = Utils.CheckOnHand(itemName),
				extra = extraInfo,
			})
		end
		stmt:finalize()
	end
	db:close()

	BoxCompleted[MyName] = false
	-- check if any of the quests are completed and add a flag to the BoxCompleted table for that user so we can highlight them in the list
	-- tmp[expansion][questCat][itemSlot][itemType][restrictions][questName]={items}

	for _, catSlots in pairs(tmp[expansion] or {}) do
		for _, sData in pairs(catSlots or {}) do
			for _, restrictions in pairs(sData or {}) do
				for _, quest_data in pairs(restrictions or {}) do
					for _, items in pairs(quest_data or {}) do
						BoxCompleted[MyName] = Utils.QuestStatus(items or {})
						if BoxCompleted[MyName] then
							goto continue
						end
					end
				end
			end
		end
	end
	::continue::
	return tmp
end

--- Exports the quest data from the database to a Lua table format, so it can be shared with others.
local function ExportDBtoLua()
	local db = OpenDB(FileDB)
	local tmpData = {}
	if not db then return end
	local query = "SELECT * FROM quest_data;"
	-- build the exported DB with its nested tables so other users can import it easily
	local stmt = db:prepare(query)
	if stmt then
		for row in stmt:nrows() do
			local expansion = row.expansion or 'Unknown Expansion'
			local questName = row.quest_name or 'Unknown Quest'
			local questCat = row.quest_cat or 'Unknown Category'
			local itemSlot = row.item_slot or 'Unknown Slot'
			local itemType = row.item_type or 'All'
			local restriction = row.restriction or 'All'
			local itemName = row.item_name or 'Unknown Item'
			local quantity = tonumber(row.quantity) or 1
			local extraInfo = row.extra_info or ''

			if not tmpData[expansion] then tmpData[expansion] = {} end
			if not tmpData[expansion][questCat] then tmpData[expansion][questCat] = {} end
			if not tmpData[expansion][questCat][itemSlot] then tmpData[expansion][questCat][itemSlot] = {} end
			if not tmpData[expansion][questCat][itemSlot][itemType] then
				tmpData[expansion][questCat][itemSlot][itemType] = {}
			end
			if not tmpData[expansion][questCat][itemSlot][itemType][restriction] then
				tmpData[expansion][questCat][itemSlot][itemType][restriction] = {}
			end
			if not tmpData[expansion][questCat][itemSlot][itemType][restriction][questName] then
				tmpData[expansion][questCat][itemSlot][itemType][restriction][questName] = {}
			end

			tmpData[expansion][questCat][itemSlot][itemType][restriction][questName][itemName] = {
				name = itemName,
				qty = quantity,
				extra = extraInfo,
			}
		end
		stmt:finalize()
	end
	db:close()

	mq.pickle(ExportFile, tmpData)
end


--- Sort the actors list alphabetically.
local function SortActors()
	ActorsList = {}
	for actorName, actorData in pairs(Boxes) do
		table.insert(ActorsList, actorName)
	end
	table.sort(ActorsList, function(a, b)
		return a < b
	end)
end

--- Get the armor type based on the player's class.
---@return string armorType the armor type for the player's class.
local function GetArmorType()
	local armorType = 'cloth'
	for type, classes in pairs(ArmorTypes) do
		if classes:find(MyClass) then
			armorType = type
			break
		end
	end
	return armorType
end

-- Check the player's inventory for the item.
---@param item_name string The name of the item to check.
---@return number item_count The number of items found in the player's inventory.
function Utils.CheckOnHand(item_name)
	local item_count = mq.TLO.FindItemCount(string.format("=%s", item_name))() or 0

	return item_count
end

--- Get quest data for the specified expansion.
---@param expansion string The expansion to get quest data for.
---@return table questData Returns Items and Quantity needed for the desired piece.
local function GetQuestData(expansion)
	local ClassFilter = SQLFilters.restriction ~= '' and SQLFilters.restriction or MyClass
	local ArmorFilter = SQLFilters.restriction ~= '' and SQLFilters.restriction or MyArmor
	local QuestFilter = SQLFilters.quest_name ~= '' and SQLFilters.quest_name or ''
	local ItemFilter = SQLFilters.item_name ~= '' and SQLFilters.item_name or ''
	local SlotFilter = SQLFilters.item_slot ~= '' and SQLFilters.item_slot or ''
	local questData = GetQuests(expansion, SQLFilters)
	if not questData or next(questData) == nil then
		return {}
	end

	return questData
end

---comment
---@param items_table table The quest items to check.
---@return boolean readyToHandIn
---@return number OnHand
---@return number Needed
function Utils.QuestStatus(items_table)
	-- check the items in the quest and if we have enough of all of them we are ready to hand in
	local totalNeeded = 0
	local totalOnHand = 0
	local readyToHandIn = false

	if not items_table then
		return false, 0, 0
	end
	for _, item in ipairs(items_table) do
		if item.qty and item.name then
			totalNeeded = totalNeeded + item.qty
			totalOnHand = totalOnHand + (item.on_hand <= item.qty and item.on_hand or item.qty)
		end
	end

	readyToHandIn = totalNeeded > 0 and totalOnHand >= totalNeeded
	return readyToHandIn, totalOnHand, totalNeeded
end

-- ACTORS --

--- Handles the actors mailbox for Quest Watch.
local function ActorsHandler()
	MyActor = Actors.register('QuestWatch', function(message)
		local newMessage = message()

		if newMessage.Subject == 'Hello' and newMessage.From ~= MyName then
			if MyActor then
				MyActor:send({ mailbox = 'QuestWatch', }, {
					Subject = 'data_reply',
					From = MyName,
					Expansion = newMessage.Expansion,
					Data = WorkingTable and WorkingTable[newMessage.Expansion] or nil,
					Completed = BoxCompleted[MyName] or false,
				})
			end
			return
		end

		if newMessage.Subject == 'data_req' and newMessage.Expansion ~= nil then
			LookupExpan = newMessage.Expansion
			SQLFilters = newMessage.Filters or SQLFilters
			SendData = true

			return
		end

		if newMessage.Subject == 'data_reply' and newMessage.Data ~= nil and newMessage.From ~= MyName then
			Boxes[newMessage.From] = {}
			Boxes[newMessage.From][newMessage.Expansion] = {}
			Boxes[newMessage.From][newMessage.Expansion] = newMessage.Data
			BoxCompleted[newMessage.From] = newMessage.Completed or false
		end
	end)
end


-- GUI --
--- Draws the quest data table.
--- The Table will display your status on each item needed for the quest.
--- It will show the slot, tier, item name, quantity needed, and how many you
--- have on hand.
---@param table_data table The table data to render.
---@param who string The name of the actor to display data for.
local function RenderTable(table_data, who)
	if table_data == nil then return end
	if ImGui.BeginTable('QuestData##' .. who, 6, bit32.bor(ImGuiTableFlags.Borders, ImGuiTableFlags.ScrollY, ImGuiTableFlags.RowBg), ImVec2(ImGui.GetContentRegionAvail() - 10, 0.0)) then
		ImGui.TableSetupColumn('Category', ImGuiTableColumnFlags.WidthFixed, 100)
		ImGui.TableSetupColumn('Quest Name', ImGuiTableColumnFlags.WidthFixed, 80)
		ImGui.TableSetupColumn('Restrictions', ImGuiTableColumnFlags.WidthFixed, 80)
		ImGui.TableSetupColumn('Slot', ImGuiTableColumnFlags.WidthFixed, 50)
		ImGui.TableSetupColumn('Reward Type', ImGuiTableColumnFlags.WidthFixed, 70)
		ImGui.TableSetupColumn('Items', ImGuiTableColumnFlags.WidthStretch, 300)

		ImGui.TableSetupScrollFreeze(3, 1) -- Freeze the first row
		ImGui.TableHeadersRow()
		ImGui.TableNextRow()

		-- display data by tiers
		--tmp[expansion][questCat][itemSlot][itemType][restriction][questName]
		if table_data and table_data[LookupExpan] then
			for category, catSlots in pairs(table_data[LookupExpan]) do
				for slot, sData in pairs(catSlots) do
					for item_type, restrictions in pairs(sData) do
						for restrict, quest_data in pairs(restrictions or {}) do
							for quest_name, items in pairs(quest_data or {}) do
								ImGui.TableNextColumn()
								ImGui.PushTextWrapPos(0.0)
								ImGui.Text("%s", category)
								ImGui.PopTextWrapPos()

								ImGui.TableNextColumn()
								if Utils.QuestStatus(items) then
									ImGui.TextColored(Colors.green, Icons.FA_STAR)
									ImGui.SameLine()
								end
								ImGui.PushTextWrapPos(0.0)
								ImGui.TextColored(Colors.yellow, quest_name)
								ImGui.PopTextWrapPos()
								ImGui.TableNextColumn()

								ImGui.PushTextWrapPos(0.0)
								ImGui.TextColored(Colors.teal, restrict)
								ImGui.PopTextWrapPos()

								ImGui.TableNextColumn()
								ImGui.TextColored(Colors.tangarine, slot)

								ImGui.TableNextColumn()
								ImGui.TextColored(Colors.softblue, item_type)
								ImGui.TableNextColumn()

								for _, iData in ipairs(items or {}) do
									local iName = iData.name or 'Unknown Item'
									ImGui.Separator()

									if ImGui.BeginTable('ItemData##' .. category .. item_type .. slot .. iName, 3, ImGuiTableFlags.BordersInnerV) then
										ImGui.TableSetupColumn('Item Name', ImGuiTableColumnFlags.WidthFixed, 180)
										ImGui.TableSetupColumn('Status', ImGuiTableColumnFlags.WidthFixed, 70)
										ImGui.TableSetupColumn('Info', ImGuiTableColumnFlags.WidthStretch, 70)

										ImGui.TableNextRow()
										ImGui.TableNextColumn()

										local tCol = Colors.white
										if iData.on_hand >= iData.qty then
											tCol = Colors.green -- Green if enough on hand
										end
										if iData.on_hand > 0 and iData.on_hand < iData.qty then
											tCol = Colors.tangarine -- Orange if not enough on hand
										end
										ImGui.PushStyleColor(ImGuiCol.Text, tCol)
										ImGui.PushID(category .. item_type .. slot .. iName .. who)
										if ImGui.Selectable(iName, false, ImGuiSelectableFlags.SpanAllColumns) then
											ImGui.SetClipboardText(iName)
										end
										ImGui.PopStyleColor()
										if ImGui.IsItemHovered() then
											ImGui.BeginTooltip()
											ImGui.Text(iName)
											ImGui.Separator()
											ImGui.Text(iData.extra)
											ImGui.EndTooltip()
										end
										ImGui.PopID()
									end

									ImGui.TableNextColumn()
									local tCol = Colors.teal
									if iData.on_hand > 0 and iData.on_hand < iData.qty then
										tCol = Colors.yellow -- Yellow if not enough on hand
									end
									if iData.on_hand >= iData.qty then
										tCol = Colors.green -- Green if enough on hand
									end
									ImGui.PushID(category .. item_type .. slot .. iName .. iData.on_hand)
									ImGui.TextColored(tCol, "%s", iData.on_hand)
									ImGui.PopID()
									ImGui.SameLine()
									ImGui.PushID(category .. item_type .. slot .. iName .. iData.qty)
									ImGui.Text(" / %s", iData.qty)
									ImGui.PopID()
									ImGui.TableNextColumn()
									ImGui.PushID(category .. item_type .. iName .. slot)
									ImGui.TextWrapped(iData.extra)
									ImGui.PopID()
									ImGui.EndTable()
								end
							end
						end
					end
				end
			end
		else
			ImGui.TableNextColumn()
			ImGui.Text('No Data Available')
		end

		ImGui.EndTable()
	end
end

local function DrawContextItem(group_type)
	if not group_type then return end
	local gpCmd = group_type == 'raid' and 'dgre' or 'dgge'
	local gpCmdAll = group_type == 'raid' and 'dgra' or 'dgga'
	local label = group_type == 'raid' and 'MyRaid' or 'MyGroup'

	if group_type == 'all' then
		gpCmd = 'dge all'
		gpCmdAll = 'dgae'
		label = 'AllGroups'
	end

	ImGui.PushStyleColor(ImGuiCol.Text, Colors['teal'])
	if ImGui.MenuItem(string.format('Start %s Clients', label)) then
		mq.cmdf('/%s /lua run questwatch', gpCmd)
	end
	ImGui.PopStyleColor()

	ImGui.Spacing()

	ImGui.PushStyleColor(ImGuiCol.Text, Colors['tangarine'])
	if ImGui.MenuItem(string.format('Stop %s Clients', label)) then
		mq.cmdf('/%s /lua stop questwatch', gpCmd)
	end
	ImGui.PopStyleColor()

	ImGui.Spacing()

	ImGui.PushStyleColor(ImGuiCol.Text, Colors['pink2'])
	if ImGui.MenuItem(string.format('Stop %s ALL', label)) then
		mq.cmdf('/%s /lua stop questwatch', gpCmdAll)
	end
	ImGui.PopStyleColor()
end

local function DrawContextMenu()
	if mq.TLO.Plugin('MQ2DanNet').IsLoaded() then
		if mq.TLO.Raid.Members() > 0 then
			DrawContextItem('raid')
			ImGui.Spacing()
			ImGui.Separator()
		elseif mq.TLO.Group.Members() > 0 then
			DrawContextItem('group')
			ImGui.Spacing()
			ImGui.Separator()
		end

		DrawContextItem('all')
		ImGui.Spacing()
		ImGui.Separator()
	end

	if ImGui.MenuItem('Exit') then
		isRunning = false
	end
end

--- Renders the button for toggling the Quest Watch UI.
local function RenderBtn()
	-- apply_style()
	ImGui.SetNextWindowPos(ImVec2(200, 20), ImGuiCond.FirstUseEver)
	local openBtn, showBtn = ImGui.Begin(string.format("Quest Watch##MiniBtn" .. MyName), true, buttonWinFlags)
	if not openBtn then
		showBtn = false
	end

	if showBtn then
		local cursorPosX, cursorPosY = ImGui.GetCursorScreenPos()
		animMini:SetTextureCell(4493 - EQ_ICON_OFFSET)
		ImGui.DrawTextureAnimation(animMini, 34, 34, true)
		ImGui.SetCursorScreenPos(cursorPosX, cursorPosY)
		ImGui.PushStyleColor(ImGuiCol.Button, Colors.transparent)
		ImGui.PushStyleColor(ImGuiCol.ButtonHovered, Colors.transparent2)
		ImGui.PushStyleColor(ImGuiCol.ButtonActive, Colors.transparent)
		if ImGui.Button("##QW", ImVec2(34, 34)) then
			ShowMain = not ShowMain
		end
		ImGui.PopStyleColor(3)
		if ImGui.BeginPopupContextItem("QuestWatchContextMenu") then
			ImGui.Separator()
			ImGui.Spacing()
			DrawContextMenu()
			ImGui.EndPopup()
		end
	end

	if ImGui.IsWindowHovered() then
		ImGui.BeginTooltip()
		ImGui.Text("Quest Watch")
		ImGui.Text("Left-click to toggle UI")
		ImGui.Text("Right-click for options")
		ImGui.EndTooltip()
	end
	ImGui.End()
end

--- Renders the expansion selector dropdown.
---@param id string a unique identifier for the dropdown.
local function RenderQuestFilter(id)
	ImGui.SetNextItemWidth(200)
	if ImGui.BeginCombo('Select Expansion##expansions' .. id, LookupExpan) then
		if ImGui.Selectable('none', LookupExpan == 'none') then
			LookupExpan = 'none'
		end
		for _, expan in ipairs(expans) do
			if hasData[expan] then
				if ImGui.Selectable(expan, LookupExpan == expan) then
					if LookupExpan ~= expan then
						GetData = true
					end
					LookupExpan = expan
					SQLFilters.expansion = expan
				end
			end
		end
		ImGui.EndCombo()
	end

	ImGui.SetNextItemWidth(200)
	SQLFilters.restriction = ImGui.InputTextWithHint('Restrictions##' .. id, 'Class, Item Type etc.', SQLFilters.restriction):lower()

	ImGui.SameLine()
	ImGui.SetNextItemWidth(200)
	SQLFilters['quest_name'] = ImGui.InputTextWithHint('Quest Name##' .. id, 'Quest Name', SQLFilters['quest_name'])

	ImGui.SetNextItemWidth(200)
	SQLFilters['quest_cat'] = ImGui.InputTextWithHint('Quest Category##' .. id, 'Quest Category', SQLFilters['quest_cat'])

	ImGui.SameLine()

	ImGui.SetNextItemWidth(200)
	SQLFilters['item_name'] = ImGui.InputTextWithHint('Item Name##' .. id, 'Item Name', SQLFilters['item_name'])

	ImGui.SetNextItemWidth(200)
	SQLFilters['item_slot'] = ImGui.InputTextWithHint('Item Slot##' .. id, 'Item Slot (head, chest, etc.)', SQLFilters['item_slot'])

	ImGui.SeparatorText(LookupExpan .. "##" .. id)

	if ImGui.Button('Refresh Data##' .. id) then
		LastLookupExpan = 'none'
		GetData = true
		SendData = true
	end

	ImGui.SameLine()
	if ImGui.Button('Clear Filters##' .. id) then
		SQLFilters = {
			restriction = '',
			quest_name = '',
			item_name = '',
			item_slot = '',
		}
		GetData = true
	end
end

local function RenderAddQuestWindow()
	-- this is a window to allow manually adding quests to the database
	-- you can enter the quest information and click the + button to add items needed
	-- you can also export your quest data to a file as well as import data from a file
	if not ShowAddQuest then return end

	ImGui.SetNextWindowSize(ImVec2(600, 400), ImGuiCond.FirstUseEver)
	ImGui.SetNextWindowPos(ImVec2(100, 100), ImGuiCond.FirstUseEver)
	local open, draw = ImGui.Begin('Add Quest Data##QuestWatch' .. MyName, true)
	if not open then
		draw = false
		ShowAddQuest = false
	end
	if draw then
		if ImGui.CollapsingHeader('Import Quest Data') then
			ImGui.Text('Import Quest Data from a file\nPlace File inside your MQDir/Resources folder')
			ImGui.Separator()
			ImGui.SetNextItemWidth(200)
			ImportFile = ImGui.InputTextWithHint('Import File##ImportFile', 'File to Import (in Resource Folder) ex. import.lua', ImportFile)
			ImGui.SameLine()
			if ImGui.Button('Import Data') then
				ImportQuests = true
			end
		end

		-- Add your quest data input fields here
		ImGui.Text("Add Quest Data")
		ImGui.Separator()
		ImGui.SetNextItemWidth(200)
		if ImGui.BeginCombo('Expansion##expansions_add', NewQuestExpan) then
			if ImGui.Selectable('none', NewQuestExpan == 'none') then
				NewQuestExpan = 'none'
			end
			for _, expan in ipairs(expans) do
				if ImGui.Selectable(expan, NewQuestExpan == expan) then
					NewQuestExpan = expan
				end
			end
			ImGui.EndCombo()
		end

		ImGui.SetNextItemWidth(180)
		NewQuestData.Name = ImGui.InputTextWithHint('Quest Name / Tier##NewQuestName', 'Quest Name / Tier', NewQuestData.Name)

		ImGui.SetNextItemWidth(180)
		NewQuestData.Slot = ImGui.InputTextWithHint('Slot##NewQuestSlot', 'Slot', NewQuestData.Slot)

		ImGui.SetNextItemWidth(180)
		NewQuestData.Restrictions = ImGui.InputTextWithHint('Restrictions##NewQuestRestrictions', "Class Restriction, Armor Type etc (lower case)", NewQuestData.Restrictions)

		ImGui.SetNextItemWidth(180)
		NewQuestData.Category = ImGui.InputTextWithHint('Category##NewQuestCategory', "Quest Category (optional)", NewQuestData.Category or '')

		ImGui.SetNextItemWidth(180)
		NewQuestData.ItemType = ImGui.InputTextWithHint('Item Type##NewQuestItemType', "Reward Item Type (optional)", NewQuestData.ItemType or '')

		if ImGui.BeginTable("ItemsTable", 4, ImGuiTableFlags.BordersInnerV) then
			ImGui.TableSetupColumn("Delete", ImGuiTableColumnFlags.WidthFixed, 80)
			ImGui.TableSetupColumn("Item Name", ImGuiTableColumnFlags.WidthStretch)
			ImGui.TableSetupColumn("Quantity", ImGuiTableColumnFlags.WidthFixed, 100)
			ImGui.TableSetupColumn("Extra Info", ImGuiTableColumnFlags.WidthStretch)

			for i, item in ipairs(NewQuestData.Items or {}) do
				ImGui.TableNextRow()
				ImGui.TableNextColumn()
				if ImGui.Button(string.format("X##%d", i)) then
					table.remove(NewQuestData.Items, i)
				end
				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(180)
				item.Name = ImGui.InputTextWithHint(string.format("ItemName##%d", i), "Item Name", item.Name)
				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(100)
				item.Qty = ImGui.InputInt(string.format("ItemQty##%d", i), item.Qty)
				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(180)
				item.Extra = ImGui.InputTextWithHint(string.format("ItemExtra##%d", i), "Extra Info", item.Extra or '')
			end

			ImGui.EndTable()
		end
		if ImGui.Button('Add Item') then
			if not NewQuestData.Items then
				NewQuestData.Items = {}
			end
			table.insert(NewQuestData.Items, { Name = 'NEWITEM', Qty = 1, Extra = '', })
		end
		ImGui.SameLine()
		if ImGui.Button('Save Quest Data') then
			EnterNewQuest = true
			ShowAddQuest = false
		end

		ImGui.SameLine()

		if ImGui.Button('Cancel') then
			ShowAddQuest = false
			-- reset the new quest data
			NewQuestExpan = 'none'
			NewQuestData = {
				Name = '',
				Slot = '',
				Restrictions = '',
				Items = {},
			}
		end
	end
	ImGui.End()
end

--- Renders the actors window for viewing quest data.
local function RenderActors()
	-- RenderExpansionSelector('Actors')

	ImGui.Separator()
	ImGui.Spacing()

	--left side
	--list members on the left side,
	-- selecting a member will display their data on the right side.

	if ImGui.BeginChild('ActorsList', ImVec2(120, 0), ImGuiChildFlags.Border) then
		ImGui.Text('Select Character:')
		ImGui.Separator()
		for _, actorName in ipairs(ActorsList) do
			if BoxCompleted[actorName] then
				ImGui.PushStyleColor(ImGuiCol.Text, Colors.green)
			else
				ImGui.PushStyleColor(ImGuiCol.Text, Colors.white)
			end
			if ImGui.Selectable(actorName, SelectedBox == actorName) then
				SelectedBox = actorName
			end
			ImGui.PopStyleColor()
		end
		ImGui.EndChild()
	end

	-- right side
	-- display selected actor's data
	ImGui.SameLine()

	if ImGui.BeginChild('ActorData', ImVec2(0, 0), ImGuiChildFlags.Border) then
		if SelectedBox ~= 'none' and Boxes[SelectedBox] then
			ImGui.Text('Data for:')
			ImGui.SameLine()
			ImGui.TextColored(Colors.yellow, SelectedBox)
			ImGui.Separator()

			RenderTable(Boxes[SelectedBox], SelectedBox)
		else
			ImGui.Text('No Data Available')
		end
		ImGui.EndChild()
	end
end

--- Renders the main Quest Watch window.
local function RenderMain()
	ImGui.SetNextWindowSize(ImVec2(600, 500), ImGuiCond.FirstUseEver)
	ImGui.SetNextWindowPos(ImVec2(100, 100), ImGuiCond.FirstUseEver)
	local open, draw = ImGui.Begin('Quest Watch##QuestWatch' .. MyName, true)
	if not open then
		draw = false
		ShowMain = false
	end
	if draw then
		ImGui.Text('Quest Data for [' .. MyClass:upper() .. '] - [' .. MyArmor:upper() .. ']')

		-- Window controls minimize and exit buttons
		ImGui.SameLine(ImGui.GetWindowWidth() - 50)

		if ImGui.SmallButton(' - ') then
			ShowMain = false
		end
		if ImGui.IsItemHovered() then
			ImGui.BeginTooltip()
			ImGui.Text('Hide Window')
			ImGui.EndTooltip()
		end
		ImGui.SameLine(ImGui.GetWindowWidth() - 30)
		if ImGui.SmallButton(' X ') then
			isRunning = false
		end
		if ImGui.IsItemHovered() then
			ImGui.BeginTooltip()
			ImGui.Text('Close Script')
			ImGui.EndTooltip()
		end

		ImGui.Spacing()

		if ImGui.Button('Add Quest') then
			ShowAddQuest = not ShowAddQuest
		end
		ImGui.SameLine()
		if ImGui.Button('Export Data') then
			ExportData = true
		end
		if ImGui.IsItemHovered() then
			ImGui.BeginTooltip()
			ImGui.Text('Export Quest Data to MQDir/Resources/QuestWatchExport.lua file')
			ImGui.Text('This file can be shared with others and imported by them')
			ImGui.EndTooltip()
		end

		ImGui.Separator()
		ImGui.Spacing()

		RenderQuestFilter(MyName)

		ImGui.Spacing()
		ImGui.Text("Clicking on an item will copy its name to the clipboard.")

		ImGui.Separator()
		if ImGui.BeginTabBar('Quests##') then
			if ImGui.BeginTabItem(MyName .. ' - ' .. LookupExpan .. '###QuestTab') then
				if WorkingTable == nil then
					ImGui.Text('No Data Available')
				else
					-- Render the quest data table for the selected expansion
					if WorkingTable then RenderTable(WorkingTable, MyName) end
				end
				ImGui.EndTabItem()
			end
			if ImGui.BeginTabItem(SelectedBox .. ' - ' .. LookupExpan .. '###ActorTab') then
				if ActorsList == nil then
					ImGui.Text('No Data Available')
				else
					-- Render the actors data table
					RenderActors()
				end
				ImGui.EndTabItem()
			end
			ImGui.EndTabBar()
		end
	end
	ImGui.End()
end

--- Renders the GUI for Quest Watch.
local function RenderGUI()
	if ShowMain then
		RenderMain()
	end
	-- if ShowActors then
	-- 	RenderActors()
	-- end
	if ShowAddQuest then
		RenderAddQuestWindow()
	end
	RenderBtn()
end

-- Main --
local function Init()
	CheckUpdate()

	-- initialize the hasData table
	for _, expan in ipairs(expans) do
		hasData[expan] = false
	end
	-- check for data and update the hasData table
	CheckExpansionData()

	-- initialize Actors
	ActorsHandler()

	MyArmor = GetArmorType()

	WorkingTable = GetQuestData(LookupExpan)

	mq.imgui.init('QuestData', RenderGUI)
	if MyActor then
		MyActor:send({ mailbox = 'QuestWatch', }, {
			Subject = 'Hello',
			From = MyName,
			Expansion = LookupExpan,
			Data = WorkingTable and WorkingTable[LookupExpan] or nil,
		})
	end
	isRunning = true
end

local function Main()
	while isRunning do
		if ImportQuests then
			if ImportFile:find('%.lua$') == nil then
				ImportFile = ImportFile .. '.lua'
			end
			ImportData(string.format("%s/%s", ResourceDir, ImportFile))
			ImportQuests = false
		end

		if EnterNewQuest then
			AddNewQuest(NewQuestExpan, NewQuestData)

			-- we added new quest data lets refresh our quest data if the expansion matches
			if LookupExpan == NewQuestExpan then
				LastLookupExpan = 'none'
				GetData = true
				SendData = true
			end

			-- reset the new quest data
			EnterNewQuest = false
			NewQuestExpan = 'none'
			NewQuestData = {}

			CheckExpansionData()
		end

		if (LookupExpan ~= 'none' and WorkingTable == nil) or LastLookupExpan ~= LookupExpan then
			WorkingTable = GetQuestData(LookupExpan)
			LastLookupExpan = LookupExpan
		end

		if LookupExpan == 'none' then
			WorkingTable = nil
		end

		if GetData and MyActor then
			MyActor:send({ mailbox = 'QuestWatch', }, {
				Subject = 'data_req',
				From = MyName,
				Expansion = LookupExpan,
				Filters = SQLFilters,
				Completed = BoxCompleted[MyName] or false,
			})
			GetData = false
			mq.delay(50)
		end

		if SendData and MyActor then
			WorkingTable = GetQuestData(LookupExpan)
			MyActor:send({ mailbox = 'QuestWatch', }, {
				Subject = 'data_reply',
				From = MyName,
				Expansion = LookupExpan,
				Data = WorkingTable and WorkingTable[LookupExpan] or nil,
				Completed = BoxCompleted[MyName] or false,
			})
			SendData = false
			mq.delay(50)
			CheckExpansionData()
		end

		SortActors()

		if ExportData then
			ExportDBtoLua()
			printf("Quest data exported to %s", ExportFile)
			ExportData = false
		end

		mq.delay(100)
	end
end

Init()
Main()
