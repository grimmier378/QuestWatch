local mq             = require('mq')
local ImGui          = require('ImGui')
local Icons          = require('mq.ICONS')
local Data           = require('quest.quest_data')
local Actors         = require('actors')
local PackageMan     = require('mq.PackageMan')
local SQL            = PackageMan.Require('lsqlite3')
local Utils          = require('mq.Utils')
local Version        = 4 -- database version
local isEMU          = mq.TLO.MacroQuest.BuildName() == 'Emu'
local ResourceDir    = mq.TLO.MacroQuest.Path('resources')()
local FileDB         = string.format("%s/QuestWatch.db", ResourceDir)
local UpdateFile     = string.format("%s/QuestWatchVer.lua", ResourceDir)
local ExportFile     = string.format("%s/QuestWatchExport.lua", ResourceDir)
local ImportFile     = ''

local MySelf         = mq.TLO.Me
local MyName         = MySelf.CleanName()
local MyClass        = (MySelf.Class.ShortName() or 'unknown'):lower()
local MyArmor        = 'cloth'
local MyActor        = nil

local Boxes          = {}     -- holds actors data
local BoxCompleted   = {}
local BoxHandInReady = {}     -- holds actors data for quests that are ready to hand in
local ActorsList     = {}
local SelectedBox    = 'none' -- currently selected actor box
local GetData        = false  -- flag to ask for data from actors
local SendData       = false  -- flag to send data to actors
Boxes[MyName]        = nil    -- holds my data


local isRunning           = true
local ShowMain            = false
local ShowCompletedOnly   = false
local ShowHandInReadyOnly = false
local HideCompleted       = false
local QuestNames          = {}
local HideRewards         = false
local HideCantUseRewards  = false
local ShowAddQuest        = false
local ShowModifyQuest     = false
local ExportData          = false
local ImportQuests        = false
local ExportToLNS         = nil

local LookupExpan         = 'none'
local LastLookupExpan     = 'none'
local EnterNewQuest       = false
local EnterModifiedQuest  = false
local DeleteQuest         = false
local NewQuestExpan       = 'none'
local NewQuestData        = {}
local ModifyQuestData     = nil
local ModifyQuestExpan    = 'none'


local SQLFilters     = {
	['expansion'] = '',
	['quest_name'] = '',
	['item_slot'] = '',
	['item_type'] = '',
	['item_name'] = '',
	['quest_cat'] = '',
	['restriction'] = '', -- class, armor type, etc.
}

local EQ_ICON_OFFSET = 500
local animMini       = mq.FindTextureAnimation("A_DragItem")


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
	['light pink'] = ImVec4(0.756, 0.519, 0.848, 1.000),
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

-- SQL STUFF --

