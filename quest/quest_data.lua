local QuestData = {
	--['Expansion']['quest|tier']['slot']['armor type|class']['itemName']{['qty'] = amt, ['extra'] = 'extra info text'}
	['Classic'] = {
		-- Journeyman's Boots
		['J-Boots'] = {
			['feet'] = {
				['All'] = {
					['Ring of the Ancients'] = { qty = 1, extra = 'From an Ancient Cyclops', },
					['Shadowed Rapier'] = { qty = 1, extra = 'From a Shadowed Man', },
					['Gold'] = { qty = 3250, extra = 'Must Be Gold!', },
					['Journeyman\'s Boots'] = { qty = 1, extra = 'Reward', },
				},
			},
		},
		-- Rod of Insidious Glamour (enc) clicky wand
		['Rod of Insidious Glamour'] = {
			['primary'] = {
				['enc'] = {
					['Golden Rod'] = { qty = 1, extra = 'From  a froglok priest in Upper Guk', },
					['A Shining Stone'] = { qty = 1, extra = 'From a Shadowed Man', },
					['Glamour Stone'] = { qty = 1, extra = 'From handing in A Shining Stone and 50Plat to Cynthia in Rathe Mountains', },
					['Glowing Glamour Stone'] = { qty = 1, extra = 'From giving a Glamour Stone and 50Plat to Tarn Visilin in High Keep', },
					['Rod of Insidious Glamour'] = { qty = 1, extra = 'Reward from handing in Glowing Glamour Stone and Golden Rod in Temple of Solusek Ro', },
				},
			},
		},
	},
	['Ruins of Kunark'] = {
		--Keys
		['Key to Sebilis'] = {
			['key'] = {
				['All'] = {
					['Medallion of the Kunzar'] = { qty = 1, extra = 'From the froglok forager in Trakanon\'s Teeth', },
					['Medallion of the Nathsar'] = { qty = 1, extra = 'From the froglok hunter in Trakanon\'s Teeth', },
					['Trakanon Idol'] = { qty = 1, extra = 'Key from handing in the 2 Medallions to Emperor Ganak in Trakanon\'s Teeth', },
				},
			},
		},
		-- Epic 1.0 Quests broken down by class.
		['Epic 1.0'] = {
			['weapon'] = {
				--leather
				['bst'] = {
					['Gem of the Void'] = { qty = 2, extra = 'Maiden’s Eye', },
					['Chunk of Dense Fungal Padding'] = { qty = 1, extra = 'The Deep', },
					['Perfect Acrylia Ore'] = { qty = 1, extra = 'The Grey', },
					['Copper Medal of War'] = { qty = 1, extra = 'Grimling Forest', },
					['Official Seal of the Khati Sha'] = { qty = 1, extra = 'From Handin of Copper Medal of War', },
					['Carved Wooden Chest'] = { qty = 1, extra = '6 slot container for combine', },
					['Totem of the Gorilla'] = { qty = 1, extra = 'from Spirit of Rage in Emerald Jungle', },
					['Wrapped Gorilla Totem'] = { qty = 1, extra = 'From handin of Totem of the Gorilla', },
					['Totem of the Ice Bear'] = { qty = 1, extra = 'From The Icebound Spirit in Permafrost', },
					['Wrapped Ice Bear Totem'] = { qty = 1, extra = 'from hand of Totem of the Ice Bear', },
					['Totem of the Spider'] = { qty = 1, extra = 'From The Spirit of Decay in Feerrott', },
					['Wrapped Spider Totem'] = { qty = 1, extra = 'From handin of Totem of the Spider', },
					['Totem of the Wolf'] = { qty = 1, extra = 'From The Spirit of Malevolence in Lesser Faydark', },
					['Wrapped Wolf Totem'] = { qty = 1, extra = 'From handin of Totem of the Wolf', },
					['Totem of the Watcher'] = { qty = 1, extra = 'From The Spirit of Torment in Stonebrunt Mountains', },
					['Wrapped Watcher Totem'] = { qty = 1, extra = 'From handin of Totem of the Watcher', },
					['Totem of the Alligator'] = { qty = 1, extra = 'From The Spirit of Sorrow in Swamp of No Hope', },
					['Wrapped Alligator Totem'] = { qty = 1, extra = 'From handin of Totem of the Alligator', },
					['Sealed Box of Totems'] = { qty = 1, extra = 'From Combining the 6 Totems in the Carved Wooden Chest', },
					['Seal of Elder Dumul'] = { qty = 1, extra = 'From handing in Sealed Box in Shar Vahl', },
					['Black Silk Sack'] = { qty = 1, extra = '6 slot bag from handing in Seal, spawns 6 npc on nearby isle to kill', },
					['Shards of Broken Glass'] = { qty = 6, extra = 'From killing the 6 npc spawned', },
					['Sack of Broken Glass'] = { qty = 1, extra = 'From combining the Shards of Broken Glass in the Black Silk Sack', },
					['Note for Historian Qua'] = { qty = 1, extra = 'From handin of Sack of Broken Glass', },
					['Qua\'s Receipt'] = { qty = 1, extra = 'From handing in Note for Historian Qua', },
					['Rahoul\'s Collection Box'] = { qty = 1, extra = '4 slot container, from handing in the receipt', },
					['Sealed Collection Box'] = { qty = 1, extra = 'Combining the Gem of the Void x2, Dhunk of Dense Fungal Padding, and Perfect Acrylia Ore', },
					['Jagged Claw of Rending'] = { qty = 2, extra = 'From handing in the Sealed Collection Box in Shar Vahl', },
					['Khati Sha Seal of War'] = { qty = 1, extra = 'From handing in Jagged Claw of Rending x2', },
					['Acrylia Gilded Box'] = { qty = 1, extra = '4 slot Container From handing in Jagged Claw of Rending x2', },
					['Draz Nurakk\'s Head'] = { qty = 1, extra = 'Fungus Grove Draz Spawns after handing in the Khati Sha Seal of War', },
					['Sealed Gilded Wooden Chest'] = { qty = 1, extra = 'Combine 2x Jagged Claw of Rending,  Khati Sha Seal of War,  Draz Nurakk\'s Head in  Acrylia Gilded Box ', },
					['Claw of the Savage Spirit'] = { qty = 2, extra = 'Epic 1.0', },
				},
				['mnk'] = {},
				['dru'] = {},
				--chain
				['rog'] = {},
				['rng'] = {},
				['ber'] = {},
				['shm'] = {},
				--plate
				['pal'] = {},
				['shd'] = {},
				['clr'] = {
					['Lord Bergurgle\'s Crown'] = { qty = 1, extra = 'Lake Rathtear', },
					['Ornate Sea Shell'] = { qty = 1, extra = 'After Crown Handin', },
					['Coral Statue of Tarew'] = { qty = 1, extra = 'Tim Deep', },
					['Blood Soaked Plasmatic Priest Robe'] = { qty = 1, extra = 'Temple Solusek Ro', },
					['Orb of Frozen Water'] = { qty = 1, extra = 'Tim Deep', },
					['Lord Gimblox\'s Signet Ring'] = { qty = 1, extra = 'Sol A', },
					['Message to Natasha'] = { qty = 1, extra = 'Sol A', },
					['Natasha\'s Letter'] = { qty = 1, extra = 'Give to Naxot in BW', },
					['Sceptre of Ixiblat Fer'] = { qty = 1, extra = 'Burning Woods', },
					['Singed Scroll'] = { qty = 1, extra = 'Chardok', },
					['Orb of Clear Water'] = { qty = 1, extra = 'Tim Deep', },
					['Shimmering Pearl'] = { qty = 1, extra = 'Give To Zordak', },
					['Swirling Pearl'] = { qty = 1, extra = 'Zordak', },
					['Pearlescent Fragment'] = { qty = 4, extra = 'Skyfire', },
					['Assembled Pearlescent Shard'] = { qty = 1, extra = 'Combine in Skyfire', },
					['Zordak Ragefire\'s Heart'] = { qty = 1, extra = 'Assembled', },
					['Orb of Vapor'] = { qty = 1, extra = 'Tim Deep', },
					['Orb of the Triumvirate'] = { qty = 1, extra = ' combine 3 orbs', },
					['Water Sprinkler of Nem Ankh'] = { qty = 1, extra = 'Epic 1.0', },
				},
				['war'] = {},
				['brd'] = {},
				--cloth
				['enc'] = {},
				['mag'] = {},
				['wiz'] = {},
				['nec'] = {},
			},
		},
	},
	['Scars of Velious'] = {
		-- Thurgadin Quest Armor (pieces drop in Kael)
		['Thurg Armor'] = {
			['hands'] = {
				['plate'] = {
					['Corroded Plate Gauntlets'] = { qty = 1, extra = 'Kael', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Corroded Chain Gauntlets'] = { qty = 1, extra = 'Kael', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Eroded Leather Gloves'] = { qty = 1, extra = 'Kael', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Gloves'] = { qty = 1, extra = '', },
					['Crushed Topaz'] = { qty = 3, extra = 'caster', },
				},
			},
			['head'] = {
				['plate'] = {
					['Corroded Plate Helmet'] = { qty = 1, extra = 'Kael', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Corroded Chain Coif'] = { qty = 1, extra = 'Kael', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Eroded Leather Cap'] = { qty = 1, extra = 'Kael', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Turban'] = { qty = 1, extra = 'Kael', },
					['Crushed Flame Opal'] = { qty = 3, extra = 'caster', },
				},
			},
			['chest'] = {
				['plate'] = {
					['Corroded Breastplate'] = { qty = 1, extra = 'Kael', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Corroded Chain Tunic'] = { qty = 1, extra = 'Kael', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Eroded Leather Tunic'] = { qty = 1, extra = 'Kael', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Robe'] = { qty = 1, extra = '', },
					['Pristine Emerald'] = { qty = 3, extra = 'caster', },
				},
			},
			['feet'] = {
				['plate'] = {
					['Corroded Plate Boots'] = { qty = 1, extra = 'Kael', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Corroded Chain Boots'] = { qty = 1, extra = 'Kael', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Eroded Leather Boots'] = { qty = 1, extra = 'Kael', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Boots'] = { qty = 1, extra = 'Kael', },
					['Crushed Jaundice Gem'] = { qty = 3, extra = 'caster', },
				},
			},
			['wrists'] = {
				['plate'] = {
					['Corroded Plate Bracer'] = { qty = 1, extra = 'Kael', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Corroded Chain Bracer'] = { qty = 1, extra = 'Kael', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Eroded Leather Bracelet'] = { qty = 1, extra = 'Kael', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Wristband'] = { qty = 1, extra = 'Kael', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'caster', },
				},
			},
			['arms'] = {
				['plate'] = {
					['Corroded Plate Vambraces'] = { qty = 1, extra = 'Kael', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Corroded Chain Sleeves'] = { qty = 1, extra = 'Kael', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Eroded Leather Sleeves'] = { qty = 1, extra = 'Kael', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Sleeves'] = { qty = 1, extra = 'Kael', },
					['Flawed Topaz'] = { qty = 3, extra = 'caster', },
				},
			},
			['legs'] = {
				['plate'] = {
					['Corroded Plate Greaves'] = { qty = 1, extra = 'Kael', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Corroded Chain Leggings'] = { qty = 1, extra = 'Kael', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Eroded Leather Leggings'] = { qty = 1, extra = 'Kael', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Pantaloons'] = { qty = 1, extra = 'Kael', },
					['Nephrite'] = { qty = 3, extra = 'caster', },
				},
			},
		},
		-- Kael Quest Armor (pieces drop in the West and North halls in Temple of Veeshan)
		['Kael Armor'] = {
			['hands'] = {
				['plate'] = {
					['Ancient Tarnished Gauntlets'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Ancient Tarnished Chain Gauntlets'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Ancient Leather Gloves'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Ancient Silk Gloves'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Topaz'] = { qty = 3, extra = 'caster', },
				},
			},
			['head'] = {
				['plate'] = {
					['Ancient Tarnished Helmet'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Ancient Tarnished Chain Coif'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Ancient Leather Cap'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Ancient Silk Turban'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Flame Opal'] = { qty = 3, extra = 'caster', },
				},
			},
			['chest'] = {
				['plate'] = {
					['Ancient Tarnished Breastplate'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Ancient Tarnished Chain Tunic'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Ancient Leather Tunic'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Ancient Silk Robe'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Pristine Emerald'] = { qty = 3, extra = 'caster', },
				},
			},
			['feet'] = {
				['plate'] = {
					['Ancient Tarnished Boots'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Ancient Tarnished Chain Boots'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Ancient Leather Boots'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Ancient Silk Boots'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Jaundice Gem'] = { qty = 3, extra = 'caster', },
				},
			},
			['wrists'] = {
				['plate'] = {
					['Ancient Tarnished Bracer'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Ancient Tarnished Chain Bracer'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Ancient Leather Bracelet'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Ancient Silk Wristband'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'caster', },
				},
			},
			['arms'] = {
				['plate'] = {
					['Ancient Tarnished Vambraces'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Ancient Tarnished Chain Sleeves'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Ancient Leather Sleeves'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Ancient Silk Sleeves'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawed Topaz'] = { qty = 3, extra = 'caster', },
				},
			},
			['legs'] = {
				['plate'] = {
					['Ancient Tarnished Greaves'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Ancient Tarnished Chain Leggings'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Ancient Leather Leggings'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Pantaloons'] = { qty = 1, extra = 'Temple of Veeshan', },
					['Nephrite'] = { qty = 3, extra = 'caster', },
				},
			},
		},
		-- Skyshrine Quest Armor (pieces drop in the Halls of Testing (east wing) in Temple of Veeshan)
		['SkyShrine Armor'] = {
			['hands'] = {
				['plate'] = {
					['Unadorned Plate Gauntlets'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Unadorned Chain Gauntlets'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Unadorned Leather Gloves'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Topaz'] = { qty = 3, extra = 'melee', },
					['Crushed Lava Ruby'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Tattered Silk Gloves'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Topaz'] = { qty = 3, extra = 'caster', },
				},
			},
			['head'] = {
				['plate'] = {
					['Unadorned Plate Helmet'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Unadorned Chain Coif'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Unadorned Leather Cap'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Coral'] = { qty = 3, extra = 'melee', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Tattered Silk Turban'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Flame Opal'] = { qty = 3, extra = 'caster', },
				},
			},
			['chest'] = {
				['plate'] = {
					['Unadorned Breastplate'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Unadorned Chain Tunic'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Unadorned Leather Tunic'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawless Diamond'] = { qty = 3, extra = 'melee', },
					['Black Marble'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Tattered Silk Robe'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Pristine Emerald'] = { qty = 3, extra = 'caster', },
				},
			},
			['feet'] = {
				['plate'] = {
					['Unadorned Plate Boots'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Unadorned Chain Boots'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Unadorned Leather Boots'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Black Marble'] = { qty = 3, extra = 'melee', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Tattered Silk Boots'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Jaundice Gem'] = { qty = 3, extra = 'caster', },
				},
			},
			['wrists'] = {
				['plate'] = {
					['Unadorned Plate Bracer'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Unadorned Chain Bracer'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Unadorned Leather Bracelet'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Flame Emerald'] = { qty = 3, extra = 'melee', },
					['Crushed Opal'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Tattered Silk Wristband'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Crushed Onyx Sapphire'] = { qty = 3, extra = 'caster', },
				},
			},
			['arms'] = {
				['plate'] = {
					['Unadorned Plate Vambraces'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Unadorned Chain Sleeves'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Unadorned Leather Sleeves'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawed Emerald'] = { qty = 3, extra = 'melee', },
					['Jaundice Gem'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Tattered Silk Sleeves'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawed Topaz'] = { qty = 3, extra = 'caster', },
				},
			},
			['legs'] = {
				['plate'] = {
					['Unadorned Plate Greaves'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['chain'] = {
					['Unadorned Chain Leggings'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['leather'] = {
					['Unadorned Leather Leggings'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Flawed Sea Sapphire'] = { qty = 3, extra = 'melee', },
					['Chipped Onyx Sapphire'] = { qty = 3, extra = 'priest', },
				},
				['cloth'] = {
					['Torn Enchanted Silk Pantaloons'] = { qty = 1, extra = 'ToV Halls of Testing', },
					['Nephrite'] = { qty = 3, extra = 'caster', },
				},
			},
		},
	},
	['Shadows of Luclin'] = {},
	['Planes of Power'] = {},
	['Gates of Discord'] = {},
	['Omens of War'] = {
		-- Group Tier Armor Quests
		['Tier1 Armor'] = {
			['hands'] = {
				['plate'] = {
					['Spire Control Shard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Discordling Message Satchel'] = { qty = 2, extra = 'Wall of Slaughter, Noble\'s Causeway', },
				},
				['chain'] = {
					['Spire Control Shard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Darkshorn Kyv Hood'] = { qty = 2, extra = 'Noble\'s Causeway', },
				},
				['leather'] = {
					['Spire Control Shard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Glistening Murkglider Pelts'] = { qty = 2, extra = 'The Ruined City of Dranik and the Wall of Slaughter.', },
				},
				['cloth'] = {
					['Spire Control Shard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Discordling Finger Bone'] = { qty = 2, extra = 'Muramite Proving Grounds, Wall of Slaughter', },
				},
			},
			['head'] = {
				['plate'] = {
					['Duskfall Chronicles'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Bristling Ukun Hide'] = { qty = 2, extra = 'Ruined City of Dranik, Wall of Slaughter', },
				},
				['chain'] = {
					['Duskfall Chronicles'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Deepshadow Feran Pelt'] = { qty = 2, extra = 'Noble\'s Causeway', },
				},
				['leather'] = {
					['Duskfall Chronicles'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Muramite Ritual Scroll'] = { qty = 2, extra = 'Wall of Slaughter, Bloodfields', },
				},
				['cloth'] = {
					['Duskfall Chronicles'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Rugged Murkglider Skin'] = { qty = 2, extra = 'Noble\'s Causeway, Ruined City of Dranik, Wall of Slaughter', },
				},
			},
			['chest'] = {
				['plate'] = {
					['Dragorn Elder Scepter'] = { qty = 1, extra = 'Ruined City of Dranik and Wall of Slaughter', },
					['Shorn Murkglider Tentacle'] = { qty = 3, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
				},
				['chain'] = {
					['Dragorn Elder Scepter'] = { qty = 1, extra = 'Ruined City of Dranik and Wall of Slaughter', },
					['Ragged Discordling Skin'] = { qty = 3, extra = 'Wall of Slaughter', },
				},
				['leather'] = {
					['Dragorn Elder Scepter'] = { qty = 1, extra = 'Ruined City of Dranik and Wall of Slaughter', },
					['Tattered Chimera Pelt'] = { qty = 3, extra = 'Wall of Slaughter', },
				},
				['cloth'] = {
					['Dragorn Elder Scepter'] = { qty = 1, extra = 'Ruined City of Dranik and Wall of Slaughter', },
					['Kuuan Oil Candle'] = { qty = 3, extra = 'Noble\'s Causeway, Ruined City of Dranik', },
				},
			},
			['feet'] = {
				['plate'] = {
					['Kuuan Traitor Stones'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Kyv Bowstring'] = { qty = 2, extra = 'Noble\'s Causeway', },
				},
				['chain'] = {
					['Kuuan Traitor Stones'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Muramite Dispatch'] = { qty = 2, extra = 'Noble\'s Causeway', },
				},
				['leather'] = {
					['Kuuan Traitor Stones'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Muramite Dragorn Slaver Whip'] = { qty = 2, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
				},
				['cloth'] = {
					['Kuuan Traitor Stones'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Ikaav Braid'] = { qty = 2, extra = 'Noble\'s Causeway, Ruined City of Dranik', },
				},
			},
			['wrists'] = {
				['plate'] = {
					['Dranik Blood Standard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Ashlock Branch'] = { qty = 2, extra = 'Ruined City of Dranik', },
				},
				['chain'] = {
					['Dranik Blood Standard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Shed Ikaav Skin'] = { qty = 2, extra = 'Ruined City of Dranik, Noble\'s Causeway', },
				},
				['leather'] = {
					['Dranik Blood Standard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Dansk Branch'] = { qty = 2, extra = 'Noble\'s Causeway', },
				},
				['cloth'] = {
					['Dranik Blood Standard'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Hooked Chimera Claw'] = { qty = 2, extra = 'Riftseekers\' Sanctum, Wall of Slaughter', },
				},
			},
			['arms'] = {
				['plate'] = {
					['Map of Old Kuua'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Ukun Quill'] = { qty = 2, extra = 'Ruined City of Dranik, Wall of Slaughter', },
				},
				['chain'] = {
					['Map of Old Kuua'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Kuuan Lodestone'] = { qty = 2, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
				},
				['leather'] = {
					['Map of Old Kuua'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Dansk Blossom'] = { qty = 2, extra = 'Noble\'s Causeway, Ruined City of Dranik', },
				},
				['cloth'] = {
					['Map of Old Kuua'] = { qty = 1, extra = 'Wall of Slaughter, Noble\'s Causeway, Ruined City of Dranik', },
					['Jagged Noc Tusk'] = { qty = 2, extra = 'Noble\'s Causeway, Ruined City of Dranik', },
				},
			},
			['legs'] = {
				['plate'] = {
					['Dragorn City Ember'] = { qty = 1, extra = 'Wall of Slaughter, Ruined City of Dranik', },
					['Dranik Incense Burner'] = { qty = 3, extra = 'Muramite Proving Grounds, Wall of Slaughter', },
				},
				['chain'] = {
					['Dragorn City Ember'] = { qty = 1, extra = 'Wall of Slaughter, Ruined City of Dranik', },
					['Lock of Hair from a Chimera Mane'] = { qty = 3, extra = 'Wall of Slaughter', },
				},
				['leather'] = {
					['Dragorn City Ember'] = { qty = 1, extra = 'Wall of Slaughter, Ruined City of Dranik', },
					['Dragorn Metal Bowl'] = { qty = 3, extra = 'Wall of Slaughter', },
				},
				['cloth'] = {
					['Dragorn City Ember'] = { qty = 1, extra = 'Wall of Slaughter, Ruined City of Dranik', },
					['Dragorn Muramite Insignia Necklace'] = { qty = 3, extra = 'Harbingers\' Spire, Wall of Slaughter, Ruined City of Dranik, Noble\'s Causeway', },
				},
			},
		},
		-- Raid Tier armor most drops are in the Asylum of Anguish, Muramite Proving Grounds, and Riftseekers' Sanctum
		['Tier2 Armor'] = {
			['hands'] = {
				['plate'] = {
					['Makyah\'s Axe'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Crystal of Yearning'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['chain'] = {
					['Makyah\'s Axe'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Kyv Whetstone'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['leather'] = {
					['Makyah\'s Axe'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Fine Chimera Hide'] = { qty = 2, extra = 'Riftseekers\' Sanctum', },
				},
				['cloth'] = {
					['Makyah\'s Axe'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Kuuan Whetstone'] = { qty = 2, extra = 'Riftseekers\' Sanctum', },
				},
			},
			['head'] = {
				['plate'] = {
					['Patorav\'s Walking Stick'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Kyv Food Sack'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['chain'] = {
					['Patorav\'s Walking Stick'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Kyv Scout Ring'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['leather'] = {
					['Patorav\'s Walking Stick'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Muramite Noble\'s March Award'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['cloth'] = {
					['Patorav\'s Walking Stick'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Bar of Nashtar Berry Soap'] = { qty = 2, extra = 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers\' Sanctum', },
				},
			},
			['chest'] = {
				['plate'] = {
					['Jayruk\'s Vest'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Ceremonial Dragorn Candle'] = { qty = 3, extra = 'Asylum of Anguish, Muramite Proving Grounds', },
				},
				['chain'] = {
					['Jayruk\'s Vest'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Kyv Short Bow'] = { qty = 3, extra = 'Muramite Proving Grounds', },
				},
				['leather'] = {
					['Jayruk\'s Vest'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Bazu Nail Bracelet'] = { qty = 3, extra = 'Asylum of Anguish, Noble\'s Causeway, Muramite Proving Grounds', },
				},
				['cloth'] = {
					['Jayruk\'s Vest'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Piece of Vrenlar Fruit'] = { qty = 3, extra = 'Asylum of Anguish, Muramite Proving Grounds', },
				},
			},
			['feet'] = {
				['plate'] = {
					['Muramite Cruelty Medal'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Kyv Hunter Ring'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['chain'] = {
					['Muramite Cruelty Medal'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Dragorn Muramite Ring'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['leather'] = {
					['Muramite Cruelty Medal'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Chimera Gut String'] = { qty = 2, extra = 'Riftseekers\' Sanctum', },
				},
				['cloth'] = {
					['Muramite Cruelty Medal'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Ikaav Tail'] = { qty = 2, extra = 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers\' Sanctum', },
				},
			},
			['wrists'] = {
				['plate'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Large Piece of Kuuan Ore'] = { qty = 2, extra = 'Asylum of Anguish, Muramite Proving Grounds', },
				},
				['chain'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Withered Discordling Tongue'] = { qty = 2, extra = 'Muramite Proving Grounds, Riftseekers\' Sanctum', },
				},
				['leather'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Quality Feran Hide'] = { qty = 2, extra = 'Riftseekers\' Sanctum', },
				},
				['cloth'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Softened Feran Hide'] = { qty = 2, extra = 'Riftseekers\' Sanctum', },
				},
			},
			['arms'] = {
				['plate'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Noc Right Hand'] = { qty = 2, extra = 'Muramite Proving Grounds', },
				},
				['chain'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Ikaav Head'] = { qty = 2, extra = 'Asylum of Anguish, Muramite Proving Grounds', },
				},
				['leather'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Spiked Discordling Collar'] = { qty = 2, extra = 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers\' Sanctum', },
				},
				['cloth'] = {
					['Riftseeker Heart'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Spool of Balemoon Silk'] = { qty = 2, extra = 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers\' Sanctum', },
				},
			},
			['legs'] = {
				['plate'] = {
					['Patorav\'s Amulet'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Blackened Discordling Tail'] = { qty = 3, extra = 'Muramite Proving Grounds, Riftseekers\' Sanctum', },
				},
				['chain'] = {
					['Patorav\'s Amulet'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Shattered Ukun Hide'] = { qty = 3, extra = 'Muramite Proving Grounds, Noble\'s Causeway', },
				},
				['leather'] = {
					['Patorav\'s Amulet'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Discordling Hoof'] = { qty = 3, extra = 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers\' Sanctum', },
				},
				['cloth'] = {
					['Patorav\'s Amulet'] = { qty = 1, extra = 'Asylum of Anguish', },
					['Softened Feran Hide'] = { qty = 3, extra = 'Riftseekers\' Sanctum', },
				},
			},
		},
	},
	['Dragons of Norrath'] = {},
}

return QuestData
