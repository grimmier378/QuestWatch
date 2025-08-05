BEGIN TRANSACTION;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'J-Boots', 'General', 'feet', 'armor', 'All', 'Gold', 3250, 'Must Be Gold!', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'J-Boots', 'General', 'feet', 'armor', 'All', 'Ring of the Ancients', 1, 'From an Ancient Cyclops', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'J-Boots', 'General', 'feet', 'armor', 'All', 'Shadowed Rapier', 1, 'From a Shadowed Man', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'J-Boots', 'General', 'feet', 'armor', 'All', 'Journeyman''s Boots', 1, 'Reward', 1, 999, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'Rod of Insidious Glamour', 'Temple of Solusek Row', 'primary', 'weapon', 'enc', 'A Shining Stone', 1, 'From a Shadowed Man', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'Rod of Insidious Glamour', 'Temple of Solusek Row', 'primary', 'weapon', 'enc', 'Glamour Stone', 1, 'From handing in A Shining Stone and 50Plat to Cynthia in Rathe Mountains', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'Rod of Insidious Glamour', 'Temple of Solusek Row', 'primary', 'weapon', 'enc', 'Glowing Glamour Stone', 1, 'From giving a Glamour Stone and 50Plat to Tarn Visilin in High Keep', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'Rod of Insidious Glamour', 'Temple of Solusek Row', 'primary', 'weapon', 'enc', 'Golden Rod', 1, 'From  a froglok priest in Upper Guk', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Classic', 'Rod of Insidious Glamour', 'Temple of Solusek Row', 'primary', 'weapon', 'enc', 'Rod of Insidious Glamour', 1, 'Reward from handing in Glowing Glamour Stone and Golden Rod in Temple of Solusek Ro', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Bloodfields Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Discordant Crystal Shard', 3, '', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Bloodfields Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Rolled Discordant Parchment', 1, '', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Bloodfields Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Bloodfields Gate', 1, 'Wiz Self Port', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Bloodfields Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Bloodfields Portal', 1, 'Wiz Group Port', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Bloodfields Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Circle of Bloodfields', 1, 'Druid Group Port', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Bloodfields Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Ring of Bloodfields', 1, 'Druid Self Port', 1, 999, 'dur')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Honor Ladislev ', 'Omens General', 'shoulders', 'armor', 'All', 'Book of Sketches', 1, 'Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Honor Ladislev ', 'Omens General', 'shoulders', 'armor', 'All', 'Ladislev''s Toolbox', 1, 'Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Honor Ladislev ', 'Omens General', 'shoulders', 'armor', 'All', 'Ring of Architectural Mastery', 1, 'Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Honor Ladislev ', 'Omens General', 'shoulders', 'armor', 'All', 'Mantle of the Architect', 1, 'caster priest shoulders', 1, 999, 'clr dru shm nec wiz mag enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Honor Ladislev ', 'Omens General', 'shoulders', 'armor', 'All', 'Pauldrons of the Builder', 1, 'melee hybrid shoulders', 1, 999, 'war pal rng shd mnk brd rog bst ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Recover the Family Crest', 'Omens General', 'neck', 'jewlery', 'All', 'Chain Leash ', 3, '', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Recover the Family Crest', 'Omens General', 'neck', 'jewlery', 'All', 'Large Dragorn Crest', 1, '', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Recover the Family Crest', 'Omens General', 'neck', 'jewlery', 'All', 'Dragorn Crested Amulet', 1, '', 1, 999, 'WAR PAL RNG SHD MNK BRD ROG BST BER')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Recover the Family Crest', 'Omens General', 'neck', 'jewlery', 'All', 'Gold Crested Amulet', 1, '', 1, 999, 'CLR DRU SHM NEC WIZ MAG ENC')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Ikaav', 'Omens General', 'range', 'range', 'All', 'Scrap of Ikaav Skin', 3, '', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Ikaav', 'Omens General', 'range', 'range', 'All', 'Ujani''s Amulet', 1, 'Mistress Ujani', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Ikaav', 'Omens General', 'range', 'range', 'All', 'Ancient Ivory Figurine', 1, '', 1, 999, 'CLR DRU SHM NEC WIZ MAG ENC')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Ikaav', 'Omens General', 'range', 'range', 'All', 'Polished Runestone', 1, '', 1, 999, 'WAR PAL RNG SHD MNK BRD ROG BST BER')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Kyv', 'Omens General', 'finger', 'jewlery', 'all', 'Broken Kyv Bow', 3, '', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Kyv', 'Omens General', 'finger', 'jewlery', 'all', 'Elaborate Gauntlets', 1, 'Bowlord Rorn', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Kyv', 'Omens General', 'finger', 'jewlery', 'all', 'Muramite Glyphed Ring', 1, '', 1, 999, 'CLR DRU SHM NEC WIZ MAG ENC')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Revenge on the Kyv', 'Omens General', 'finger', 'jewlery', 'all', 'Muramite Officer''s Ring', 1, '', 1, 999, 'WAR PAL RNG SHD MNK BRD ROG BST BER')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Boots', 'Tier1 Armor', 'feet', 'armor', 'chain', 'Kuuan Traitor Stones', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Boots', 'Tier1 Armor', 'feet', 'armor', 'chain', 'Muramite Dispatch', 2, 'Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Boots', 'Tier1 Armor', 'feet', 'armor', 'chain', 'Darkraider''s Boots', 1, 'Rogue Boots', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Boots', 'Tier1 Armor', 'feet', 'armor', 'chain', 'Ragebound Chain Boots', 1, 'Berserker Boots', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Boots', 'Tier1 Armor', 'feet', 'armor', 'chain', 'Spiritkin Slippers', 1, 'Shaman Boots', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Boots', 'Tier1 Armor', 'feet', 'armor', 'chain', 'Sunrider''s Boots', 1, 'Ranger BP', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Bracer', 'Tier1 Armor', 'wrists', 'armor', 'chain', 'Dranik Blood Standard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Bracer', 'Tier1 Armor', 'wrists', 'armor', 'chain', 'Shed Ikaav Skin', 2, 'Ruined City of Dranik, Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Bracer', 'Tier1 Armor', 'wrists', 'armor', 'chain', 'Darkraider''s Wristguard', 1, 'Rogue Bracer', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Bracer', 'Tier1 Armor', 'wrists', 'armor', 'chain', 'Ragebound Chain Wristband', 1, 'Berserker Bracer', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Bracer', 'Tier1 Armor', 'wrists', 'armor', 'chain', 'Spiritkin Bracer', 1, 'Shaman Bracer', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Bracer', 'Tier1 Armor', 'wrists', 'armor', 'chain', 'Sunrider''s Wristguard', 1, 'Ranger Bracer', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Coif', 'Tier1 Armor', 'head', 'armor', 'chain', 'Deepshadow Feran Pelt', 2, 'Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Coif', 'Tier1 Armor', 'head', 'armor', 'chain', 'Duskfall Chronicles', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Coif', 'Tier1 Armor', 'head', 'armor', 'chain', 'Darkraider''s Coif', 1, 'Rogue Helm', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Coif', 'Tier1 Armor', 'head', 'armor', 'chain', 'Ragebound Chain Cap', 1, 'Berserker Helm', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Coif', 'Tier1 Armor', 'head', 'armor', 'chain', 'Spiritkin Cap', 1, 'Shaman Helm', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Coif', 'Tier1 Armor', 'head', 'armor', 'chain', 'Sunrider''s Hat', 1, 'Ranger Helm', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Gloves', 'Tier1 Armor', 'hands', 'armor', 'chain', 'Darkshorn Kyv Hood', 2, 'Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Gloves', 'Tier1 Armor', 'hands', 'armor', 'chain', 'Spire Control Shard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Gloves', 'Tier1 Armor', 'hands', 'armor', 'chain', 'Darkraider''s Gloves', 1, 'Rogue Gloves', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Gloves', 'Tier1 Armor', 'hands', 'armor', 'chain', 'Ragebound Chain Mittens', 1, 'Berserker Gloves', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Gloves', 'Tier1 Armor', 'hands', 'armor', 'chain', 'Spiritkin Mittens', 1, 'Shaman Gloves', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Gloves', 'Tier1 Armor', 'hands', 'armor', 'chain', 'Sunrider''s Gloves', 1, 'Ranger Gloves', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Leggings', 'Tier1 Armor', 'legs', 'armor', 'chain', 'Dragorn City Ember', 1, 'Wall of Slaughter, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Leggings', 'Tier1 Armor', 'legs', 'armor', 'chain', 'Lock of Hair from a Chimera Mane', 3, 'Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Leggings', 'Tier1 Armor', 'legs', 'armor', 'chain', 'Darkraider''s Pants', 1, 'Rogue Legs', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Leggings', 'Tier1 Armor', 'legs', 'armor', 'chain', 'Ragebound Chain Legguards', 1, 'Berserker Legs', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Leggings', 'Tier1 Armor', 'legs', 'armor', 'chain', 'Spiritkin Leggings', 1, 'Shaman Legs', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Leggings', 'Tier1 Armor', 'legs', 'armor', 'chain', 'Sunrider''s Pants', 1, 'Ranger Legs', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Sleeves', 'Tier1 Armor', 'arms', 'armor', 'chain', 'Kuuan Lodestone', 2, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Sleeves', 'Tier1 Armor', 'arms', 'armor', 'chain', 'Map of Old Kuua', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Sleeves', 'Tier1 Armor', 'arms', 'armor', 'chain', 'Darkraider''s Sleeves', 1, 'Rogue Arms', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Sleeves', 'Tier1 Armor', 'arms', 'armor', 'chain', 'Ragebound Chain Sleeves', 1, 'Berserker Arms', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Sleeves', 'Tier1 Armor', 'arms', 'armor', 'chain', 'Spiritkin Sleeves', 1, 'Shaman Arms', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Sleeves', 'Tier1 Armor', 'arms', 'armor', 'chain', 'Sunrider''s Sleeves', 1, 'Ranger Arms', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Tunic', 'Tier1 Armor', 'chest', 'armor', 'chain', 'Dragorn Elder Scepter', 1, 'Ruined City of Dranik and Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Tunic', 'Tier1 Armor', 'chest', 'armor', 'chain', 'Ragged Discordling Skin', 3, 'Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Tunic', 'Tier1 Armor', 'chest', 'armor', 'chain', 'Darkraider''s Vest', 1, 'Rogue BP', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Tunic', 'Tier1 Armor', 'chest', 'armor', 'chain', 'Ragebound Chain Chestguard', 1, 'Berserker BP', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Tunic', 'Tier1 Armor', 'chest', 'armor', 'chain', 'Spiritkin Tunic', 1, 'Shaman BP', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Chain Tunic', 'Tier1 Armor', 'chest', 'armor', 'chain', 'Sunrider''s Vest', 1, 'Ranger BP', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Cap', 'Tier1 Armor', 'head', 'armor', 'cloth', 'Duskfall Chronicle', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Cap', 'Tier1 Armor', 'head', 'armor', 'cloth', 'Rugged Murkglider Skin', 2, 'Noble''s Causeway, Ruined City of Dranik, Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Cap', 'Tier1 Armor', 'head', 'armor', 'cloth', 'Charmweaver''s Cap', 1, 'Enchanter Cap', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Cap', 'Tier1 Armor', 'head', 'armor', 'cloth', 'Deathcaller''s Skullcap', 1, 'Necromancer Cap', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Cap', 'Tier1 Armor', 'head', 'armor', 'cloth', 'Runemaster''s Cap', 1, 'Magician Cap', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Cap', 'Tier1 Armor', 'head', 'armor', 'cloth', 'Spelldeviser''s Cloth Hat', 1, 'Wizard Cap', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Gloves', 'Tier1 Armor', 'hands', 'armor', 'cloth', 'Discordling Finger Bone', 2, 'Muramite Proving Grounds, Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Gloves', 'Tier1 Armor', 'hands', 'armor', 'cloth', 'Spire Control Shard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Gloves', 'Tier1 Armor', 'hands', 'armor', 'cloth', 'Charmweaver''s Mittens', 1, 'Enchanter Gloves', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Gloves', 'Tier1 Armor', 'hands', 'armor', 'cloth', 'Deathcaller''s Gloves', 1, 'Necromancer Gloves', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Gloves', 'Tier1 Armor', 'hands', 'armor', 'cloth', 'Runemaster''s Gloves', 1, 'Magician Gloves', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Gloves', 'Tier1 Armor', 'hands', 'armor', 'cloth', 'Spelldeviser''s Cloth Gloves', 1, 'Wizard Gloves', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Pantaloons', 'Tier1 Armor', 'legs', 'armor', 'cloth', 'Dragorn City Ember', 1, 'Wall of Slaughter, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Pantaloons', 'Tier1 Armor', 'legs', 'armor', 'cloth', 'Dragorn Muramite Insignia Necklace', 3, 'Harbingers'' Spire, Wall of Slaughter, Ruined City of Dranik, Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Pantaloons', 'Tier1 Armor', 'legs', 'armor', 'cloth', 'Charmweaver''s Legguards', 1, 'Enchanter Leggings', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Pantaloons', 'Tier1 Armor', 'legs', 'armor', 'cloth', 'Deathcaller''s Pants', 1, 'Necromancer Leggings', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Pantaloons', 'Tier1 Armor', 'legs', 'armor', 'cloth', 'Runemaster''s Pants', 1, 'Magician Leggings', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Pantaloons', 'Tier1 Armor', 'legs', 'armor', 'cloth', 'Spelldeviser''s Cloth Britches', 1, 'Wizard Leggings', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Robe', 'Tier1 Armor', 'chest', 'armor', 'cloth', 'Dragorn Elder Scepter', 1, 'Ruined City of Dranik and Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Robe', 'Tier1 Armor', 'chest', 'armor', 'cloth', 'Kuuan Oil Candle', 3, 'Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Robe', 'Tier1 Armor', 'chest', 'armor', 'cloth', 'Charmweaver''s Robe', 1, 'Enchanter Robe', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Robe', 'Tier1 Armor', 'chest', 'armor', 'cloth', 'Deathcaller''s Robe', 1, 'Necromancer Robe', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Robe', 'Tier1 Armor', 'chest', 'armor', 'cloth', 'Runemaster''s Robe', 1, 'Magician Robe', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Robe', 'Tier1 Armor', 'chest', 'armor', 'cloth', 'Spelldeviser''s Cloth Robe', 1, 'Wizard Robe', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Sleeves', 'Tier1 Armor', 'arms', 'armor', 'cloth', 'Jagged Noc Tusk', 2, 'Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Sleeves', 'Tier1 Armor', 'arms', 'armor', 'cloth', 'Map of Old Kuua', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Sleeves', 'Tier1 Armor', 'arms', 'armor', 'cloth', 'Charmweaver''s Armguards', 1, 'Enchanter Sleeves', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Sleeves', 'Tier1 Armor', 'arms', 'armor', 'cloth', 'Deathcaller''s Armbands', 1, 'Necromancer Sleeves', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Sleeves', 'Tier1 Armor', 'arms', 'armor', 'cloth', 'Runemaster''s Sleeves', 1, 'Magician Sleeves', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Sleeves', 'Tier1 Armor', 'arms', 'armor', 'cloth', 'Spelldeviser''s Cloth Sleeves', 1, 'Wizard Sleeves', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Slippers', 'Tier1 Armor', 'feet', 'armor', 'cloth', 'Ikaav Braid', 2, 'Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Slippers', 'Tier1 Armor', 'feet', 'armor', 'cloth', 'Kuuan Traitor Stones', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Slippers', 'Tier1 Armor', 'feet', 'armor', 'cloth', 'Charmweaver''s Slippers', 1, 'Enchanter Boots', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Slippers', 'Tier1 Armor', 'feet', 'armor', 'cloth', 'Deathcaller''s Slippers', 1, 'Necromancer Boots', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Slippers', 'Tier1 Armor', 'feet', 'armor', 'cloth', 'Runemaster''s Boots', 1, 'Magician Boots', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Slippers', 'Tier1 Armor', 'feet', 'armor', 'cloth', 'Spelldeviser''s Cloth Shoes', 1, 'Wizard Boots', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Wristband', 'Tier1 Armor', 'wrists', 'armor', 'cloth', 'Dranik Blood Standard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Wristband', 'Tier1 Armor', 'wrists', 'armor', 'cloth', 'Hooked Chimera Claw', 2, 'Riftseekers'' Sanctum, Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Wristband', 'Tier1 Armor', 'wrists', 'armor', 'cloth', 'Charmweaver''s Bracer', 1, 'Enchanter Bracer', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Wristband', 'Tier1 Armor', 'wrists', 'armor', 'cloth', 'Deathcaller''s Wristband', 1, 'Necromancer Bracer', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Wristband', 'Tier1 Armor', 'wrists', 'armor', 'cloth', 'Runemaster''s Bracer', 1, 'Magician Bracer', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Wristband', 'Tier1 Armor', 'wrists', 'armor', 'cloth', 'Spelldeviser''s Cloth Wristband', 1, 'Wizard Bracer', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Boots', 'Tier1 Armor', 'feet', 'armor', 'leather', 'Kuuan Traitor Stones', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Boots', 'Tier1 Armor', 'feet', 'armor', 'leather', 'Muramite Dragorn Slaver Whip', 2, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Boots', 'Tier1 Armor', 'feet', 'armor', 'leather', 'Beast Tamer''s Boots', 1, 'Beastlord Boots', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Boots', 'Tier1 Armor', 'feet', 'armor', 'leather', 'Greenvale Slippers', 1, 'Druid Boots', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Boots', 'Tier1 Armor', 'feet', 'armor', 'leather', 'Stillmind Sandals', 1, 'Monk Boots', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Bracer', 'Tier1 Armor', 'wrists', 'armor', 'leather', 'Dansk Branch', 2, 'Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Bracer', 'Tier1 Armor', 'wrists', 'armor', 'leather', 'Dranik Blood Standard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Bracer', 'Tier1 Armor', 'wrists', 'armor', 'leather', 'Beast Tamer''s Wristguard', 1, 'BL', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Bracer', 'Tier1 Armor', 'wrists', 'armor', 'leather', 'Greenvale Wristband', 1, 'Druid Bracer', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Bracer', 'Tier1 Armor', 'wrists', 'armor', 'leather', 'Stillmind Wristband', 1, 'Monk Bracer', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Cap', 'Tier1 Armor', 'head', 'armor', 'leather', 'Duskfall Chronicles', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Cap', 'Tier1 Armor', 'head', 'armor', 'leather', 'Muramite Ritual Scroll', 2, 'Wall of Slaughter, Bloodfields', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Cap', 'Tier1 Armor', 'head', 'armor', 'leather', 'Beast Tamer''s Hat', 1, 'BL', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Cap', 'Tier1 Armor', 'head', 'armor', 'leather', 'Greenvale Cap', 1, 'Druid Helm', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Cap', 'Tier1 Armor', 'head', 'armor', 'leather', 'Stillmind Cap', 1, 'Monk Helm', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Gloves', 'Tier1 Armor', 'hands', 'armor', 'leather', 'Glistening Murkglider Pelt', 2, 'The Ruined City of Dranik and the Wall of Slaughter.', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Gloves', 'Tier1 Armor', 'hands', 'armor', 'leather', 'Spire Control Shard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Gloves', 'Tier1 Armor', 'hands', 'armor', 'leather', 'Beast Tamer''s Gloves', 1, 'BL', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Gloves', 'Tier1 Armor', 'hands', 'armor', 'leather', 'Greenvale Gauntlets', 1, 'Druid Gloves', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Gloves', 'Tier1 Armor', 'hands', 'armor', 'leather', 'Stillmind Fistguards', 1, 'Monk Gloves', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Leggings', 'Tier1 Armor', 'legs', 'armor', 'leather', 'Dragorn City Ember', 1, 'Wall of Slaughter, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Leggings', 'Tier1 Armor', 'legs', 'armor', 'leather', 'Dragorn Metal Bowl', 3, 'Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Leggings', 'Tier1 Armor', 'legs', 'armor', 'leather', 'Beast Tamer''s Pants', 1, 'BL', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Leggings', 'Tier1 Armor', 'legs', 'armor', 'leather', 'Greenvale Leggings', 1, 'Druid Leggings', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Leggings', 'Tier1 Armor', 'legs', 'armor', 'leather', 'Stillmind Leggings', 1, 'Monk Leggings', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Sleeves', 'Tier1 Armor', 'arms', 'armor', 'leather', 'Dansk Blossoms', 2, 'Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Sleeves', 'Tier1 Armor', 'arms', 'armor', 'leather', 'Map of Old Kuua', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Sleeves', 'Tier1 Armor', 'arms', 'armor', 'leather', 'Beast Tamer''s Sleeves', 1, 'BL', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Sleeves', 'Tier1 Armor', 'arms', 'armor', 'leather', 'Greenvale Armguards', 1, 'Druid Sleeves', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Sleeves', 'Tier1 Armor', 'arms', 'armor', 'leather', 'Stillmind Armguards', 1, 'Monk Sleeves', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Tunic', 'Tier1 Armor', 'chest', 'armor', 'leather', 'Dragorn Elder Scepter', 1, 'Ruined City of Dranik and Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Tunic', 'Tier1 Armor', 'chest', 'armor', 'leather', 'Tattered Chimera Pelt', 3, 'Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Tunic', 'Tier1 Armor', 'chest', 'armor', 'leather', 'Beast Tamer''s Jerkin', 1, 'BL', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Tunic', 'Tier1 Armor', 'chest', 'armor', 'leather', 'Greenvale Jerkin', 1, 'Druid BP', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Tunic', 'Tier1 Armor', 'chest', 'armor', 'leather', 'Stillmind Tunic', 1, 'Monk BP', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Kuuan Traitor Stones', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Kyv Bowstring', 2, 'Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Armsmaster''s Boots', 1, 'Warrior Boots', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Heartstiller''s Mail Boots', 1, 'Shadow Knight Boots', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Oathbound Boots', 1, 'Paladin Boots', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Sanctified Footwear', 1, 'Cleric Boots', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Traveler''s Mail Boot', 1, 'Bard Boots', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Ashlock Branch', 2, 'Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Dranik Blood Standard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Armsmaster''s Bracer', 1, 'Warrior Bracer', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Heartstiller''s Mail Wristguard', 1, 'Shadow Knight Bracer', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Oathbound Bracer', 1, 'Paladin Bracer', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Sanctified Wristguard', 1, 'Cleric Bracer', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Traveler''s Mail Wristband', 1, 'Bard Bracer', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Dragorn Elder Scepter', 1, 'Ruined City of Dranik and Wall of Slaughter', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Shorn Murkglider Tentacle', 3, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Armsmaster''s Breastplate', 1, 'Warrior BP', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Heartstiller''s Mail Chestguard', 1, 'Shadow Knight BP', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Oathbound Breastplate', 1, 'Paladin BP', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Sanctified Chestguard', 1, 'Cleric BP', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Traveler''s Mail Chestguard', 1, 'Bard BP', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Discordling Message Satchel', 2, 'Wall of Slaughter, Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Spire Control Shard', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Armsmaster''s Gloves', 1, 'Warrior Gloves', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Heartstiller''s Mail Gloves', 1, 'Shadow Knight Gloves', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Oathbound Gauntlets', 1, 'Paladin Gloves', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Sanctified Gloves', 1, 'Cleric Gloves', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Traveler''s Mail Gloves', 1, 'Bard Gloves', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Bristling Ukun Hide', 2, 'Ruined City of Dranik, Wall of Slaughter', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Duskfall Chronicles', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Armsmaster''s Helm', 1, 'Warrior Helm', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Heartstiller''s Mail Helm', 1, 'Shadow Knight Helm', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Oathbound Helm', 1, 'Paladin Helm', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Sanctified Headdress', 1, 'Cleric Helm', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Traveler''s Mail Cap', 1, 'Bard Helm', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Dragorn City Ember', 1, 'Wall of Slaughter, Ruined City of Dranik', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Dranik Incense Burner', 3, 'Muramite Proving Grounds, Wall of Slaughter', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Armsmaster''s Leggings', 1, 'Warrior Leggings', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Heartstiller''s Mail Leggings', 1, 'Shadow Knight Leggings', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Oathbound Legguards', 1, 'Paladin Leggings', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Sanctified Leggings', 1, 'Cleric Leggings', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Traveler''s Mail Legguards', 1, 'Bard Leggings', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Map of Old Kuua', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Ukun Quill', 2, 'Ruined City of Dranik, Wall of Slaughter', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Armsmaster''s Sleeves', 1, 'Warrior Sleeves', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Heartstiller''s Mail Sleeves', 1, 'Shadow Knight Sleeves', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Oathbound Armguards', 1, 'Paladin Sleeves', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Sanctified Sleeves', 1, 'Cleric Sleeves', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Traveler''s Mail Sleeves', 1, 'Bard Sleeves', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Boots', 'Tier2 Armor', 'feet', 'armor', 'chain', 'Dragorn Muramite Ring', 2, 'Muramite Proving Grounds', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Boots', 'Tier2 Armor', 'feet', 'armor', 'chain', 'Muramite Cruelty Medal', 1, 'Asylum of Anguish', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Boots', 'Tier2 Armor', 'feet', 'armor', 'chain', 'Bladewhisper Chain Boots of Journeys', 1, 'Ranger Boots', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Boots', 'Tier2 Armor', 'feet', 'armor', 'chain', 'Ritualchanter''s Boots of the Ancestors', 1, 'Shaman Boots', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Boots', 'Tier2 Armor', 'feet', 'armor', 'chain', 'Whispering Boots of Sorrows', 1, 'Rogue Boots', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Boots', 'Tier2 Armor', 'feet', 'armor', 'chain', 'Wraithbringer''s Chain Boots of the Vindicator', 1, 'Berserker Boots', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Bracer', 'Tier2 Armor', 'wrists', 'armor', 'chain', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Bracer', 'Tier2 Armor', 'wrists', 'armor', 'chain', 'Withered Discordling Tongue', 2, 'Muramite Proving Grounds, Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Bracer', 'Tier2 Armor', 'wrists', 'armor', 'chain', 'Bladewhisper Chain Wristguard of Journeys', 1, 'Ranger Bracer', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Bracer', 'Tier2 Armor', 'wrists', 'armor', 'chain', 'Ritualchanter''s Wristband of the Ancestors', 1, 'Shaman Bracer', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Bracer', 'Tier2 Armor', 'wrists', 'armor', 'chain', 'Whispering Bracer of Sorrows', 1, 'Rogue Bracer', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Bracer', 'Tier2 Armor', 'wrists', 'armor', 'chain', 'Wraithbringer''s Chain Wristguard of the Vindicator', 1, 'Berserker Bracer', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Coif', 'Tier2 Armor', 'head', 'armor', 'chain', 'Kyv Scout Ring', 2, 'Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Coif', 'Tier2 Armor', 'head', 'armor', 'chain', 'Patorav''s Walking Stick', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Coif', 'Tier2 Armor', 'head', 'armor', 'chain', 'Bladewhisper Chain Cap of Journeys', 1, 'Ranger Helm', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Coif', 'Tier2 Armor', 'head', 'armor', 'chain', 'Ritualchanter''s Cap of the Ancestors', 1, 'Shaman Helm', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Coif', 'Tier2 Armor', 'head', 'armor', 'chain', 'Whispering Hat of Sorrows', 1, 'Rogue Helm', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Coif', 'Tier2 Armor', 'head', 'armor', 'chain', 'Wraithbringer''s Chain Helm of the Vindicator', 1, 'Berserker Helm', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Gloves', 'Tier2 Armor', 'hands', 'armor', 'chain', 'Kyv Whetstone', 2, 'Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Gloves', 'Tier2 Armor', 'hands', 'armor', 'chain', 'Makyah''s Axe', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Gloves', 'Tier2 Armor', 'hands', 'armor', 'chain', 'Bladewhisper Chain Gloves of Journeys', 1, 'Ranger Gloves', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Gloves', 'Tier2 Armor', 'hands', 'armor', 'chain', 'Ritualchanter''s Mitts of the Ancestors', 1, 'Shaman Gloves', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Gloves', 'Tier2 Armor', 'hands', 'armor', 'chain', 'Whispering Gloves of Sorrows', 1, 'Rogue Gloves', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Gloves', 'Tier2 Armor', 'hands', 'armor', 'chain', 'Wraithbringer''s Chain Gloves of the Vindicator', 1, 'Berserker Gloves', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Legs', 'Tier2 Armor', 'legs', 'armor', 'chain', 'Patorav''s Amulet', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Legs', 'Tier2 Armor', 'legs', 'armor', 'chain', 'Shattered Ukun Hide', 3, 'Muramite Proving Grounds, Noble''s Causeway', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Legs', 'Tier2 Armor', 'legs', 'armor', 'chain', 'Bladewhisper Chain Legguards of Journeys', 1, 'Ranger Leggings', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Legs', 'Tier2 Armor', 'legs', 'armor', 'chain', 'Ritualchanter''s Leggings of the Ancestors', 1, 'Shaman Leggings', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Legs', 'Tier2 Armor', 'legs', 'armor', 'chain', 'Whispering Pants of Sorrows', 1, 'Rogue Leggings', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Legs', 'Tier2 Armor', 'legs', 'armor', 'chain', 'Wraithbringer''s Chain Leggings of the Vindicator', 1, 'Berserker Leggings', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Sleeves', 'Tier2 Armor', 'arms', 'armor', 'chain', 'Ikaav Head', 2, 'Asylum of Anguish, Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Sleeves', 'Tier2 Armor', 'arms', 'armor', 'chain', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Sleeves', 'Tier2 Armor', 'arms', 'armor', 'chain', 'Bladewhisper Chain Sleeves of Journeys', 1, 'Ranger Sleeves', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Sleeves', 'Tier2 Armor', 'arms', 'armor', 'chain', 'Ritualchanter''s Armguards of the Ancestors', 1, 'Shaman Sleeves', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Sleeves', 'Tier2 Armor', 'arms', 'armor', 'chain', 'Whispering Armguard of Sorrows', 1, 'Rogue Sleeves', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Sleeves', 'Tier2 Armor', 'arms', 'armor', 'chain', 'Wraithbringer''s Chain Sleeves of the Vindicator', 1, 'Berserker Sleeves', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Tunic', 'Tier2 Armor', 'chest', 'armor', 'chain', 'Jayruk''s Vest', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Tunic', 'Tier2 Armor', 'chest', 'armor', 'chain', 'Kyv Short Bow', 3, 'Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Tunic', 'Tier2 Armor', 'chest', 'armor', 'chain', 'Bladewhisper Chain Vast of Journeys', 1, 'Ranger BP', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Tunic', 'Tier2 Armor', 'chest', 'armor', 'chain', 'Ritualchanter''s Tunic of the Ancestors', 1, 'Shaman BP', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Tunic', 'Tier2 Armor', 'chest', 'armor', 'chain', 'Whispering Tunic of Sorrows', 1, 'Rogue BP', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Chain Tunic', 'Tier2 Armor', 'chest', 'armor', 'chain', 'Wraithbringer''s Chain Chestguard of the Vindicator', 1, 'Berserker BP', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Cap', 'Tier2 Armor', 'head', 'armor', 'cloth', 'Bar of Nashtar Berry Soap', 2, 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Cap', 'Tier2 Armor', 'head', 'armor', 'cloth', 'Patorav''s Walking Stick', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Cap', 'Tier2 Armor', 'head', 'armor', 'cloth', 'Academic''s Cap of the Arcanists', 1, 'Wizard Cap', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Cap', 'Tier2 Armor', 'head', 'armor', 'cloth', 'Blightbringer''s Cap of the Grave', 1, 'Necromancer Cap', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Cap', 'Tier2 Armor', 'head', 'armor', 'cloth', 'Glyphwielder''s Hat of the Summoner', 1, 'Magician Cap', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Cap', 'Tier2 Armor', 'head', 'armor', 'cloth', 'Mindereaver''s Skullcap of Coercion', 1, 'Enchanter Cap', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Gloves', 'Tier2 Armor', 'hands', 'armor', 'cloth', 'Kuuan Whetstone', 2, 'Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Gloves', 'Tier2 Armor', 'hands', 'armor', 'cloth', 'Makyah''s Axe', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Gloves', 'Tier2 Armor', 'hands', 'armor', 'cloth', 'Academic''s Gloves of the Arcanists', 1, 'Wizard Gloves', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Gloves', 'Tier2 Armor', 'hands', 'armor', 'cloth', 'Blightbringer''s Handguards of the Grave', 1, 'Necromancer Gloves', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Gloves', 'Tier2 Armor', 'hands', 'armor', 'cloth', 'Glyphwielder''s Gloves of the Summoner', 1, 'Magician Gloves', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Gloves', 'Tier2 Armor', 'hands', 'armor', 'cloth', 'Mindereaver''s Handguards of Coercion', 1, 'Enchanter Gloves', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Legs', 'Tier2 Armor', 'legs', 'armor', 'cloth', 'Patorav''s Amulet', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Legs', 'Tier2 Armor', 'legs', 'armor', 'cloth', 'Softened Feran Hide', 3, 'Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Legs', 'Tier2 Armor', 'legs', 'armor', 'cloth', 'Academic''s Pants of the Arcanists', 1, 'Wizard Leggings', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Legs', 'Tier2 Armor', 'legs', 'armor', 'cloth', 'Blightbringer''s Pants of the Grave', 1, 'Necromancer Leggings', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Legs', 'Tier2 Armor', 'legs', 'armor', 'cloth', 'Glyphwielder''s Leggings of the Summoner', 1, 'Magician Leggings', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Legs', 'Tier2 Armor', 'legs', 'armor', 'cloth', 'Mindereaver''s Leggings of Coercion', 1, 'Enchanter Leggings', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Robe', 'Tier2 Armor', 'chest', 'armor', 'cloth', 'Jayruk''s Vest', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Robe', 'Tier2 Armor', 'chest', 'armor', 'cloth', 'Piece of Vrenlar Fruit', 3, 'Asylum of Anguish, Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Robe', 'Tier2 Armor', 'chest', 'armor', 'cloth', 'Academic''s Robe of the Arcanists', 1, 'Wizard Robe', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Robe', 'Tier2 Armor', 'chest', 'armor', 'cloth', 'Blightbringer''s Tunic of the Grave', 1, 'Necromancer Robe', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Robe', 'Tier2 Armor', 'chest', 'armor', 'cloth', 'Glyphwielder''s Tunic of the Summoner', 1, 'Magician Robe', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Robe', 'Tier2 Armor', 'chest', 'armor', 'cloth', 'Mindereaver''s Vest of Coercion', 1, 'Enchanter Robe', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Sleeves', 'Tier2 Armor', 'arms', 'armor', 'cloth', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Sleeves', 'Tier2 Armor', 'arms', 'armor', 'cloth', 'Spool of Balemoon Silk', 2, 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Sleeves', 'Tier2 Armor', 'arms', 'armor', 'cloth', 'Academic''s Sleeves of the Arcanists', 1, 'Wizard Sleeves', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Sleeves', 'Tier2 Armor', 'arms', 'armor', 'cloth', 'Blightbringer''s Armband of the Grave', 1, 'Necromancer Sleeves', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Sleeves', 'Tier2 Armor', 'arms', 'armor', 'cloth', 'Glyphwielder''s Sleeves of the Summoner', 1, 'Magician Sleeves', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Sleeves', 'Tier2 Armor', 'arms', 'armor', 'cloth', 'Mindereaver''s Convictionof Coercion', 1, 'Enchanter Sleeves', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Slippers', 'Tier2 Armor', 'feet', 'armor', 'cloth', 'Ikaav Tail', 2, 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Slippers', 'Tier2 Armor', 'feet', 'armor', 'cloth', 'Muramite Cruelty Medal', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Slippers', 'Tier2 Armor', 'feet', 'armor', 'cloth', 'Academic''s Slippers of the Arcanists', 1, 'Wizard Boots', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Slippers', 'Tier2 Armor', 'feet', 'armor', 'cloth', 'Blightbringer''s Sandals of the Grave', 1, 'Necromancer Boots', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Slippers', 'Tier2 Armor', 'feet', 'armor', 'cloth', 'Glyphwielder''s Slippers of the Summoner', 1, 'Magician Boots', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Slippers', 'Tier2 Armor', 'feet', 'armor', 'cloth', 'Mindereaver''s Shoes of Coercion', 1, 'Enchanter Boots', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Wristband', 'Tier2 Armor', 'wrists', 'armor', 'cloth', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Wristband', 'Tier2 Armor', 'wrists', 'armor', 'cloth', 'Softened Feran Hide', 2, 'Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Wristband', 'Tier2 Armor', 'wrists', 'armor', 'cloth', 'Academic''s Wristband of the Arcanists', 1, 'Wizard Bracer', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Wristband', 'Tier2 Armor', 'wrists', 'armor', 'cloth', 'Blightbringer''s Bracer of the Grave', 1, 'Necromancer Bracer', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Wristband', 'Tier2 Armor', 'wrists', 'armor', 'cloth', 'Glyphwielder''s Wristband of the Summoner', 1, 'Magician Bracer', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Cloth Wristband', 'Tier2 Armor', 'wrists', 'armor', 'cloth', 'Mindereaver''s Bracer of Coercion', 1, 'Enchanter Bracer', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Boots', 'Tier2 Armor', 'feet', 'armor', 'leather', 'Chimera Gut String', 2, 'Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Boots', 'Tier2 Armor', 'feet', 'armor', 'leather', 'Muramite Cruelty Medal', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Boots', 'Tier2 Armor', 'feet', 'armor', 'leather', 'Everspring Slippers of the Tangled Briars', 1, 'Druid Boots', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Boots', 'Tier2 Armor', 'feet', 'armor', 'leather', 'Fiercehand Tabis of the Focused', 1, 'Monk Boots', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Boots', 'Tier2 Armor', 'feet', 'armor', 'leather', 'Savagesoul Sandals of the Wilds', 1, 'Beastlord Boots', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Bracer', 'Tier2 Armor', 'wrists', 'armor', 'leather', 'Quality Feran Hide', 2, 'Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Bracer', 'Tier2 Armor', 'wrists', 'armor', 'leather', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Bracer', 'Tier2 Armor', 'wrists', 'armor', 'leather', 'Everspring Wristband of the Tangled Briars', 1, 'Druid Bracer', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Bracer', 'Tier2 Armor', 'wrists', 'armor', 'leather', 'Fiercehand Wristband of the Focused', 1, 'Monk Bracer', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Bracer', 'Tier2 Armor', 'wrists', 'armor', 'leather', 'Savagesoul Wristband of the Wilds', 1, 'Beastlord Bracer', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Cap', 'Tier2 Armor', 'head', 'armor', 'leather', 'Muramite Noble''s March Award', 2, 'Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Cap', 'Tier2 Armor', 'head', 'armor', 'leather', 'Patorav''s Walking Stick', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Cap', 'Tier2 Armor', 'head', 'armor', 'leather', 'Everspring Cap of the Tangled Briars', 1, 'Druid Helm', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Cap', 'Tier2 Armor', 'head', 'armor', 'leather', 'Fiercehand Cap of the Focused', 1, 'Monk Helm', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Cap', 'Tier2 Armor', 'head', 'armor', 'leather', 'Savagesoul Cap of the Wilds', 1, 'Beastlord Helm', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Gloves', 'Tier2 Armor', 'hands', 'armor', 'leather', 'Fine Chimera Hide', 2, 'Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Gloves', 'Tier2 Armor', 'hands', 'armor', 'leather', 'Makyah''s Axe', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Gloves', 'Tier2 Armor', 'hands', 'armor', 'leather', 'Everspring Mitts of the Tangled Briars', 1, 'Druid Gloves', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Gloves', 'Tier2 Armor', 'hands', 'armor', 'leather', 'Fiercehand Gloves of the Focused', 1, 'Monk Gloves', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Gloves', 'Tier2 Armor', 'hands', 'armor', 'leather', 'Savagesoul Gloves of the Wilds', 1, 'Beastlord Gloves', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Legs', 'Tier2 Armor', 'legs', 'armor', 'leather', 'Discordling Hoof', 3, 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Legs', 'Tier2 Armor', 'legs', 'armor', 'leather', 'Patorav''s Amulet', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Legs', 'Tier2 Armor', 'legs', 'armor', 'leather', 'Everspring Pants of the Tangled Briars', 1, 'Druid Leggings', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Legs', 'Tier2 Armor', 'legs', 'armor', 'leather', 'Fiercehand Leggings of the Focused', 1, 'Monk Leggings', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Legs', 'Tier2 Armor', 'legs', 'armor', 'leather', 'Savagesoul Leggings of the Wilds', 1, 'Beastlord Leggings', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Sleeves', 'Tier2 Armor', 'arms', 'armor', 'leather', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Sleeves', 'Tier2 Armor', 'arms', 'armor', 'leather', 'Spiked Discordling Collar', 2, 'Asylum of Anguish, Muramite Proving Grounds, Riftseekers'' Sanctum', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Sleeves', 'Tier2 Armor', 'arms', 'armor', 'leather', 'Everspring Sleeves of the Tangled Briars', 1, 'Druid Sleeves', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Sleeves', 'Tier2 Armor', 'arms', 'armor', 'leather', 'Fiercehand Sleeves of the Focused', 1, 'Monk Sleeves', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Sleeves', 'Tier2 Armor', 'arms', 'armor', 'leather', 'Savagesoul Sleeves of the Wilds', 1, 'Beastlord Sleeves', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Tunic', 'Tier2 Armor', 'chest', 'armor', 'leather', 'Bazu Nail Bracelet', 3, 'Asylum of Anguish, Noble''s Causeway, Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Tunic', 'Tier2 Armor', 'chest', 'armor', 'leather', 'Jayruk''s Vest', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Tunic', 'Tier2 Armor', 'chest', 'armor', 'leather', 'Everspring Jerkin of the Tangled Briars', 1, 'Druid BP', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Tunic', 'Tier2 Armor', 'chest', 'armor', 'leather', 'Fiercehand Shroud of the Focused', 1, 'Monk BP', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Leather Tunic', 'Tier2 Armor', 'chest', 'armor', 'leather', 'Savagesoul Jerkin of the Wilds', 1, 'Beastlord BP', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Boots', 'Tier2 Armor', 'feet', 'armor', 'plate', 'Kyv Hunter Ring', 2, 'Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Boots', 'Tier2 Armor', 'feet', 'armor', 'plate', 'Muramite Cruelty Medal', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Boots', 'Tier2 Armor', 'feet', 'armor', 'plate', 'Dawnseeker''s Boots of the Defender', 1, 'Paladin Boots', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Boots', 'Tier2 Armor', 'feet', 'armor', 'plate', 'Duskbringer''s Boots of the Hateful', 1, 'Shadow Knight Boots', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Boots', 'Tier2 Armor', 'feet', 'armor', 'plate', 'Faithbringer''s Boots of Conviction', 1, 'Cleric Boots', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Boots', 'Tier2 Armor', 'feet', 'armor', 'plate', 'Farseeker''s Boots of Harmony', 1, 'Bard Boots', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Boots', 'Tier2 Armor', 'feet', 'armor', 'plate', 'Gladiator''s Plate Boots of War', 1, 'Warrior Boots', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Bracer', 'Tier2 Armor', 'wrists', 'armor', 'plate', 'Large Piece of Kuuan Ore', 2, 'Asylum of Anguish, Muramite Proving Grounds', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Bracer', 'Tier2 Armor', 'wrists', 'armor', 'plate', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Bracer', 'Tier2 Armor', 'wrists', 'armor', 'plate', 'Dawnseeker''s Wristguard of the Defender', 1, 'Paladin Bracer', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Bracer', 'Tier2 Armor', 'wrists', 'armor', 'plate', 'Duskbringer''s Wristguard of the Hateful', 1, 'Shadow Knight Bracer', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Bracer', 'Tier2 Armor', 'wrists', 'armor', 'plate', 'Faithbringer''s Wristband of Conviction', 1, 'Cleric Bracer', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Bracer', 'Tier2 Armor', 'wrists', 'armor', 'plate', 'Farseeker''s Wristguard of Harmony', 1, 'Bard Bracer', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Bracer', 'Tier2 Armor', 'wrists', 'armor', 'plate', 'Gladiator''s Plate Bracer of War', 1, 'Warrior Bracer', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Breastplate', 'Tier2 Armor', 'chest', 'armor', 'plate', 'Ceremonial Dragorn Candle', 3, 'Asylum of Anguish, Muramite Proving Grounds', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Breastplate', 'Tier2 Armor', 'chest', 'armor', 'plate', 'Jayruk''s Vest', 1, 'Asylum of Anguish', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Breastplate', 'Tier2 Armor', 'chest', 'armor', 'plate', 'Dawnseeker''s Chestguard of the Defender', 1, 'Paladin BP', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Breastplate', 'Tier2 Armor', 'chest', 'armor', 'plate', 'Duskbringer''s Chestguard of the Hateful', 1, 'Shadow Knight BP', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Breastplate', 'Tier2 Armor', 'chest', 'armor', 'plate', 'Faithbringer''s Breastplate of Conviction', 1, 'Cleric BP', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Breastplate', 'Tier2 Armor', 'chest', 'armor', 'plate', 'Farseeker''s Chestguard of Harmony', 1, 'Bard BP', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Breastplate', 'Tier2 Armor', 'chest', 'armor', 'plate', 'Gladiator''s Plate Chestguard of War', 1, 'Warrior BP', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Gauntlets', 'Tier2 Armor', 'hands', 'armor', 'plate', 'Crystal of Yearning', 2, 'Muramite Proving Grounds', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Gauntlets', 'Tier2 Armor', 'hands', 'armor', 'plate', 'Makyah''s Axe', 1, 'Asylum of Anguish', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Gauntlets', 'Tier2 Armor', 'hands', 'armor', 'plate', 'Dawnseeker''s Mitts of the Defender', 1, 'Paladin Gloves', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Gauntlets', 'Tier2 Armor', 'hands', 'armor', 'plate', 'Duskbringer''s Gloves of the Hateful', 1, 'Shadow Knight Gloves', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Gauntlets', 'Tier2 Armor', 'hands', 'armor', 'plate', 'Faithbringer''s Gloves of Conviction', 1, 'Cleric Gloves', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Gauntlets', 'Tier2 Armor', 'hands', 'armor', 'plate', 'Farseeker''s Gloves of Harmony', 1, 'Bard Gloves', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Gauntlets', 'Tier2 Armor', 'hands', 'armor', 'plate', 'Gladiator''s Plate Gloves of War', 1, 'Warrior Gloves', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Helmet', 'Tier2 Armor', 'head', 'armor', 'plate', 'Kyv Food Sack', 2, 'Muramite Proving Grounds', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Helmet', 'Tier2 Armor', 'head', 'armor', 'plate', 'Patorav''s Walking Stick', 1, 'Asylum of Anguish', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Helmet', 'Tier2 Armor', 'head', 'armor', 'plate', 'Dawnseeker''s Coif of the Defender', 1, 'Paladin Helm', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Helmet', 'Tier2 Armor', 'head', 'armor', 'plate', 'Duskbringer''s Helm of the Hateful', 1, 'Shadow Knight Helm', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Helmet', 'Tier2 Armor', 'head', 'armor', 'plate', 'Faithbringer''s Cap of Conviction', 1, 'Cleric Helm', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Helmet', 'Tier2 Armor', 'head', 'armor', 'plate', 'Farseeker''s Helm of Harmony', 1, 'Bard Helm', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Helmet', 'Tier2 Armor', 'head', 'armor', 'plate', 'Gladiator''s Plate Helm of War', 1, 'Warrior Helm', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Legs', 'Tier2 Armor', 'legs', 'armor', 'plate', 'Blackened Discordling Tail', 3, 'Muramite Proving Grounds, Riftseekers'' Sanctum', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Legs', 'Tier2 Armor', 'legs', 'armor', 'plate', 'Patorav''s Amulet', 1, 'Asylum of Anguish', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Legs', 'Tier2 Armor', 'legs', 'armor', 'plate', 'Dawnseeker''s Leggings of the Defender', 1, 'Paladin Leggings', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Legs', 'Tier2 Armor', 'legs', 'armor', 'plate', 'Duskbringer''s Legguards of the Hateful', 1, 'Shadow Knight Leggings', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Legs', 'Tier2 Armor', 'legs', 'armor', 'plate', 'Faithbringer''s Leggings of Conviction', 1, 'Cleric Leggings', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Legs', 'Tier2 Armor', 'legs', 'armor', 'plate', 'Farseeker''s Legguards of Harmony', 1, 'Bard Leggings', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Legs', 'Tier2 Armor', 'legs', 'armor', 'plate', 'Gladiator''s Plate Legguards of War', 1, 'Warrior Leggings', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Vambraces', 'Tier2 Armor', 'arms', 'armor', 'plate', 'Noc Right Hand', 2, 'Muramite Proving Grounds', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Vambraces', 'Tier2 Armor', 'arms', 'armor', 'plate', 'Riftseeker Heart', 1, 'Asylum of Anguish', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Vambraces', 'Tier2 Armor', 'arms', 'armor', 'plate', 'Dawnseeker''s Sleeves of the Defender', 1, 'Paladin Sleeves', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Vambraces', 'Tier2 Armor', 'arms', 'armor', 'plate', 'Duskbringer''s Armguards of the Hateful', 1, 'Shadow Knight Sleeves', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Vambraces', 'Tier2 Armor', 'arms', 'armor', 'plate', 'Faithbringer''s Armguards of Conviction', 1, 'Cleric Sleeves', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Vambraces', 'Tier2 Armor', 'arms', 'armor', 'plate', 'Farseeker''s Armbands of Harmony', 1, 'Bard Sleeves', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T2 Plate Vambraces', 'Tier2 Armor', 'arms', 'armor', 'plate', 'Gladiator''s Plate Sleeves of War', 1, 'Warrior Sleeves', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Wall of Slaughter Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Dark Enchanted Scroll', 1, '', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Wall of Slaughter Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Pure Discordant Blood', 3, '', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Wall of Slaughter Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Circle of Slaughter', 1, 'Druid Group Port', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Wall of Slaughter Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Ring of Slaughter', 1, 'Druid Self Port', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Wall of Slaughter Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Slaughter Gate', 1, 'Wiz Self Port', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Wall of Slaughter Ports', 'Spells', 'spell', 'spell', 'wiz dru', 'Spell: Slaughter Portal', 1, 'Wiz Group Port', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Acrylia Gilded Box', 1, '4 slot Container From handing in Jagged Claw of Rending x2', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Black Silk Sack', 1, '6 slot bag from handing in Seal, spawns 6 npc on nearby isle to kill', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Carved Wooden Chest', 1, '6 slot container for combine', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Chunk of Dense Fungal Padding', 1, 'The Deep', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Copper Medal of War', 1, 'Grimling Forest', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Draz Nurakk''s Head', 1, 'Fungus Grove Draz Spawns after handing in the Khati Sha Seal of War', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Gem of the Void', 2, 'Maiden’s Eye', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Jagged Claw of Rending', 2, 'From handing in the Sealed Collection Box in Shar Vahl', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Khati Sha Seal of War', 1, 'From handing in Jagged Claw of Rending x2', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Note for Historian Qua', 1, 'From handin of Sack of Broken Glass', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Official Seal of the Khati Sha', 1, 'From Handin of Copper Medal of War', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Perfect Acrylia Ore', 1, 'The Grey', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Qua''s Receipt', 1, 'From handing in Note for Historian Qua', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Rahoul''s Collection Box', 1, '4 slot container, from handing in the receipt', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Sack of Broken Glass', 1, 'From combining the Shards of Broken Glass in the Black Silk Sack', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Seal of Elder Dumul', 1, 'From handing in Sealed Box in Shar Vahl', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Sealed Box of Totems', 1, 'From Combining the 6 Totems in the Carved Wooden Chest', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Sealed Collection Box', 1, 'Combining the Gem of the Void x2, Dhunk of Dense Fungal Padding, and Perfect Acrylia Ore', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Sealed Gilded Wooden Chest', 1, 'Combine 2x Jagged Claw of Rending,  Khati Sha Seal of War,  Draz Nurakk''s Head in  Acrylia Gilded Box ', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Shards of Broken Glass', 6, 'From killing the 6 npc spawned', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Totem of the Alligator', 1, 'From The Spirit of Sorrow in Swamp of No Hope', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Totem of the Gorilla', 1, 'from Spirit of Rage in Emerald Jungle', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Totem of the Ice Bear', 1, 'From The Icebound Spirit in Permafrost', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Totem of the Spider', 1, 'From The Spirit of Decay in Feerrott', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Totem of the Watcher', 1, 'From The Spirit of Torment in Stonebrunt Mountains', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Totem of the Wolf', 1, 'From The Spirit of Malevolence in Lesser Faydark', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Wrapped Alligator Totem', 1, 'From handin of Totem of the Alligator', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Wrapped Gorilla Totem', 1, 'From handin of Totem of the Gorilla', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Wrapped Ice Bear Totem', 1, 'from hand of Totem of the Ice Bear', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Wrapped Spider Totem', 1, 'From handin of Totem of the Spider', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Wrapped Watcher Totem', 1, 'From handin of Totem of the Watcher', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Wrapped Wolf Totem', 1, 'From handin of Totem of the Wolf', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Beastlord Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'bst', 'Claw of the Savage Spirit', 2, 'Epic 1.0', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Assembled Pearlescent Shard', 1, 'Combine in Skyfire', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Blood Soaked Plasmatic Priest Robe', 1, 'Temple Solusek Ro', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Coral Statue of Tarew', 1, 'Tim Deep', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Lord Bergurgle''s Crown', 1, 'Lake Rathtear', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Lord Gimblox''s Signet Ring', 1, 'Sol A', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Message to Natasha', 1, 'Sol A', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Natasha''s Letter', 1, 'Give to Naxot in BW', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Orb of Clear Water', 1, 'Tim Deep', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Orb of Frozen Water', 1, 'Tim Deep', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Orb of Vapor', 1, 'Tim Deep', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Orb of the Triumvirate', 1, ' combine 3 orbs', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Ornate Sea Shell', 1, 'After Crown Handin', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Pearlescent Fragment', 4, 'Skyfire', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Sceptre of Ixiblat Fer', 1, 'Burning Woods', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Shimmering Pearl', 1, 'Give To Zordak', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Singed Scroll', 1, 'Chardok', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Swirling Pearl', 1, 'Zordak', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Zordak Ragefire''s Heart', 1, 'Assembled', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Cleric Epic 1.0', 'Epic 1.0', 'weapon', 'weapon', 'clr', 'Water Sprinkler of Nem Ankh', 1, 'Epic 1.0', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Key to Sebilis', 'General', 'key', 'key', 'All', 'Medallion of the Kunzar', 1, 'From the froglok forager in Trakanon''s Teeth', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Key to Sebilis', 'General', 'key', 'key', 'All', 'Medallion of the Nathsar', 1, 'From the froglok hunter in Trakanon''s Teeth', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Ruins of Kunark', 'Key to Sebilis', 'General', 'key', 'key', 'All', 'Trakanon Idol', 1, 'Key from handing in the 2 Medallions to Emperor Ganak in Trakanon''s Teeth', 1, 999, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Boots', 'Kael Armor', 'feet', 'armor', 'rog rng ber', 'Ancient Tarnished Chain Boots', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Boots', 'Kael Armor', 'feet', 'armor', 'rog rng ber', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Bracer', 'Kael Armor', 'wrists', 'armor', 'rog rng ber', 'Ancient Tarnished Chain Bracer', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Bracer', 'Kael Armor', 'wrists', 'armor', 'rog rng ber', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Coif', 'Kael Armor', 'head', 'armor', 'rng rog ber', 'Ancient Tarnished Chain Coif', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Coif', 'Kael Armor', 'head', 'armor', 'rng rog ber', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Gloves', 'Kael Armor', 'hands', 'armor', 'rog rng ber', 'Ancient Tarnished Chain Gauntlets', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Gloves', 'Kael Armor', 'hands', 'armor', 'rog rng ber', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Leggings', 'Kael Armor', 'legs', 'armor', 'ber rog rng', 'Ancient Tarnished Chain Leggings', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Leggings', 'Kael Armor', 'legs', 'armor', 'ber rog rng', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Sleeves', 'Kael Armor', 'arms', 'armor', 'rog rng ber', 'Ancient Tarnished Chain Sleeves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Sleeves', 'Kael Armor', 'arms', 'armor', 'rog rng ber', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Tunic', 'Kael Armor', 'chest', 'armor', 'rog rng ber', 'Ancient Tarnished Chain Tunic', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Chain Tunic', 'Kael Armor', 'chest', 'armor', 'rog rng ber', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Clearic Helmet', 'Kael Armor', 'head', 'armor', 'clr', 'Ancient Tarnished Helmet', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Clearic Helmet', 'Kael Armor', 'head', 'armor', 'clr', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Boots', 'Kael Armor', 'feet', 'armor', 'clr', 'Ancient Tarnished Boots', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Boots', 'Kael Armor', 'feet', 'armor', 'clr', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Bracer', 'Kael Armor', 'wrists', 'armor', 'clr', 'Ancient Tarnished Bracer', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Bracer', 'Kael Armor', 'wrists', 'armor', 'clr', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Breastplate', 'Kael Armor', 'chest', 'armor', 'clr', 'Ancient Tarnished Breastplate', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Breastplate', 'Kael Armor', 'chest', 'armor', 'clr', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Gloves', 'Kael Armor', 'hands', 'armor', 'clr', 'Ancient Tarnished Gauntlets', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Gloves', 'Kael Armor', 'hands', 'armor', 'clr', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Greaves', 'Kael Armor', 'legs', 'armor', 'clr', 'Ancient Tarnished Greaves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Greaves', 'Kael Armor', 'legs', 'armor', 'clr', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Vambraces', 'Kael Armor', 'arms', 'armor', 'clr', 'Ancient Tarnished Vambraces', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Cleric Vambraces', 'Kael Armor', 'arms', 'armor', 'clr', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Boots', 'Kael Armor', 'feet', 'armor', 'dru', 'Ancient Leather Boots', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Boots', 'Kael Armor', 'feet', 'armor', 'dru', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Bracer', 'Kael Armor', 'wrists', 'armor', 'dru', 'Ancient Leather Bracelet', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Bracer', 'Kael Armor', 'wrists', 'armor', 'dru', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Cap', 'Kael Armor', 'head', 'armor', 'dru', 'Ancient Leather Cap', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Cap', 'Kael Armor', 'head', 'armor', 'dru', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Gloves', 'Kael Armor', 'hands', 'armor', 'dru', 'Ancient Leather Gloves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Gloves', 'Kael Armor', 'hands', 'armor', 'dru', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Leggings', 'Kael Armor', 'legs', 'armor', 'dru', 'Ancient Leather Leggings', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Leggings', 'Kael Armor', 'legs', 'armor', 'dru', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Sleeves', 'Kael Armor', 'arms', 'armor', 'dru', 'Ancient Leather Sleeves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Sleeves', 'Kael Armor', 'arms', 'armor', 'dru', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Tunic', 'Kael Armor', 'chest', 'armor', 'dru', 'Ancient Leather Tunic', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Druid Tunic', 'Kael Armor', 'chest', 'armor', 'dru', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Boots', 'Kael Armor', 'feet', 'armor', 'mnk bst', 'Ancient Leather Boots', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Boots', 'Kael Armor', 'feet', 'armor', 'mnk bst', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Bracer', 'Kael Armor', 'wrists', 'armor', 'mnk bst', 'Ancient Leather Bracelet', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Bracer', 'Kael Armor', 'wrists', 'armor', 'mnk bst', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Cap', 'Kael Armor', 'head', 'armor', 'mnk bst', 'Ancient Leather Cap', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Cap', 'Kael Armor', 'head', 'armor', 'mnk bst', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Gloves', 'Kael Armor', 'hands', 'armor', 'mnk bst', 'Ancient Leather Gloves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Gloves', 'Kael Armor', 'hands', 'armor', 'mnk bst', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Leggings', 'Kael Armor', 'legs', 'armor', 'mnk bst', 'Ancient Leather Leggings', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Leggings', 'Kael Armor', 'legs', 'armor', 'mnk bst', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Sleeves', 'Kael Armor', 'arms', 'armor', 'mnk bst', 'Ancient Leather Sleeves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Sleeves', 'Kael Armor', 'arms', 'armor', 'mnk bst', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Tunic', 'Kael Armor', 'chest', 'armor', 'mnk bst', 'Ancient Leather Tunic', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Leather Tunic', 'Kael Armor', 'chest', 'armor', 'mnk bst', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Boots', 'Kael Armor', 'feet', 'armor', 'war shd pal brd', 'Ancient Tarnished Boots', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Boots', 'Kael Armor', 'feet', 'armor', 'war shd pal brd', 'Ancient Tarnished Plate Boots', 1, 'Temple of Veeshan', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Boots', 'Kael Armor', 'feet', 'armor', 'war shd pal brd', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Bracer', 'Kael Armor', 'wrists', 'armor', 'war shd pal brd', 'Ancient Tarnished Bracer', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Bracer', 'Kael Armor', 'wrists', 'armor', 'war shd pal brd', 'Ancient Tarnished Plate Bracelet', 1, 'Temple of Veeshan', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Bracer', 'Kael Armor', 'wrists', 'armor', 'war shd pal brd', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Breastplate', 'Kael Armor', 'chest', 'armor', 'war shd pal brd', 'Ancient Tarnished Breastplate', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Breastplate', 'Kael Armor', 'chest', 'armor', 'war shd pal brd', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Gloves', 'Kael Armor', 'hands', 'armor', 'war shd pal brd', 'Ancient Tarnished Gauntlets', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Gloves', 'Kael Armor', 'hands', 'armor', 'war shd pal brd', 'Ancient Tarnished Plate Gauntlets', 1, 'Temple of Veeshan', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Gloves', 'Kael Armor', 'hands', 'armor', 'war shd pal brd', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Greaves', 'Kael Armor', 'legs', 'armor', 'war pal shd brd', 'Ancient Tarnished Greaves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Greaves', 'Kael Armor', 'legs', 'armor', 'war pal shd brd', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Helmet', 'Kael Armor', 'head', 'armor', 'war shd pal brd', 'Ancient Tarnished Helmet', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Helmet', 'Kael Armor', 'head', 'armor', 'war shd pal brd', 'Ancient Tarnished Plate Helmet', 1, 'Temple of Veeshan', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Helmet', 'Kael Armor', 'head', 'armor', 'war shd pal brd', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Vambraces', 'Kael Armor', 'arms', 'armor', 'war shd pal brd', 'Ancient Tarnished Vambraces', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Plate Vambraces', 'Kael Armor', 'arms', 'armor', 'war shd pal brd', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Boots', 'Kael Armor', 'feet', 'armor', 'shm', 'Ancient Tarnished Chain Boots', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Boots', 'Kael Armor', 'feet', 'armor', 'shm', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Bracer', 'Kael Armor', 'wrists', 'armor', 'shm', 'Ancient Tarnished Chain Bracer', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Bracer', 'Kael Armor', 'wrists', 'armor', 'shm', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Coif', 'Kael Armor', 'head', 'armor', 'shm', 'Ancient Tarnished Chain Coif', 1, 'TOV', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Coif', 'Kael Armor', 'head', 'armor', 'shm', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Coif', 'Kael Armor', 'head', 'armor', 'shm', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Gloves', 'Kael Armor', 'hands', 'armor', 'shm', 'Ancient Tarnished Chain Gauntlets', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Gloves', 'Kael Armor', 'hands', 'armor', 'shm', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Leggings', 'Kael Armor', 'legs', 'armor', 'shm', 'Ancient Tarnished Chain Leggings', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Leggings', 'Kael Armor', 'legs', 'armor', 'shm', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Sleeves', 'Kael Armor', 'arms', 'armor', 'shm', 'Ancient Tarnished Chain Sleeves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Sleeves', 'Kael Armor', 'arms', 'armor', 'shm', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Tunic', 'Kael Armor', 'chest', 'armor', 'shm', 'Ancient Tarnished Chain Tunic', 1, '', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Tunic', 'Kael Armor', 'chest', 'armor', 'shm', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Shaman Tunic', 'Kael Armor', 'chest', 'armor', 'shm', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Boots', 'Kael Armor', 'feet', 'armor', 'wiz mag enc nec', 'Ancient Silk Boots', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Boots', 'Kael Armor', 'feet', 'armor', 'wiz mag enc nec', 'Crushed Jaundice Gem', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Cap', 'Kael Armor', 'head', 'armor', 'wiz mag enc nec', 'Ancient Silk Turban', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Cap', 'Kael Armor', 'head', 'armor', 'wiz mag enc nec', 'Crushed Flame Opal', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Gloves', 'Kael Armor', 'hands', 'armor', 'wiz mag enc nec', 'Ancient Silk Gloves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Gloves', 'Kael Armor', 'hands', 'armor', 'wiz mag enc nec', 'Crushed Topaz', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Pantaloons', 'Kael Armor', 'legs', 'armor', 'enc wiz mag nec', 'Nephrite', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Pantaloons', 'Kael Armor', 'legs', 'armor', 'enc wiz mag nec', 'Torn Enchanted Silk Pantaloons', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Robe', 'Kael Armor', 'chest', 'armor', 'wiz mag enc nec', 'Ancient Silk Robe', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Robe', 'Kael Armor', 'chest', 'armor', 'wiz mag enc nec', 'Pristine Emerald', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Sleeves', 'Kael Armor', 'arms', 'armor', 'wiz mag enc nec', 'Ancient Silk Sleeves', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Sleeves', 'Kael Armor', 'arms', 'armor', 'wiz mag enc nec', 'Flawed Topaz', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Wristband', 'Kael Armor', 'wrists', 'armor', 'wiz nec enc mag', 'Ancient Silk Wristband', 1, 'Temple of Veeshan', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Kael Silk Wristband', 'Kael Armor', 'wrists', 'armor', 'wiz nec enc mag', 'Crushed Onyx Sapphire', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Boots', 'SkyShrine Armor', 'feet', 'armor', 'rog rng ber', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Boots', 'SkyShrine Armor', 'feet', 'armor', 'rog rng ber', 'Unadorned Chain Boots', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'rog rng ber', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'rog rng ber', 'Unadorned Chain Bracer', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Coif', 'SkyShrine Armor', 'head', 'armor', 'rog rng ber', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Coif', 'SkyShrine Armor', 'head', 'armor', 'rog rng ber', 'Unadorned Chain Coif', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Gloves', 'SkyShrine Armor', 'hands', 'armor', 'rog rng ber', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Gloves', 'SkyShrine Armor', 'hands', 'armor', 'rog rng ber', 'Unadorned Chain Gauntlets', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'rog rng ber', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'rog rng ber', 'Unadorned Chain Sleeves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Tunic', 'SkyShrine Armor', 'chest', 'armor', 'rog rng ber', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Chain Tunic', 'SkyShrine Armor', 'chest', 'armor', 'rog rng ber', 'Unadorned Chain Tunic', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Clearic Helmet', 'SkyShrine Armor', 'head', 'armor', 'clr', 'Unadorned Plate Helmet', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Boots', 'SkyShrine Armor', 'feet', 'armor', 'clr', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Boots', 'SkyShrine Armor', 'feet', 'armor', 'clr', 'Unadorned Plate Boots', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'clr', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'clr', 'Unadorned Plate Bracer', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Breastplate', 'SkyShrine Armor', 'chest', 'armor', 'clr', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Breastplate', 'SkyShrine Armor', 'chest', 'armor', 'clr', 'Unadorned Breastplate', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Gloves', 'SkyShrine Armor', 'hands', 'armor', 'clr', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Gloves', 'SkyShrine Armor', 'hands', 'armor', 'clr', 'Unadorned Plate Gauntlets', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Greaves', 'SkyShrine Armor', 'legs', 'armor', 'clr', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Greaves', 'SkyShrine Armor', 'legs', 'armor', 'clr', 'Unadorned Plate Greaves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Helment', 'SkyShrine Armor', 'head', 'armor', 'clr', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Vambraces', 'SkyShrine Armor', 'arms', 'armor', 'clr', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Cleric Vambraces', 'SkyShrine Armor', 'arms', 'armor', 'clr', 'Unadorned Plate Vambraces', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Boots', 'SkyShrine Armor', 'feet', 'armor', 'dru', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Boots', 'SkyShrine Armor', 'feet', 'armor', 'dru', 'Unadorned Leather Boots', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'dru', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'dru', 'Unadorned Leather Bracelet', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Cap', 'SkyShrine Armor', 'head', 'armor', 'dru', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Cap', 'SkyShrine Armor', 'head', 'armor', 'dru', 'Unadorned Leather Cap', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Gloves', 'SkyShrine Armor', 'hands', 'armor', 'dru', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Gloves', 'SkyShrine Armor', 'hands', 'armor', 'dru', 'Unadorned Leather Gloves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Leggings', 'SkyShrine Armor', 'legs', 'armor', 'dru', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Leggings', 'SkyShrine Armor', 'legs', 'armor', 'dru', 'Unadorned Leather Leggings', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'dru', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'dru', 'Unadorned Leather Sleeves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Tunic', 'SkyShrine Armor', 'chest', 'armor', 'dru', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Druid Tunic', 'SkyShrine Armor', 'chest', 'armor', 'dru', 'Unadorned Leather Tunic', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Boots', 'SkyShrine Armor', 'feet', 'armor', 'mnk bst', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Boots', 'SkyShrine Armor', 'feet', 'armor', 'mnk bst', 'Unadorned Leather Boots', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'mnk bst', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'mnk bst', 'Unadorned Leather Bracelet', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Cap', 'SkyShrine Armor', 'head', 'armor', 'mnk bst', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Cap', 'SkyShrine Armor', 'head', 'armor', 'mnk bst', 'Unadorned Leather Cap', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Gloves', 'SkyShrine Armor', 'hands', 'armor', 'mnk bst', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Gloves', 'SkyShrine Armor', 'hands', 'armor', 'mnk bst', 'Unadorned Leather Gloves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Leggings', 'SkyShrine Armor', 'legs', 'armor', 'mnk bst', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Leggings', 'SkyShrine Armor', 'legs', 'armor', 'mnk bst', 'Unadorned Leather Leggings', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'mnk bst', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'mnk bst', 'Unadorned Leather Sleeves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Tunic', 'SkyShrine Armor', 'chest', 'armor', 'mnk bst', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Leather Tunic', 'SkyShrine Armor', 'chest', 'armor', 'mnk bst', 'Unadorned Leather Tunic', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Boots', 'SkyShrine Armor', 'feet', 'armor', 'war shd pal brd', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Boots', 'SkyShrine Armor', 'feet', 'armor', 'war shd pal brd', 'Unadorned Plate Boots', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'war shd pal brd', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'war shd pal brd', 'Unadorned Plate Bracer', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Breastplate', 'SkyShrine Armor', 'chest', 'armor', 'war shd pal brd', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Breastplate', 'SkyShrine Armor', 'chest', 'armor', 'war shd pal brd', 'Unadorned Breastplate', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Gloves', 'SkyShrine Armor', 'hands', 'armor', 'war shd pal brd', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Gloves', 'SkyShrine Armor', 'hands', 'armor', 'war shd pal brd', 'Unadorned Plate Gauntlets', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Greaves', 'SkyShrine Armor', 'legs', 'armor', 'war pal shd brd', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Greaves', 'SkyShrine Armor', 'legs', 'armor', 'war pal shd brd', 'Unadorned Plate Greaves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Helmet', 'SkyShrine Armor', 'head', 'armor', 'war shd pal brd', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Helmet', 'SkyShrine Armor', 'head', 'armor', 'war shd pal brd', 'Unadorned Plate Helmet', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Vambraces', 'SkyShrine Armor', 'arms', 'armor', 'war shd pal brd', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Plate Vambraces', 'SkyShrine Armor', 'arms', 'armor', 'war shd pal brd', 'Unadorned Plate Vambraces', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Boots', 'SkyShrine Armor', 'feet', 'armor', 'shm', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Boots', 'SkyShrine Armor', 'feet', 'armor', 'shm', 'Unadorned Chain Boots', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'shm', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Bracer', 'SkyShrine Armor', 'wrists', 'armor', 'shm', 'Unadorned Chain Bracer', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Coif', 'SkyShrine Armor', 'head', 'armor', 'shm', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Coif', 'SkyShrine Armor', 'head', 'armor', 'shm', 'Unadorned Chain Coif', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Gloves', 'SkyShrine Armor', 'hands', 'armor', 'shm', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Gloves', 'SkyShrine Armor', 'hands', 'armor', 'shm', 'Unadorned Chain Gauntlets', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'shm', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'shm', 'Unadorned Chain Sleeves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Tunic', 'SkyShrine Armor', 'chest', 'armor', 'shm', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Shaman Tunic', 'SkyShrine Armor', 'chest', 'armor', 'shm', 'Unadorned Chain Tunic', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Boots', 'SkyShrine Armor', 'feet', 'armor', 'wiz mag enc nec', 'Crushed Jaundice Gem', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Boots', 'SkyShrine Armor', 'feet', 'armor', 'wiz mag enc nec', 'Unadorned Silk Boots', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Bracrer', 'SkyShrine Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Crushed Onyx Sapphire', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Bracrer', 'SkyShrine Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Unadorned Silk Wristband', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Cap', 'SkyShrine Armor', 'head', 'armor', 'wiz mag enc nec', 'Crushed Flame Opal', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Cap', 'SkyShrine Armor', 'head', 'armor', 'wiz mag enc nec', 'Unadorned Silk Turban', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Pantaloons', 'SkyShrine Armor', 'legs', 'armor', 'enc wiz mag nec', 'Nephrite', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Pantaloons', 'SkyShrine Armor', 'legs', 'armor', 'enc wiz mag nec', 'Torn Enchanted Silk Pantaloons', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Robe', 'SkyShrine Armor', 'chest', 'armor', 'wiz mag enc nec', 'Pristine Emerald', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Robe', 'SkyShrine Armor', 'chest', 'armor', 'wiz mag enc nec', 'Tattered Silk Robe', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'wiz mag enc nec', 'Flawed Topaz', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'SkyShrine Silk Sleeves', 'SkyShrine Armor', 'arms', 'armor', 'wiz mag enc nec', 'Unadorned Silk Sleeves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Skyshrine Chain Leggings', 'SkyShrine Armor', 'legs', 'armor', 'ber rog rng', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Skyshrine Chain Leggings', 'SkyShrine Armor', 'legs', 'armor', 'ber rog rng', 'Unadorned Chain Leggings', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Skyshrine Shaman Leggings', 'SkyShrine Armor', 'legs', 'armor', 'shm', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Skyshrine Shaman Leggings', 'SkyShrine Armor', 'legs', 'armor', 'shm', 'Unadorned Chain Leggings', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Skyshrine Silk Gloves', 'SkyShrine Armor', 'hands', 'armor', 'wiz mag enc nec', 'Crushed Topaz', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Skyshrine Silk Gloves', 'SkyShrine Armor', 'hands', 'armor', 'wiz mag enc nec', 'Tattered Silk Gloves', 1, 'ToV Halls of Testing', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Boots', 'Thurg Armor', 'feet', 'armor', 'rog rng ber', 'Corroded Chain Boots', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Boots', 'Thurg Armor', 'feet', 'armor', 'rog rng ber', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Bracer', 'Thurg Armor', 'wrists', 'armor', 'rog rng ber', 'Corroded Chain Bracer', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Bracer', 'Thurg Armor', 'wrists', 'armor', 'rog rng ber', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Gloves', 'Thurg Armor', 'hands', 'armor', 'rog rng ber', 'Corroded Chain Gauntlets', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Gloves', 'Thurg Armor', 'hands', 'armor', 'rog rng ber', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Leggings', 'Thurg Armor', 'legs', 'armor', 'ber rog rng', 'Corroded Chain Leggings', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Leggings', 'Thurg Armor', 'legs', 'armor', 'ber rog rng', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Sleeves', 'Thurg Armor', 'arms', 'armor', 'rog rng ber', 'Corroded Chain Sleeves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Sleeves', 'Thurg Armor', 'arms', 'armor', 'rog rng ber', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Tunic', 'Thurg Armor', 'chest', 'armor', 'rog rng ber', 'Corroded Chain Tunic', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Chain Tunic', 'Thurg Armor', 'chest', 'armor', 'rog rng ber', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Boots', 'Thurg Armor', 'feet', 'armor', 'clr', 'Corroded Plate Boots', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Boots', 'Thurg Armor', 'feet', 'armor', 'clr', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Bracer', 'Thurg Armor', 'wrists', 'armor', 'clr', 'Corroded Plate Bracer', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Bracer', 'Thurg Armor', 'wrists', 'armor', 'clr', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Breastplate', 'Thurg Armor', 'chest', 'armor', 'clr', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Breastplate', 'Thurg Armor', 'chest', 'armor', 'clr', 'Corroded Breastplate', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Gloves', 'Thurg Armor', 'hands', 'armor', 'clr', 'Corroded Plate Gauntlets', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Gloves', 'Thurg Armor', 'hands', 'armor', 'clr', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Greaves', 'Thurg Armor', 'legs', 'armor', 'clr', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Greaves', 'Thurg Armor', 'legs', 'armor', 'clr', 'Corroded Plate Greaves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Helmet', 'Thurg Armor', 'head', 'armor', 'clr', 'Corroded Plate Helmet', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Helmet', 'Thurg Armor', 'head', 'armor', 'clr', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Vambraces', 'Thurg Armor', 'arms', 'armor', 'clr', 'Corroded Plate Vambraces', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Cleric Vambraces', 'Thurg Armor', 'arms', 'armor', 'clr', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Boots', 'Thurg Armor', 'feet', 'armor', 'dru', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Boots', 'Thurg Armor', 'feet', 'armor', 'dru', 'Eroded Leather Boots', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Cap', 'Thurg Armor', 'head', 'armor', 'dru', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Cap', 'Thurg Armor', 'head', 'armor', 'dru', 'Eroded Leather Cap', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Gloves', 'Thurg Armor', 'hands', 'armor', 'dru', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Gloves', 'Thurg Armor', 'hands', 'armor', 'dru', 'Eroded Leather Gloves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Leggings', 'Thurg Armor', 'legs', 'armor', 'dru', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Leggings', 'Thurg Armor', 'legs', 'armor', 'dru', 'Eroded Leather Leggings', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Sleeves', 'Thurg Armor', 'arms', 'armor', 'dru', 'Eroded Leather Sleeves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Sleeves', 'Thurg Armor', 'arms', 'armor', 'dru', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Tunic', 'Thurg Armor', 'chest', 'armor', 'dru', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druid Tunic', 'Thurg Armor', 'chest', 'armor', 'dru', 'Eroded Leather Tunic', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druir Bracer', 'Thurg Armor', 'wrists', 'armor', 'dru', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Druir Bracer', 'Thurg Armor', 'wrists', 'armor', 'dru', 'Eroded Leather Bracelet', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Boots', 'Thurg Armor', 'feet', 'armor', 'mnk bst', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Boots', 'Thurg Armor', 'feet', 'armor', 'mnk bst', 'Eroded Leather Boots', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Bracer', 'Thurg Armor', 'wrists', 'armor', 'mnk bst', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Bracer', 'Thurg Armor', 'wrists', 'armor', 'mnk bst', 'Eroded Leather Bracelet', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Cap', 'Thurg Armor', 'head', 'armor', 'mnk bst', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Cap', 'Thurg Armor', 'head', 'armor', 'mnk bst', 'Eroded Leather Cap', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Gloves', 'Thurg Armor', 'hands', 'armor', 'mnk bst', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Gloves', 'Thurg Armor', 'hands', 'armor', 'mnk bst', 'Eroded Leather Gloves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Leggings', 'Thurg Armor', 'legs', 'armor', 'mnk bst', 'Eroded Leather Leggings', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Leggings', 'Thurg Armor', 'legs', 'armor', 'mnk bst', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Sleeves', 'Thurg Armor', 'arms', 'armor', 'mnk bst', 'Eroded Leather Sleeves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Sleeves', 'Thurg Armor', 'arms', 'armor', 'mnk bst', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Tunic', 'Thurg Armor', 'chest', 'armor', 'mnk bst', 'Eroded Leather Tunic', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Leather Tunic', 'Thurg Armor', 'chest', 'armor', 'mnk bst', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Boots', 'Thurg Armor', 'feet', 'armor', 'war shd pal brd', 'Corroded Plate Boots', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Boots', 'Thurg Armor', 'feet', 'armor', 'war shd pal brd', 'Crushed Black Marble', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Bracer', 'Thurg Armor', 'wrists', 'armor', 'war shd pal brd', 'Corroded Plate Bracer', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Bracer', 'Thurg Armor', 'wrists', 'armor', 'war shd pal brd', 'Crushed Flame Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Breastplate', 'Thurg Armor', 'chest', 'armor', 'war shd pal brd', 'Corroded Breastplate', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Breastplate', 'Thurg Armor', 'chest', 'armor', 'war shd pal brd', 'Flawless Diamond', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Gloves', 'Thurg Armor', 'hands', 'armor', 'war shd pal brd', 'Corroded Plate Gauntlets', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Gloves', 'Thurg Armor', 'hands', 'armor', 'war shd pal brd', 'Crushed Topaz', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Greaves', 'Thurg Armor', 'legs', 'armor', 'war pal shd brd', 'Corroded Plate Greaves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Greaves', 'Thurg Armor', 'legs', 'armor', 'war pal shd brd', 'Flawed Sea Sapphire', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Helmet', 'Thurg Armor', 'head', 'armor', 'war shd pal brd', 'Corroded Plate Helmet', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Helmet', 'Thurg Armor', 'head', 'armor', 'war shd pal brd', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Vambraces', 'Thurg Armor', 'arms', 'armor', 'war shd pal brd', 'Corroded Plate Vambraces', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Plate Vambraces', 'Thurg Armor', 'arms', 'armor', 'war shd pal brd', 'Flawed Emerald', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Boots', 'Thurg Armor', 'feet', 'armor', 'shm', 'Corroded Chain Boots', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Boots', 'Thurg Armor', 'feet', 'armor', 'shm', 'Crushed Flame Emerald', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Bracer', 'Thurg Armor', 'wrists', 'armor', 'shm', 'Corroded Chain Bracer', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Bracer', 'Thurg Armor', 'wrists', 'armor', 'shm', 'Crushed Opal', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Coif', 'Thurg Armor', 'head', 'armor', 'shm', 'Corroded Chain Coif', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Coif', 'Thurg Armor', 'head', 'armor', 'shm', 'Crushed Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Gloves', 'Thurg Armor', 'hands', 'armor', 'shm', 'Corroded Chain Gauntlets', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Gloves', 'Thurg Armor', 'hands', 'armor', 'shm', 'Crushed Lava Ruby', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Leggings', 'Thurg Armor', 'legs', 'armor', 'shm', 'Chipped Onyx Sapphire', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Leggings', 'Thurg Armor', 'legs', 'armor', 'shm', 'Corroded Chain Leggings', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Sleeves', 'Thurg Armor', 'arms', 'armor', 'shm', 'Corroded Chain Sleeves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Sleeves', 'Thurg Armor', 'arms', 'armor', 'shm', 'Jaundice Gem', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Tunic', 'Thurg Armor', 'chest', 'armor', 'shm', 'Black Marble', 3, 'priest', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Shaman Tunic', 'Thurg Armor', 'chest', 'armor', 'shm', 'Corroded Chain Tunic', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Boots', 'Thurg Armor', 'feet', 'armor', 'wiz mag enc nec', 'Crushed Jaundice Gem', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Boots', 'Thurg Armor', 'feet', 'armor', 'wiz mag enc nec', 'Torn Enchanted Silk Boots', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Boots', 'Thurg Armor', 'feet', 'armor', 'wiz mag enc nec', 'Arch Mage''s Boots', 1, 'Magician Boots', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Boots', 'Thurg Armor', 'feet', 'armor', 'wiz mag enc nec', 'Beguiler''s Slippers', 1, 'Enchanter Boots', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Boots', 'Thurg Armor', 'feet', 'armor', 'wiz mag enc nec', 'Sage''s Boots', 1, 'Wizard Boots', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Boots', 'Thurg Armor', 'feet', 'armor', 'wiz mag enc nec', 'Warlock''s Boots', 1, 'Necromancer Boots', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Bracer', 'Thurg Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Crushed Onyx Sapphire', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Bracer', 'Thurg Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Torn Enchanted Silk Wristband', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Bracer', 'Thurg Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Arch Mage''s Warband', 1, 'Magician Bracer', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Bracer', 'Thurg Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Beguiler''s Wristguard', 1, 'Enchanter Bracer', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Bracer', 'Thurg Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Sage''s Bracelet', 1, 'Wizard Bracer', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Bracer', 'Thurg Armor', 'wrists', 'armor', 'wiz mag enc nec', 'Warlock''s Wristguard', 1, 'Necromancer Bracer', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Cap', 'Thurg Armor', 'head', 'armor', 'wiz mag enc nec', 'Crushed Flame Opal', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Cap', 'Thurg Armor', 'head', 'armor', 'wiz mag enc nec', 'Torn Enchanted Silk Turban', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Cap', 'Thurg Armor', 'head', 'armor', 'wiz mag enc nec', 'Arch Mage''s Crown', 1, 'Magician Crown', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Cap', 'Thurg Armor', 'head', 'armor', 'wiz mag enc nec', 'Beguiler''s Crown', 1, 'Enchanter Crown', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Cap', 'Thurg Armor', 'head', 'armor', 'wiz mag enc nec', 'Sage''s Crown', 1, 'Wizard Crown', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Cap', 'Thurg Armor', 'head', 'armor', 'wiz mag enc nec', 'Warlock''s Crown', 1, 'Necromancer Crown', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Gloves', 'Thurg Armor', 'hands', 'armor', 'wiz mag enc nec', 'Crushed Topaz', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Gloves', 'Thurg Armor', 'hands', 'armor', 'wiz mag enc nec', 'Torn Enchanted Silk Gloves', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Gloves', 'Thurg Armor', 'hands', 'armor', 'wiz mag enc nec', 'Arch Mage''s Gloves', 1, 'Magician Gloves', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Gloves', 'Thurg Armor', 'hands', 'armor', 'wiz mag enc nec', 'Beguiler''s Gloves', 1, 'Enchanter Gloves', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Gloves', 'Thurg Armor', 'hands', 'armor', 'wiz mag enc nec', 'Sage''s Gloves', 1, 'Wizard Gloves', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Gloves', 'Thurg Armor', 'hands', 'armor', 'wiz mag enc nec', 'Warlock''s Gloves', 1, 'Necromancer Gloves', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Robe', 'Thurg Armor', 'chest', 'armor', 'wiz mag enc nec', 'Pristine Emerald', 3, 'caster', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Robe', 'Thurg Armor', 'chest', 'armor', 'wiz mag enc nec', 'Torn Enchanted Silk Robe', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Robe', 'Thurg Armor', 'chest', 'armor', 'wiz mag enc nec', 'Arch Mage''s Robe', 1, 'Magician Robe', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Robe', 'Thurg Armor', 'chest', 'armor', 'wiz mag enc nec', 'Beguiler''s Robe', 1, 'Enchanter Robe', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Robe', 'Thurg Armor', 'chest', 'armor', 'wiz mag enc nec', 'Sage''s Robe', 1, 'Wizard Robe', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Robe', 'Thurg Armor', 'chest', 'armor', 'wiz mag enc nec', 'Warlock''s Robe', 1, 'Necromancer Robe', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Sleeves', 'Thurg Armor', 'arms', 'armor', 'wiz mag enc nec', 'Flawed Topaz', 3, '', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Sleeves', 'Thurg Armor', 'arms', 'armor', 'wiz mag enc nec', 'Torn Enchanted Silk Sleeves', 1, '', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Sleeves', 'Thurg Armor', 'arms', 'armor', 'wiz mag enc nec', 'Arch Mage''s Sleeves', 1, 'Magician Sleeves', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Sleeves', 'Thurg Armor', 'arms', 'armor', 'wiz mag enc nec', 'Beguiler''s Sleeves', 1, 'Enchanter Sleeves', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Sleeves', 'Thurg Armor', 'arms', 'armor', 'wiz mag enc nec', 'Sage''s Sleeves', 1, 'Wizard Sleeves', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurg Silk Sleeves', 'Thurg Armor', 'arms', 'armor', 'wiz mag enc nec', 'Warlock''s Sleeves', 1, 'Necromancer Sleeves', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurge Chain Coif', 'Thurg Armor', 'head', 'armor', 'rog rng ber', 'Corroded Chain Coif', 1, 'Kael', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Scars of Velious', 'Thurge Chain Coif', 'Thurg Armor', 'head', 'armor', 'rog rng ber', 'Crushed Coral', 3, 'melee', 0, 1, 'All')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Muramite Rune', 1, 'Hand In: Karsor the Mad in Dranik''s Scar', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Vulka''s Chant of Poison', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: War March of Muram', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Yelhun''s Mystic Call', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dirge of Metala', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Growl of the Beast', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit of Alladnu', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit of Irionu', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Mind Strike', 1, '', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Unflinching Will Discipline', 1, '', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Sound of Divinity', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hammer of Reproach', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pious Light', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Desolate Undead', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Unswerving Hammer of Retribution', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Deistic Howl', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Steeloak Skin', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Chlorotrope', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Cloak of Nature', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Desolate Summoned', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nettlecoat', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Wasp Swarm', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Clairvoyance', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Wall of Alendar', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Compel', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Psychosis', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Circle of Dreams', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Phantom Shield', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Blade Strike', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Pouch of Jerikor', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Child of Fire', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pyrilen Skin', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Counterforce Discipline', 1, '', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Desecrating Darkness', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Shadow of Death', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Fang of Death', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Scent of Midnight', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pious Fury', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Jeron''s Mark', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Serene Command', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Light of Piety', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hunter''s Vigor', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Briarcoat', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Frost Wind', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Tranquility of the Glade', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Deadly Aim Discipline', 1, '', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Son of Decay', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Blood of Inruku', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Scythe of Inruku', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Theft of Pain', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Talisman of Sense', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Yoppa''s Rain of Venom', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pained Memory', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit of Fortitude', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Yoppa''s Mending', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Wunshi''s Focusing', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Savage Onslaught Discipline', 1, '', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spark of Lightning', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Firebane', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spark of Thunder', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ether Skin', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 68', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Thundaka', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Lesser Muramite Rune', 1, 'Hand In: Karsor the Mad in Dranik''s Scar', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ancestral Bulwark', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Angstlich''s Wail of Panic', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Anxiety Attack', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Blessing of Devotion', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Breath of Wunshi', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Cantata of Life', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Child of Water', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Circle of Fire', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Conviction', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Crippling Strike', 1, '', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Crusader''s Purity', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dark Nightmare', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Farrel''s Companion', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Felicity', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Focus of Alladnu', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Glacier Breath', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Glyph of Darkness', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Grip of Mori', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Guard of the Earth', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Immolation of the Sun', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Inruku''s Bite', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Lightningbane', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Lion''s Strength', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Locust Swarm', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Lost Soul', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Luvwen''s Lullaby', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Muada''s Mending', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nature''s Serenity', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nettle Shield', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Panoply of Vie', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Phase Walk', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pious Elixir', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Placate', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Rain of Jerikor', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Reproach', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Rune of Salik', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Sermon of Reproach', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Shadow Howl', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Shroud of Discord', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Silvered Fury', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Soulspike', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Speed of Salik', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit Veil', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit of Might', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spiritual Vitality', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spurn Undead', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Strength of the Hunter', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Crystal Belt', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Dagger of the Deep', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Sphere of Air', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Staff of the North Wind', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Sun''s Corona', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Sylvan Water', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Symbol of Jeron', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Terror of Discord', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Touch of Inruku', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Unholy Howl', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Vulka''s Chant of Frost', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 67', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Zuriki''s Song of Shenanigans', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Minor Muramite Rune', 1, 'Hand In: Karsor the Mad in Dranik''s Scar', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Aura of Runes Discipline', 1, '', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Dreamwalk Discipline', 1, '', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Imperceptible Discipline', 1, '', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Acikin', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Axe of the Destroyer', 1, '', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Bellow of Chaos', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Blood of Discord', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Bolt of Jerikor', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Bond of Inruku', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Chaos Plague', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Child of Wind', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Chimera Blood', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Cloud of Indifference', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Confidence', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Crippling Spasm', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dark Constriction', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Direction', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Displace Summoned', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Earth Shiver', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Eidolon Howl', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Elemental Aura', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ether Shield', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ethereal Rune', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Fireskin', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Force of Piety', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Healing of Mikkily', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Icebane', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Instinctual Terror', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Luvwen''s Aria of Serenity', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Mystic Shield', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nature Veil', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Oaken Vigor', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pious Remedy', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Putrid Decay', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Revulsion of Death', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Salik''s Animation', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Shadow Guard', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Shield of Briar', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Shock of Wonder', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spark of Fire', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit of Perseverance', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit of Sense', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Stormwatch', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Calliav''s Glowing Bauble', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Calliav''s Jeweled Bracelet', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Calliav''s Platinum Choker', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Calliav''s Runed Mantle', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Calliav''s Spiked Ring', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Calliav''s Steel Bracelet', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Summon Fireblade', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Sun Cloak', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Symbol of Balikor', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Synapsis Spasm', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Tears of the Sun', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Tempest Wind', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Touch of Piety', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Unpredictable Rage Discipline', 1, '', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Vulka''s Chant of Disease', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ward of Valiance', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 66', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Yoppa''s Spear of Venom', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Greater Muramite Rune', 1, 'Hand In: Karsor the Mad in Dranik''s Scar', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Verse of Vesagran', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Chorus of Life', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Eriki''s Psalm of Power', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spiritual Ascendance', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Feral Vigor', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Glacier Spear', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Feral Guard', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Baffling Strike', 1, '', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Yaulp VII', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Mark of the Blameless', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Word of Vivification', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Aura of Devotion', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Calamity', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Blessing of Oak', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Oaken Guard', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Solstice Strike', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Vengeance of the Sun', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Euphoria', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Arcane Noose', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Desolate Deeds', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Mayhem', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Color Snap', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Wake of Felicity', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Elemental Fury', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Desolate Summoned', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Burning Earth', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Renewal of Jerikor', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Bulwark of Calliav', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Phantom Cry', 1, '', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pyre of Mori', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dark Salve', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dull Pain', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dark Hold', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Bulwark of Piety', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Armor of the Champion', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hand of Direction', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pious Cleansing', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hearth Embers', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Howl of the Predator', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nature''s Denial', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nature''s Balance', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Daggerfall', 1, '', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Rune of Decay', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spear of Muram', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pact of Decay', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dread Gaze', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Balance of Discord', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Talisman of Fortitude', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pure Spirit', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Talisman of Perseverance', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Curse of Sisslak', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ice Age', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Bazu Bellow', 1, '', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Meteor Storm', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spark of Ice', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Gelidin Comet', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Solist''s Frozen Sword', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 69', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ether Ward', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Glowing Muramite Rune', 1, 'Hand In: Karsor the Mad in Dranik''s Scar', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Vulka''s Chant of Flame', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Vulka''s Lullaby', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Voice of the Vampire', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Vengeful Flurry Discipline', 1, '', 1, 999, 'ber')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Sha''s Legacy', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spirit of Rashara', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ferocity of Irionu', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Festering Malady', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Placate', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Balikor''s Mark', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Armor of the Pious', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Silent Dictation', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hand of Conviction', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Circle of Nettles', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Legacy of Nettles', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Glitterfrost', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Blessing of Steeloak', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Mask of the Wild', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hungry Vines', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nature''s Beckon', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Circle of Alendar', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hastening of Salik', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Voice of Clairvoyance', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: True Name', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Circle of Fireskin', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Child of Earth', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Star Scream', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Star Strike', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Elemental Simulacrum', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Rapid Kick Discipline', 1, '', 1, 999, 'mnk')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Desolate Undead', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dark Assassin', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Chaos Venom', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Dark Possession', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Word of Chaos', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Brell''s Brawny Bulwark', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Affirmation', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Wave of Piety', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Onyx Skin', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ward of the Hunter', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Call of Lightning', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Frenzied Stabbing Discipline', 1, '', 1, 999, 'rog')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Theft of Hate', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Cloak of Discord', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Touch of the Devourer', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Blood of Yoppa', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spiritual Serenity', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Talisman of Wunshi', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Champion', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Vindictive Spirit', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Talisman of Might', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'CombatAbility: Shocking Defense Discipline', 1, '', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Circle of Thunder', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Telekara', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Gelid Rains', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Corona Flare', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Glowing', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Bulwark of Calrena', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Ancient Muramite Rune', 1, 'Hand In: Karsor the Mad in Dranik''s Scar', 0, 0, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Core Fire', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Spear of Gelaqua', 1, '', 1, 999, 'wiz')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Wilslik’s Mending', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Ancestral Calling', 1, '', 1, 999, 'shm')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Bite of Muram', 1, '', 1, 999, 'shd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: North Wind', 1, '', 1, 999, 'rng')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Force of Jeron', 1, '', 1, 999, 'pal')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Curse of Mori', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Touch of Orshalik', 1, '', 1, 999, 'nec')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Nova Strike', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Veil of Pyrilonus', 1, '', 1, 999, 'mag')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Neurosis', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Voice of Muram', 1, '', 1, 999, 'enc')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Glacier Frost', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Chlorobon', 1, '', 1, 999, 'dru')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Hallowed Light', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Pious Conscience', 1, '', 1, 999, 'clr')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Savage Ice', 1, '', 1, 999, 'bst')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'Omens Spells lvl 70 Ancient', 'Omens Spells', 'Spell', 'spell', 'all', 'Spell: Call of Power', 1, '', 1, 999, 'brd')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Cloth Cap', 'Tier1 Armor', 'head', 'armor', 'cloth', 'Duskfall Chronicles', 1, 'Wall of Slaughter, Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Gloves', 'Tier1 Armor', 'hands', 'armor', 'leather', 'Glistening Murkglider Pelts', 2, 'The Ruined City of Dranik and the Wall of Slaughter.', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Leather Sleeves', 'Tier1 Armor', 'arms', 'armor', 'leather', 'Dansk Blossom', 2, 'Noble''s Causeway, Ruined City of Dranik', 0, 1, '')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Boots', 'Tier1 Armor', 'feet', 'armor', 'plate', 'Armmaster''s Boots', 1, 'Warrior Boots', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Bracer', 'Tier1 Armor', 'wrists', 'armor', 'plate', 'Armmaster''s Bracer', 1, 'Warrior Bracer', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Breastplate', 'Tier1 Armor', 'chest', 'armor', 'plate', 'Armmaster''s Breastplate', 1, 'Warrior BP', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Gloves', 'Tier1 Armor', 'hands', 'armor', 'plate', 'Armmaster''s Gloves', 1, 'Warrior Gloves', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Helm', 'Tier1 Armor', 'head', 'armor', 'plate', 'Armmaster''s Helm', 1, 'Warrior Helm', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Leggings', 'Tier1 Armor', 'legs', 'armor', 'plate', 'Armmaster''s Leggings', 1, 'Warrior Leggings', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
INSERT INTO quest_data (expansion, quest_name, quest_cat, item_slot, item_type, restriction, item_name, quantity, extra_info, is_reward, item_step, reward_restriction)
VALUES ('Omens of War', 'T1 Plate Sleeves', 'Tier1 Armor', 'arms', 'armor', 'plate', 'Armmaster''s Sleeves', 1, 'Warrior Sleeves', 1, 999, 'war')
ON CONFLICT(expansion, quest_name, quest_cat, item_slot, item_type, item_name)
DO UPDATE SET quantity = excluded.quantity,extra_info = excluded.extra_info,is_reward = excluded.is_reward,item_step = excluded.item_step,reward_restriction = excluded.reward_restriction;
COMMIT;
