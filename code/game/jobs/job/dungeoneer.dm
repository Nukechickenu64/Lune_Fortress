/datum/job/warrior
	title = "Warrior"
	titlebr = "WIGWAM"
	flag = WARRIOR
	department_flag = ENGSEC
	stat_mods = list(STAT_ST = 2, STAT_DX = 1, STAT_HT = 1, STAT_IN = 0)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = null
	minimal_player_age = 18
	latejoin_locked = TRUE
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
		H.royalty = 1
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/merc_boots(H), slot_shoes)
		H.create_kg()
		return 1
