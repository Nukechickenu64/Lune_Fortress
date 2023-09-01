/datum/job/warrior
	title = "Warrior"
	titlebr = "WIGWAM"
	flag = WARRIOR
	department_flag = CIVILIAN
	stat_mods = list(STAT_ST = 2, STAT_DX = 1, STAT_HT = 1, STAT_IN = 0)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained warrior ready to take on the dungeon through sword and shield."
	jobdescbr = "You are a trained warrior ready to take on the dungeon through sword and shield."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	money = 25
	skill_mods = list(
	list(SKILL_SWORD,5,8),
	list(SKILL_MELEE,2,2),
	list(SKILL_RANGE, 1,1),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,0),
	list(SKILL_CLIMB,4,7),
	list(SKILL_PARTY,1,4),
	list(SKILL_SWIM,2,2),
	list(SKILL_MUSIC, 0,1),
	list(SKILL_OBSERV, 2,2),
	list(SKILL_UNARM, 3,6),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/merc_boots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/merc_boots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/vest/iron_breastplate, slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/claymore/gladius, slot_belt)
		H.equip_to_slot_or_del(new /obj/item/shield/wood, slot_back)
		H.create_kg()
		return 1

/datum/job/rouge
	title = "Rogue"
	titlebr = "ROGER"
	flag = ROGUE
	department_flag = CIVILIAN
	stat_mods = list(STAT_ST = 2, STAT_DX = 1, STAT_HT = 1, STAT_IN = 0)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained warrior ready to take on the dungeon through sword and shield."
	jobdescbr = "You are a trained warrior ready to take on the dungeon through sword and shield."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,5,8),
	list(SKILL_MELEE,2,2),
	list(SKILL_RANGE, 1,1),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,0),
	list(SKILL_CLIMB,4,7),
	list(SKILL_PARTY,1,4),
	list(SKILL_SWIM,2,2),
	list(SKILL_MUSIC, 0,1),
	list(SKILL_OBSERV, 2,2),
	list(SKILL_UNARM, 3,6),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/merc_boots(H), slot_shoes)
		H.create_kg()
		return 1