local function OpenDB(path)
	if not Utils.File.Exists(path) then
		printf("Database file does not exist, creating new database at %s", path)
	end
	local db = SQL.open(path)
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
				is_reward INTEGER DEFAULT 0,
				item_step INTEGER DEFAULT 1,
				reward_restriction TEXT DEFAULT 'All',
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
	-- tmpData[expansion][questName] = {Name, Category, Slot, ItemType, Restrictions, Items = {name, qty, extra, is_reward, reward_restriction, item_step}}

	for expansion, eData in pairs(tmpData) do
		for quest_name, questData in pairs(eData) do
			for _, itemData in pairs(questData.Items or {}) do
				local itemName = itemData.name or 'Unknown Item'
				local expansionEsc = expansion:gsub("'", "''")
				local questNameEsc = quest_name:gsub("'", "''")
				local questCatEsc = questData.Category and questData.Category:gsub("'", "''") or 'Unknown Category'
				local itemSlotEsc = questData.Slot and questData.Slot:gsub("'", "''") or 'Unknown Slot'
				local itemTypeEsc = questData.ItemType and questData.ItemType:gsub("'", "''") or 'All'
				local restrictionEsc = questData.Restrictions and questData.Restrictions:gsub("'", "''") or 'All'
				local extraInfoEsc = (itemData.extra or ''):gsub("'", "''")
				local itemStep = tonumber(itemData.Step) or 1
				local rewardRestrictionEsc = (itemData.reward_restriction or 'All'):gsub("'", "''")

				local quantity = tonumber(itemData.qty) or 1
				if not itemName or itemName == '' then
					print("Invalid item data. Each item must have a Name.")
					success = false
					break
				end
				local itemNameEsc = itemName:gsub("'", "''")


				local query = string.format([[
				INSERT INTO quest_data (
					expansion, quest_name, quest_cat, item_slot,
					item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
				VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', %d, '%s', %d, %d, '%s')
				ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
				DO UPDATE SET
					quantity = excluded.quantity,
					extra_info = excluded.extra_info,
					is_reward = excluded.is_reward,
					item_step = excluded.item_step,
					reward_restriction = excluded.reward_restriction;
			]], expansionEsc, questNameEsc, questCatEsc, itemSlotEsc, itemTypeEsc,
					restrictionEsc, itemNameEsc, quantity, extraInfoEsc, (itemData.is_reward and 1 or 0), itemStep, rewardRestrictionEsc)
				local ok, err = pcall(function() db:exec(query) end)
				if not ok then
					print(string.format("Insert failed for item '%s': %s", itemNameEsc, err))
					success = false
					break
				end
			end
		end
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
		if item.name then item.Name = item.name end
		if item.qty then item.Qty = item.qty end
		if item.extra then item.Extra = item.extra end
		if item.is_reward == nil then item.is_reward = false end
		local itemStep = item.is_reward and 999 or (item.Step or 1)
		if not item.Name or not item.Qty then
			print("Invalid item data. Each item must have a Name and Qty.")
			db:exec("ROLLBACK;")
			db:close()
			return
		end

		local itemNameEsc = item.Name:gsub("'", "''")
		local extraInfoEsc = (item.Extra or ''):gsub("'", "''")
		local quantity = tonumber(item.Qty) or 1
		local rewardRestrictionEsc = item.is_reward and (item.reward_restriction or 'All'):gsub("'", "''") or ''
		local query = string.format([[
				INSERT INTO quest_data (
					expansion, quest_name, quest_cat, item_slot,
					item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
				VALUES ('%s', '%s', '%s', '%s', '%s', '%s', '%s', %d, '%s', %d, %d, '%s')
				ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
				DO UPDATE SET
					quantity = excluded.quantity,
					extra_info = excluded.extra_info,
					is_reward = excluded.is_reward,
					item_step = excluded.item_step,
					reward_restriction = excluded.reward_restriction;
			]], expansionEsc, questNameEsc, questCatEsc, itemSlotEsc, itemTypeEsc, restrictionEsc, itemNameEsc, quantity, extraInfoEsc, (item.is_reward and 1 or 0), itemStep,
			rewardRestrictionEsc)

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

--- Modifies the database schema to add new columns or tables as needed.
---@param ver number The version of the database schema to modify from.
local function ModifyTable(ver)
	-- create new table then copy data over -- to the new table
	-- drop the original table then rename the new table to the original name
	local db = OpenDB(FileDB)
	if not db then return end
	local schema = ''
	if ver < 1.4 then
		-- v1.4 adds is_reward column to the quest_data table as prior versions did not have this column

		schema = [[
		CREATE TABLE IF NOT EXISTS quest_data_new (
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
			is_reward INTEGER DEFAULT 0,
			UNIQUE(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
		);
	]]
		db:exec(schema)
		schema = [[
		INSERT INTO quest_data_new (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info)
		SELECT expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info FROM quest_data;
	]]
		local ok, err = pcall(function() db:exec(schema) end)
		if not ok then
			print("Failed to copy data to new table: " .. err)
		else
			schema = "DROP TABLE quest_data;"
			db:exec(schema)
			schema = "ALTER TABLE quest_data_new RENAME TO quest_data;"
			db:exec(schema)
			printf("Database modified successfully.")
		end
		ModifyTable(1.4) -- continue to next version
	elseif ver < 2.0 then
		-- v2.0 adds item_step column to the quest_data table so you can keep track of which items belong to which step of the quest
		-- any items returned from a step handin should be set to the step they are handed in on
		-- this will allow us to track which items are needed for each step of the quest

		schema = [[
		CREATE TABLE IF NOT EXISTS quest_data_new (
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
			is_reward INTEGER DEFAULT 0,
			item_step INTEGER DEFAULT 1,
			UNIQUE(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
		);
	]]
		db:exec(schema)
		schema = [[
		INSERT INTO quest_data_new (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward)
		SELECT expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward FROM quest_data;
	]]
		local ok, err = pcall(function() db:exec(schema) end)
		if not ok then
			print("Failed to copy data to new table: " .. err)
		else
			schema = "DROP TABLE quest_data;"
			db:exec(schema)
			schema = "ALTER TABLE quest_data_new RENAME TO quest_data;"
			db:exec(schema)
			printf("Database modified successfully.")
		end
		ModifyTable(2.0)
	elseif ver < 3.0 then
		-- v2.0 adds item_step column to the quest_data table so you can keep track of which items belong to which step of the quest
		-- any items returned from a step handin should be set to the step they are handed in on
		-- this will allow us to track which items are needed for each step of the quest

		schema = [[
		CREATE TABLE IF NOT EXISTS quest_data_new (
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
			is_reward INTEGER DEFAULT 0,
			item_step INTEGER DEFAULT 1,
			reward_restriction TEXT DEFAULT 'All',
			UNIQUE(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
		);
	]]
		db:exec(schema)
		schema = [[
		INSERT INTO quest_data_new (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step)
		SELECT expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step FROM quest_data;
	]]
		local ok, err = pcall(function() db:exec(schema) end)
		if not ok then
			print("Failed to copy data to new table: " .. err)
		else
			schema = "DROP TABLE quest_data;"
			db:exec(schema)
			schema = "ALTER TABLE quest_data_new RENAME TO quest_data;"
			db:exec(schema)
			printf("Database modified successfully.")
		end
		ModifyTable(3.0)
	end


	db:close()
end

local function DeleteQuestData(expansion, questData)
	local db = OpenDB(FileDB)
	if not db then return end

	local expansionEsc = expansion:gsub("'", "''")
	local questNameEsc = questData.quest_name:gsub("'", "''")

	db:exec("BEGIN TRANSACTION;")
	local query = string.format([[
				DELETE FROM quest_data
				WHERE expansion = '%s' AND quest_name = '%s';
			]], expansionEsc, questNameEsc)
	local ok, err = pcall(function() db:exec(query) end)
	if not ok then
		print("Failed to delete old quest data: " .. err)
	end

	db:exec("COMMIT;")
	db:close()
end

local function ModifyQuest(expansion, questData)
	-- first lets delete the current data for the quest incase any items were removed.
	-- then we can add the quest back in with the updated data
	if not expansion or not questData then
		print("Invalid parameters for modifying quest.")
		return
	end
	local expansionEsc = expansion:gsub("'", "''")
	local questNameEsc = questData.quest_name:gsub("'", "''")
	local questCatEsc = questData.quest_cat:gsub("'", "''")
	local itemSlotEsc = questData.item_slot:gsub("'", "''")
	local restrictionEsc = questData.restrictions and questData.restrictions:gsub("'", "''") or 'All'
	local itemTypeEsc = questData.item_type:gsub("'", "''")

	DeleteQuestData(expansion, questData)

	local newData = {
		expansion = expansionEsc,
		Name = questNameEsc,
		Category = questCatEsc,
		Slot = itemSlotEsc,
		ItemType = itemTypeEsc,
		Restrictions = restrictionEsc,
		Items = questData.items or {},
	}

	AddNewQuest(expansion, newData)
end

------------------ Helpers ------------------------

local function DeepCopy(original)
	-- Create a deep copy of the original table
	if type(original) ~= 'table' then return original end
	local copy = {}
	for key, value in pairs(original) do
		if type(value) == 'table' then
			copy[key] = DeepCopy(value)
		else
			copy[key] = value
		end
	end
	return copy
end

-- Check to see if the database needs to update with new data
local function CheckUpdate()
	if not Utils.File.Exists(UpdateFile) then
		ImportData()
		mq.pickle(UpdateFile, { Version = Version, })
	else
		local tmp = dofile(UpdateFile)
		if (tmp and tmp.Version and tmp.Version < Version) or not Utils.File.Exists(FileDB) then
			printf("Updating database to version %s", Version)
			if tmp.Version < Version then
				ModifyTable(tmp.Version)
			end
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
	local restrictions = nil
	if filters.restriction:find(' ') then
		restrictions = {}
		for word in filters.restriction:gmatch("%S+") do
			table.insert(restrictions, word)
		end
	end
	if filters.restriction:find(',') then
		restrictions = {}
		for word in filters.restriction:gmatch("%S+") do
			table.insert(restrictions, word)
		end
	end

	local expansionEsc = expansion:gsub("'", "''")
	local query = ''

	if restrictions == nil then
		query = string.format([[
		SELECT * FROM quest_data
		WHERE expansion = '%s'
		AND (restriction = 'All' OR restriction LIKE '%%%s%%' OR restriction LIKE '%%%s%%')
	]], expansionEsc, classFilter, armorFilter)
	else
		query = string.format([[
		SELECT * FROM quest_data
		WHERE expansion = '%s'
		AND (restriction = 'All' ]], expansionEsc)
		for _, restriction in ipairs(restrictions) do
			query = query .. string.format(" OR restriction LIKE '%%%s%%'", restriction:gsub("'", "''"))
		end
		query = query .. string.format(")")
	end
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
	query = query .. " ORDER BY quest_name, item_step, item_name ASC;"
	-- tmpData[expansion][questName] = {Name, Category, Slot, ItemType, Restrictions, Items = {name, qty, extra, is_reward, reward_restriction, item_step}}

	local stmt = db:prepare(query)
	if stmt then
		for row in stmt:nrows() do
			local questName = row.quest_name or 'Unknown Quest'
			local questCat = row.quest_cat or 'Unknown Category'
			local itemSlot = row.item_slot or 'Unknown Slot'
			local itemType = row.item_type or 'All'
			local questRestrict = row.restriction or 'All'
			local itemName = row.item_name or 'Unknown Item'
			local quantity = tonumber(row.quantity) or 1
			local extraInfo = row.extra_info or ''

			if not tmp[expansion] then tmp[expansion] = {} end
			if not tmp[expansion][questName] then tmp[expansion][questName] = { Items = {}, } end

			tmp[expansion][questName].Name = questName
			tmp[expansion][questName].Category = questCat
			tmp[expansion][questName].Slot = itemSlot
			tmp[expansion][questName].ItemType = itemType
			tmp[expansion][questName].Restrictions = questRestrict

			table.insert(tmp[expansion][questName].Items, {
				name = itemName,
				qty = quantity,
				on_hand = Utils.CheckOnHand(itemName),
				extra = extraInfo,
				is_reward = (row.is_reward and row.is_reward == 1) or false,
				Step = row.is_reward == 1 and 999 or (row.item_step or 1),
				reward_restriction = row.is_reward and (row.reward_restriction or 'All') or '',
			})
		end
		stmt:finalize()
	end

	-- get all quests names from expansion
	QuestNames = {}
	query = string.format("SELECT DISTINCT quest_name FROM quest_data WHERE expansion = '%s' ORDER BY quest_name ASC;", expansionEsc)
	stmt = db:prepare(query)
	if stmt then
		for row in stmt:nrows() do
			local questName = row.quest_name or 'Unknown Quest'
			table.insert(QuestNames, questName)
		end

		stmt:finalize()
	end
	db:close()

	BoxCompleted[MyName] = false
	BoxHandInReady[MyName] = false

	local completed = {}
	local qRdy = {}

	tmp.Class = MyClass
	tmp.Armor = Utils.GetArmorType()

	for qName, questData in pairs(tmp[expansion] or {}) do
		if questData.Items and type(questData.Items) == 'table' then
			qRdy[qName], completed[qName] = Utils.QuestStatus(questData.Items or {})
		end
		-- _,completed[qName] = Utils.QuestStatus(questData.Items or {})
	end

	for _, isReady in pairs(qRdy) do
		if isReady then
			BoxHandInReady[MyName] = true
			break
		end
	end
	for _, isCompleted in pairs(completed) do
		if isCompleted then
			BoxCompleted[MyName] = true
			break
		end
	end

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
			if not tmpData[expansion][questName] then tmpData[expansion][questName] = {} end
			-- 	tmpData[expansion][questCat][itemSlot][itemType][restriction][questName] = {}
			-- end
			tmpData[expansion][questName].Name = questName
			tmpData[expansion][questName].Category = questCat
			tmpData[expansion][questName].Slot = itemSlot
			tmpData[expansion][questName].ItemType = itemType
			tmpData[expansion][questName].Restrictions = restriction
			if not tmpData[expansion][questName].Items then
				tmpData[expansion][questName].Items = {}
			end
			tmpData[expansion][questName].Items[itemName] = {
				name = itemName,
				qty = quantity,
				on_hand = Utils.CheckOnHand(itemName),
				extra = extraInfo,
				is_reward = (row.is_reward and row.is_reward == 1) or false,
				Step = row.item_step or 1,
				reward_restriction = row.is_reward and (row.reward_restriction or 'All') or '',
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
function Utils.GetArmorType()
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
-- if the item is a spell or song, check the spell book instead.
---@param item_name string The name of the item to check.
---@return number item_count The number of items found in the player's inventory.
function Utils.CheckOnHand(item_name)
	local spellname = ''
	local item_count = 0

	if item_name:find("Spell:") then
		spellname = item_name:gsub("Spell: ", "")
		item_count = mq.TLO.Me.Book(spellname)() ~= nil and 1 or item_count
	end

	if item_name:find("Song:") then
		spellname = item_name:gsub("Song: ", "")
		item_count = mq.TLO.Me.Book(spellname)() ~= nil and 1 or item_count
	end

	item_count = item_count + mq.TLO.FindItemCount(string.format("=%s", item_name))() + mq.TLO.FindItemBankCount(string.format("=%s", item_name))()

	return item_count
end

--- Get quest data for the specified expansion.
---@param expansion string The expansion to get quest data for.
---@return table questData Returns Items and Quantity needed for the desired piece.
local function GetQuestData(expansion)
	local questData = GetQuests(expansion, SQLFilters)
	if not questData or next(questData) == nil then
		return {}
	end

	return questData
end

---comment
---@param items_table table The quest items to check.
---@return boolean readyToHandIn
---@return boolean isCompleted
---@return number OnHand
---@return number Needed
function Utils.QuestStatus(items_table)
	-- check the items in the quest and if we have enough of all of them we are ready to hand in
	local totalNeeded = 0
	local totalOnHand = 0
	local readyToHandIn = false
	local isCompleted = false

	if not items_table then
		printf("No items table provided for quest status check.")
		return false, false, 0, 0
	end
	for _, item in ipairs(items_table or {}) do
		if item then
			item.qty = item.qty or 1
			item.on_hand = item.on_hand or Utils.CheckOnHand(item.name or 'Unknown Item')

			if item.is_reward and item.on_hand >= item.qty then
				isCompleted = true
			end
			if not item.is_reward then
				totalNeeded = totalNeeded + item.qty
				totalOnHand = totalOnHand + (item.on_hand <= item.qty and item.on_hand or item.qty)
			end
		end
	end

	readyToHandIn = totalNeeded > 0 and totalOnHand >= totalNeeded
	return readyToHandIn, isCompleted, totalOnHand, totalNeeded
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
					Class = MyClass,
					Armor = Utils.GetArmorType(),
					Expansion = newMessage.Expansion,
					Data = Boxes[MyName] and Boxes[MyName] or nil,
					Completed = BoxCompleted[MyName] or false,
					Ready = BoxHandInReady[MyName] or false,
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
			Boxes[newMessage.From] = newMessage.Data
			-- Boxes[newMessage.From][newMessage.Expansion] = {}
			-- Boxes[newMessage.From][newMessage.Expansion] = newMessage.Data
			Boxes[newMessage.From].Class = newMessage.Class or 'Unknown'
			Boxes[newMessage.From].Armor = newMessage.Armor or 'Unknown'
			BoxCompleted[newMessage.From] = newMessage.Completed or false
			BoxHandInReady[newMessage.From] = newMessage.Ready or false
		end
	end)
end


------------------ GUI ----------------------

--- Draws the quest data table.
--- The Table will display your status on each item needed for the quest.
--- It will show the slot, tier, item name, quantity needed, and how many you
--- have on hand.
---@param table_data table The table data to render.
---@param who string The name of the actor to display data for.
local function RenderTable(table_data, who)
	if table_data == nil then return end
	if ImGui.BeginTable('QuestData##', 6, bit32.bor(ImGuiTableFlags.Borders, ImGuiTableFlags.ScrollY, ImGuiTableFlags.RowBg, ImGuiTableFlags.Hideable), ImVec2(ImGui.GetContentRegionAvail() - 10, 0.0)) then
		ImGui.TableSetupColumn('Quest Name', ImGuiTableColumnFlags.WidthFixed, 80)
		ImGui.TableSetupColumn('Category', ImGuiTableColumnFlags.WidthFixed, 100)

		ImGui.TableSetupColumn('Restrictions', ImGuiTableColumnFlags.WidthFixed, 80)
		ImGui.TableSetupColumn('Slot', ImGuiTableColumnFlags.WidthFixed, 50)
		ImGui.TableSetupColumn('Reward Type', ImGuiTableColumnFlags.WidthFixed, 70)
		ImGui.TableSetupColumn('Items', ImGuiTableColumnFlags.WidthStretch, 300)

		ImGui.TableSetupScrollFreeze(3, 1) -- Freeze the first row
		ImGui.TableHeadersRow()
		ImGui.TableNextRow()

		-- display data
		-- tmpData[expansion][questName] = {Name, Category, Slot, ItemType, Restrictions, Items = {name, qty, extra, is_reward, reward_restriction, item_step}}
		if table_data and table_data[LookupExpan] then
			for _, questName in ipairs(QuestNames) do
				if table_data[LookupExpan][questName] == nil then
					-- skip if the quest data is not available for this Character
					goto continue
				end
				local Category = table_data[LookupExpan][questName].Category or 'Unknown Category'
				local Slot = table_data[LookupExpan][questName].Slot or 'Unknown Slot'
				local ItemType = table_data[LookupExpan][questName].ItemType or 'All'
				local Restrictions = table_data[LookupExpan][questName].Restrictions or 'All'
				local Items = table_data[LookupExpan][questName].Items or {}
				local isReady, isCompleted, totalOnHand, totalNeeded = Utils.QuestStatus(Items)
				if not ShowCompletedOnly or (ShowCompletedOnly and isCompleted) then
					if not HideCompleted or (HideCompleted and not isCompleted) then
						if not ShowHandInReadyOnly or (ShowHandInReadyOnly and isReady) then
							ImGui.TableNextColumn()
							if ImGui.SmallButton(Icons.FA_PENCIL .. "##" .. questName .. who) then
								ModifyQuestData = {
									quest_cat = Category,
									quest_name = questName,
									restrictions = Restrictions,
									item_type = ItemType,
									item_slot = Slot,
									items = DeepCopy(Items),
								}
								ModifyQuestExpan = LookupExpan
								ShowModifyQuest = true
							end
							if isEMU then
								ImGui.SameLine()
								if ImGui.SmallButton(Icons.FA_CART_ARROW_DOWN .. "##" .. questName .. who) then
									ExportToLNS = DeepCopy(Items)
								end
								if ImGui.IsItemHovered() then
									ImGui.BeginTooltip()
									ImGui.Text("Send the items to Lootnscoot as personal rules.")
									ImGui.EndTooltip()
								end
							end

							if isReady then
								ImGui.SameLine()
								ImGui.TextColored(Colors.teal, Icons.FA_STAR)
								if ImGui.IsItemHovered() then
									ImGui.BeginTooltip()
									ImGui.Text("Ready to hand in.")
									ImGui.EndTooltip()
								end
							elseif isCompleted then
								ImGui.SameLine()
								ImGui.TextColored(Colors.yellow, Icons.FA_TROPHY)
								if ImGui.IsItemHovered() then
									ImGui.BeginTooltip()
									ImGui.Text("Quest completed.")
									ImGui.EndTooltip()
								end
							end

							ImGui.PushTextWrapPos(0.0)
							local tCol = Colors['light pink']
							if isCompleted then
								tCol = Colors.green -- Green if quest is completed
							elseif isReady then
								tCol = Colors.yellow -- Yellow if ready to hand in
							end
							ImGui.TextColored(tCol, questName)
							ImGui.PopTextWrapPos()

							ImGui.TableNextColumn()
							ImGui.PushTextWrapPos(0.0)
							ImGui.Text("%s", Category)
							ImGui.PopTextWrapPos()

							ImGui.TableNextColumn()
							ImGui.PushTextWrapPos(0.0)
							ImGui.TextColored(Colors.teal, Restrictions)
							ImGui.PopTextWrapPos()

							ImGui.TableNextColumn()
							ImGui.TextColored(Colors.tangarine, Slot)
							ImGui.TableNextColumn()
							ImGui.TextColored(Colors.softblue, ItemType)
							ImGui.TableNextColumn()

							-- Draw the item list
							for _, iData in ipairs(Items or {}) do
								if not HideRewards or (HideRewards and not iData.is_reward) then
									if not iData.is_reward or not HideCantUseRewards or (iData.is_reward and HideCantUseRewards and
											((iData.reward_restriction:find(table_data.Class) or iData.reward_restriction == 'All'))) then
										ImGui.Separator()
										local iName = iData.name or 'Unknown Item'

										if ImGui.BeginTable('ItemData##' .. Category .. ItemType .. Slot .. iName, 3, ImGuiTableFlags.BordersInnerV) then
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
											if iData.is_reward then
												ImGui.TextColored(Colors.yellow, Icons.FA_TROPHY)
												ImGui.SameLine(0, 0)
												if ImGui.IsItemHovered() then
													ImGui.BeginTooltip()
													ImGui.Text("This is a reward item.")
													ImGui.EndTooltip()
												end
											end
											ImGui.PushStyleColor(ImGuiCol.Text, tCol)
											ImGui.PushID(Category .. ItemType .. Slot .. iName .. who)
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

											ImGui.TableNextColumn()
											tCol = Colors.teal
											if iData.on_hand > 0 and iData.on_hand < iData.qty then
												tCol = Colors.yellow -- Yellow if not enough on hand
											end
											if iData.on_hand >= iData.qty then
												tCol = Colors.green -- Green if enough on hand
											end
											ImGui.PushID(Category .. ItemType .. Slot .. iName .. iData.on_hand)
											ImGui.TextColored(tCol, "%s", iData.on_hand)
											ImGui.PopID()
											ImGui.SameLine()
											ImGui.PushID(Category .. ItemType .. Slot .. iName .. iData.qty)
											ImGui.Text(" / %s", iData.qty)
											ImGui.PopID()
											ImGui.TableNextColumn()
											ImGui.PushID(Category .. ItemType .. iName .. Slot)
											ImGui.TextWrapped("Step: %s - %s", iData.Step or 1, iData.extra)
											ImGui.PopID()
											ImGui.EndTable()
										end
									end
								end
							end
						end
					end
				end
				::continue::
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
	SQLFilters['item_type'] = ImGui.InputTextWithHint('Reward Type##' .. id, 'Reward Item Type', SQLFilters['item_type'])

	ImGui.SetNextItemWidth(200)
	SQLFilters['item_name'] = ImGui.InputTextWithHint('Item Name##' .. id, 'Item Name', SQLFilters['item_name'])

	ImGui.SameLine()
	ImGui.SetNextItemWidth(200)
	SQLFilters['item_slot'] = ImGui.InputTextWithHint('Item Slot##' .. id, 'Item Slot (head, chest, etc.)', SQLFilters['item_slot'])

	local pressedSC = false
	ShowCompletedOnly, pressedSC = ImGui.Checkbox('Show Completed Only##' .. id, ShowCompletedOnly)

	ImGui.SameLine()
	local pressedSR = false
	ShowHandInReadyOnly, pressedSR = ImGui.Checkbox('Show Hand-In Ready Only##' .. id, ShowHandInReadyOnly)

	local pressedHC = false
	HideCompleted, pressedHC = ImGui.Checkbox('Hide Completed##' .. id, HideCompleted)

	ImGui.SameLine()
	HideRewards = ImGui.Checkbox('Hide Rewards##' .. id, HideRewards)

	ImGui.SameLine()
	HideCantUseRewards = ImGui.Checkbox('Hide Cant Use Rewards##' .. id, HideCantUseRewards)

	if pressedSC then
		HideCompleted = false
		ShowHandInReadyOnly = false
	end
	if pressedHC then
		ShowCompletedOnly = false
		ShowHandInReadyOnly = false
	end
	if pressedSR then
		ShowCompletedOnly = false
		HideCompleted = false
	end
	ImGui.SeparatorText(LookupExpan .. "##" .. id)

	if ImGui.Button('Refresh Data##' .. id) then
		LastLookupExpan = 'none'
		GetData = true
		SendData = true
	end

	ImGui.SameLine()
	if ImGui.Button('Clear Filters##' .. id) then
		SQLFilters          = {
			['expansion'] = '',
			['quest_name'] = '',
			['item_slot'] = '',
			['item_type'] = '',
			['item_name'] = '',
			['quest_cat'] = '',
			['restriction'] = '',
		}
		ShowCompletedOnly   = false
		ShowHandInReadyOnly = false
		HideCompleted       = false
		GetData             = true
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

		if ImGui.BeginTable("ItemsTable", 7, ImGuiTableFlags.BordersInnerV) then
			ImGui.TableSetupColumn("Delete", ImGuiTableColumnFlags.WidthFixed, 30)
			ImGui.TableSetupColumn("Step", ImGuiTableColumnFlags.WidthFixed, 100)
			ImGui.TableSetupColumn("Item Name", ImGuiTableColumnFlags.WidthFixed, 180)
			ImGui.TableSetupColumn("Is Reward", ImGuiTableColumnFlags.WidthFixed, 80)
			ImGui.TableSetupColumn("Reward Restrictions", ImGuiTableColumnFlags.WidthFixed, 80)
			ImGui.TableSetupColumn("Quantity", ImGuiTableColumnFlags.WidthFixed, 100)
			ImGui.TableSetupColumn("Extra Info", ImGuiTableColumnFlags.WidthStretch, 100)

			for i, item in ipairs(NewQuestData.Items or {}) do
				ImGui.TableNextRow()
				ImGui.TableNextColumn()
				if ImGui.Button(string.format("X##%d", i)) then
					table.remove(NewQuestData.Items, i)
				end
				ImGui.TableNextColumn()
				if not item.is_reward then
					ImGui.SetNextItemWidth(100)
					item.Step = ImGui.InputInt(string.format("Step##%d", i), item.Step)
				else
					item.Step = 999
				end

				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(180)
				item.Name = ImGui.InputTextWithHint(string.format("Name##%d", i), "Item Name", item.Name)

				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(80)
				item.is_reward = ImGui.Checkbox(string.format("Reward##%d", i), item.is_reward)

				ImGui.TableNextColumn()
				if item.is_reward then
					ImGui.SetNextItemWidth(80)
					item.reward_restriction = ImGui.InputTextWithHint(string.format("RewardClass##%d", i), "Reward Class", item.reward_restriction or 'All')
				end

				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(100)
				item.Qty = ImGui.InputInt(string.format("Qty##%d", i), item.Qty)
				ImGui.TableNextColumn()
				item.Extra = ImGui.InputTextWithHint(string.format("Info##%d", i), "Extra Info", item.Extra or '')
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

--- Displays the modify quest window for editing quest data.
--- This window allows users to modify existing quest data in the database.
---@param QuestData table The quest data to modify.
local function RenderModifyQuestWindow(QuestData)
	-- this is a window to allow modifying quests in the database
	-- you can select a quest from the list and modify its data
	-- you can also delete quests from the database
	if not ShowModifyQuest then return end

	ImGui.SetNextWindowSize(ImVec2(600, 400), ImGuiCond.FirstUseEver)
	ImGui.SetNextWindowPos(ImVec2(100, 100), ImGuiCond.FirstUseEver)
	local open, draw = ImGui.Begin('Modify Quest Data##QuestWatch' .. MyName, true)
	if not open then
		draw = false
		ShowModifyQuest = false
	end
	if draw then
		ImGui.Text("Modify Quest Data")
		ImGui.Separator()

		ImGui.SetNextItemWidth(180)
		QuestData.quest_name = ImGui.InputTextWithHint('Quest Name##ModifyQuestName', 'Quest Name', QuestData.quest_name or '')

		ImGui.SetNextItemWidth(180)
		QuestData.item_slot = ImGui.InputTextWithHint('Slot##ModifyQuestSlot', 'Slot', QuestData.item_slot)

		ImGui.SetNextItemWidth(180)
		QuestData.restrictions = ImGui.InputTextWithHint('Restrictions##ModifyQuestRestrictions', "Class Restriction, Armor Type etc (lower case)",
			QuestData.restrictions)
		ImGui.SetNextItemWidth(180)
		QuestData.quest_cat = ImGui.InputTextWithHint('Category##ModifyQuestCategory', "Quest Category (optional)", QuestData.quest_cat or '')
		ImGui.SetNextItemWidth(180)
		QuestData.item_type = ImGui.InputTextWithHint('Item Type##ModifyQuestItemType', "Reward Item Type (optional)", QuestData.item_type or '')
		if ImGui.BeginTable("ItemsTable", 7, ImGuiTableFlags.BordersInnerV) then
			ImGui.TableSetupColumn("Delete", ImGuiTableColumnFlags.WidthFixed, 30)
			ImGui.TableSetupColumn("Step", ImGuiTableColumnFlags.WidthFixed, 100)
			ImGui.TableSetupColumn("Item Name", ImGuiTableColumnFlags.WidthFixed, 180)
			ImGui.TableSetupColumn("Reward", ImGuiTableColumnFlags.WidthFixed, 40)
			ImGui.TableSetupColumn("Reward Restrictions", ImGuiTableColumnFlags.WidthFixed, 80)
			ImGui.TableSetupColumn("Quantity", ImGuiTableColumnFlags.WidthFixed, 100)
			ImGui.TableSetupColumn("Extra Info", ImGuiTableColumnFlags.WidthStretch, 180)
			ImGui.TableHeadersRow()
			for i, item in ipairs(QuestData.items or {}) do
				local rewardRes = item.is_reward and (item.reward_restriction or '') or ''
				ImGui.TableNextColumn()
				ImGui.TableNextRow()
				ImGui.TableNextColumn()
				if ImGui.Button(string.format("X##%d", i)) then
					table.remove(QuestData.items, i)
				end

				ImGui.TableNextColumn()
				if not item.is_reward then
					ImGui.SetNextItemWidth(100)
					item.Step = ImGui.InputInt(string.format("##Step%d", i), item.Step or 1)
				else
					item.Step = 999
				end

				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(180)
				item.name = ImGui.InputTextWithHint(string.format("##Name%d", i), "Item Name", item.name)

				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(40)
				item.is_reward = ImGui.Checkbox(string.format("##Reward%d", i), item.is_reward)

				ImGui.TableNextColumn()
				if item.is_reward then
					ImGui.SetNextItemWidth(80)
					item.reward_restriction = ImGui.InputTextWithHint(string.format("##RewardClass%d", i), "Reward Class", rewardRes)
				end

				ImGui.TableNextColumn()
				ImGui.SetNextItemWidth(100)
				item.qty = ImGui.InputInt(string.format("##Qty%d", i), item.qty)

				ImGui.TableNextColumn()
				item.extra = ImGui.InputTextWithHint(string.format("##Info%d", i), "Extra Info", item.extra or '')
			end

			ImGui.EndTable()
		end
		if ImGui.Button('Add Item') then
			if not QuestData.items then
				QuestData.items = {}
			end
			table.insert(QuestData.items, { name = 'NEWITEM', qty = 1, extra = '', is_reward = false, Step = 1, })
		end
		ImGui.SameLine()
		if ImGui.Button('Save Changes') then
			ModifyQuestData = QuestData
			ModifyQuestExpan = LookupExpan
			EnterModifiedQuest = true
			ShowModifyQuest = false
		end
		ImGui.SameLine()
		if ImGui.Button('Delete Quest') then
			ModifyQuestData = QuestData
			ModifyQuestExpan = LookupExpan
			DeleteQuest = true
			ShowModifyQuest = false
		end
		ImGui.SameLine()
		if ImGui.Button('Cancel') then
			ShowModifyQuest = false
			ModifyQuestData = nil
			ModifyQuestExpan = ''
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
			if not ShowCompletedOnly or (ShowCompletedOnly and BoxCompleted[actorName]) then
				if not ShowHandInReadyOnly or (ShowHandInReadyOnly and BoxHandInReady[actorName]) then
					local actorLbl = actorName == MyName and string.format("%s %s", Icons.FA_STAR, actorName) or actorName
					if BoxHandInReady[actorName] then
						ImGui.PushStyleColor(ImGuiCol.Text, Colors.yellow)
					elseif BoxCompleted[actorName] then
						ImGui.PushStyleColor(ImGuiCol.Text, Colors.green)
					else
						ImGui.PushStyleColor(ImGuiCol.Text, Colors.white)
					end
					-- local lable = string.format("%s %s", (Boxes[actorName].Class or ''):upper(), actorName)
					if ImGui.Selectable(actorLbl, SelectedBox == actorName) then
						SelectedBox = actorName
					end
					ImGui.PopStyleColor()
				end
			end
		end
	end
	ImGui.EndChild()

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
	end
	ImGui.EndChild()
end

--- Renders the main Quest Watch window.
local function RenderMain()
	if not ShowMain then return end
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
		if ActorsList == nil then
			ImGui.Text('No Data Available')
		else
			-- Render the actors data table
			RenderActors()
		end
	end
	ImGui.End()
end

--- Renders the GUI for Quest Watch.
local function RenderGUI()
	if ShowMain then
		RenderMain()
	end
	if ShowModifyQuest and ModifyQuestData then
		RenderModifyQuestWindow(ModifyQuestData)
	end
	if ShowAddQuest then
		RenderAddQuestWindow()
	end
	RenderBtn()
end

------------------------- Main --------------
local function Init()
	CheckUpdate()

	-- initialize the hasData table
	for _, expan in ipairs(expans) do
		hasData[expan] = false
	end

	CheckExpansionData()

	-- initialize Actors
	ActorsHandler()

	MyArmor = Utils.GetArmorType()

	Boxes[MyName] = GetQuestData(LookupExpan)

	mq.imgui.init('QuestData', RenderGUI)
	if MyActor then
		MyActor:send({ mailbox = 'QuestWatch', }, {
			Subject = 'Hello',
			From = MyName,
			Class = MyClass,
			Armor = Utils.GetArmorType(),
			Expansion = LookupExpan,
			Data = Boxes[MyName] and Boxes[MyName] or nil,
		})
	end
	isRunning = true
end

local function Main()
	local checkTime = 0
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

		if EnterModifiedQuest then
			ModifyQuest(ModifyQuestExpan, ModifyQuestData)
			if LookupExpan == ModifyQuestExpan then
				LastLookupExpan = 'none'
				GetData = true
				SendData = true
			end
			EnterModifiedQuest = false
			ModifyQuestData = nil
			ModifyQuestExpan = ''
			CheckExpansionData()
		end

		if DeleteQuest then
			DeleteQuestData(ModifyQuestExpan, ModifyQuestData)
			if LookupExpan == ModifyQuestExpan then
				LastLookupExpan = 'none'
				GetData = true
				SendData = true
			end
			DeleteQuest = false
			ModifyQuestData = nil
			ModifyQuestExpan = ''
			CheckExpansionData()
		end

		if os.clock() - checkTime > 300 then
			LastLookupExpan = 'none'
			checkTime = os.clock()
			GetData = true
			SendData = true
		end

		if (LookupExpan ~= 'none' and Boxes[MyName] == nil) or LastLookupExpan ~= LookupExpan then
			Boxes[MyName] = GetQuestData(LookupExpan)
			checkTime = os.clock()
			LastLookupExpan = LookupExpan
		end

		if LookupExpan == 'none' then
			Boxes[MyName] = nil
		end

		if GetData and MyActor then
			MyActor:send({ mailbox = 'QuestWatch', }, {
				Subject = 'data_req',
				From = MyName,
				Expansion = LookupExpan,
				Filters = SQLFilters,
				Completed = BoxCompleted[MyName] or false,
				Ready = BoxHandInReady[MyName] or false,
			})
			GetData = false
			mq.delay(50)
		end

		if SendData and MyActor then
			Boxes[MyName] = GetQuestData(LookupExpan)
			MyActor:send({ mailbox = 'QuestWatch', }, {
				Subject = 'data_reply',
				From = MyName,
				Class = MyClass,
				Armor = Utils.GetArmorType(),
				Expansion = LookupExpan,
				Data = Boxes[MyName] and Boxes[MyName] or nil,
				Completed = BoxCompleted[MyName] or false,
				Ready = BoxHandInReady[MyName] or false,
			})
			SendData = false
			mq.delay(50)
			CheckExpansionData()
		end

		SortActors()

		if ExportToLNS then
			for _, item in ipairs(ExportToLNS) do
				if not item.is_reward then
					mq.cmdf("/lns personalitem quest \"%s\" %d", item.name, item.qty)
				end
			end
			ExportToLNS = nil
		end

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
