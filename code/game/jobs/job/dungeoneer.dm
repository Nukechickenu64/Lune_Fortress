/datum/job/warrior
	title = "Warrior"
	titlebr = "WIGWAM"
	flag = WARRIOR
	latejoin_locked = FALSE
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 2, STAT_DX = 2, STAT_HT = 1, STAT_IN = 0)
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
	list(SKILL_SWORD,5,9),
	list(SKILL_MELEE,4,9),
	list(SKILL_RANGE, 1,1),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,0),
	list(SKILL_CLIMB,3,5),
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
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/vest/iron_breastplate, slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/claymore/gladius, slot_belt)
		H.equip_to_slot_or_del(new /obj/item/shield/wood, slot_back)
		H.create_kg()
		return 1

/datum/job/rouge
	title = "Rogue"
	titlebr = "ROGER"
	flag = ROGUE
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 1, STAT_DX = 3, STAT_HT = 1, STAT_IN = 0)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained sneak and assassin ready to strike from the shadows."
	jobdescbr = "You are a trained sneak and assassin ready to strike from the shadows."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,0),
	list(SKILL_MELEE,2,6),
	list(SKILL_RANGE, 1,1),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,0),
	list(SKILL_CLIMB,9,10),
	list(SKILL_PARTY,1,4),
	list(SKILL_SWIM,7,9),
	list(SKILL_MUSIC, 0,1),
	list(SKILL_OBSERV, 2,8),
	list(SKILL_UNARM, 3,7),
	list(SKILL_STEAL, 5,9),
	list(SKILL_SNEAK, 5,9),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/thief(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/daggerssheath/iron(H), slot_wrist_l)
		H.equip_to_slot_or_del(new /obj/item/storage/backpack/svalinncloak(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/lockpick(H), slot_l_store)
		H.equip_to_slot_or_del(new /obj/item/lockpick(H), slot_r_store)
		H.create_kg()
		H.acrobat = 1
		return 1

/datum/job/bard
	title = "Bard"
	titlebr = "Bardou"
	flag = BARD
	latejoin_locked = FALSE
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 1, STAT_DX = 1, STAT_HT = 4, STAT_IN = 3)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained bard ready to wow the land with your fantastical music."
	jobdescbr = "You are a trained bard ready to wow the land with your fantastical music."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,0),
	list(SKILL_MELEE,0,1),
	list(SKILL_RANGE, 1,1),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,4.7),
	list(SKILL_CLIMB,1,4),
	list(SKILL_PARTY,2,9),
	list(SKILL_SWIM,7,9),
	list(SKILL_MUSIC, 9,10),
	list(SKILL_OBSERV, 4,8),
	list(SKILL_UNARM, 3,4),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/clown(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/sandal(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/daggerssheath/iron(H), slot_wrist_l)
		H.equip_to_slot_or_del(new /obj/item/musical_instrument/baliset/guitar(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/musical_instrument/baliset(H), slot_back2)
		H.create_kg()
		H.add_verb(list(/mob/living/carbon/human/proc/apelidar,
				/mob/living/carbon/human/proc/malabares,
				/mob/living/carbon/human/proc/rememberjoke,
				/mob/living/carbon/human/proc/joke,
				/mob/living/carbon/human/proc/remembersong,
				/mob/living/carbon/human/proc/sing))
		return 1

/datum/job/barbarian
	title = "Barbarian"
	titlebr = "Barbie"
	flag = BARBARIAN
	latejoin_locked = FALSE
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 6, STAT_DX = 1, STAT_HT = 5, STAT_IN = 0)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You smash monsters, ragah aggah."
	jobdescbr = "You smash monsters, ragah aggah."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,3,4),
	list(SKILL_MELEE,1,4),
	list(SKILL_RANGE, 1,1),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,4.7),
	list(SKILL_CLIMB,1,4),
	list(SKILL_PARTY,0),
	list(SKILL_SWIM,3,4),
	list(SKILL_MUSIC, 0),
	list(SKILL_OBSERV, 4,8),
	list(SKILL_UNARM, 5,9),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/sandal(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/claymore/bardiche(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/amulet/lechery, slot_l_hand)
		H.create_kg()
		return 1

/datum/job/monk
	title = "Monk"
	titlebr = "Monkie"
	flag = MONK
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 3, STAT_DX = 4, STAT_HT = 1, STAT_IN = 4)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained monk, you honestly dont know why you're here."
	jobdescbr = "You are a trained monk, you honestly dont know why you're here."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,3,4),
	list(SKILL_MELEE,1,6),
	list(SKILL_RANGE, 1,1),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,4.7),
	list(SKILL_CLIMB,5,8),
	list(SKILL_PARTY,0),
	list(SKILL_SWIM,3,4),
	list(SKILL_MUSIC, 0),
	list(SKILL_OBSERV, 4,8),
	list(SKILL_UNARM, 5,9),
	list(SKILL_THROW, 5,9),
	list(SKILL_STAFF, 5,9),
	list(SKILL_SURVIV, 5,9)
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/common(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/sandal(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/melee/classic_baton/staff(H), slot_back)
		H.create_kg()
		H.acrobat = 1
		return 1

/datum/job/ranger
	title = "Ranger"
	titlebr = "Rango"
	flag = RANGER
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 0, STAT_DX = 2, STAT_HT = 1, STAT_IN = 2)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained sharpshooter with a gun and some ammo."
	jobdescbr = "You are a trained sharpshooter with a gun and some ammo."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,1,2),
	list(SKILL_MELEE,1,6),
	list(SKILL_RANGE, 7,9),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,4.7),
	list(SKILL_CLIMB,2,4),
	list(SKILL_PARTY,0),
	list(SKILL_SWIM,3,4),
	list(SKILL_MUSIC, 0),
	list(SKILL_OBSERV, 2,9),
	list(SKILL_UNARM, 0,3),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/common(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/sandal(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/gun/projectile/shotgun/princess(H), slot_back2)
		H.equip_to_slot_or_del(new /obj/item/storage/backpack(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/stack/bullets/rifle/nine(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/stack/bullets/rifle/nine(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/stack/bullets/rifle/nine(H), slot_in_backpack)
		H.create_kg()
		return 1

/datum/job/paladin
	title = "Paladin"
	titlebr = "Palestine"
	flag = PALADIN
	latejoin_locked = FALSE
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 2, STAT_DX = 0, STAT_HT = 3, STAT_IN = 1)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained knight fighting horrors for god."
	jobdescbr = "You are a trained knight fighting horrors for god."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,5,9),
	list(SKILL_MELEE,1,6),
	list(SKILL_RANGE, 3,4),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,4.7),
	list(SKILL_CLIMB,2,4),
	list(SKILL_PARTY,0),
	list(SKILL_SWIM,3,4),
	list(SKILL_MUSIC, 0),
	list(SKILL_OBSERV, 2,9),
	list(SKILL_UNARM, 3,4),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/vest/iron_plate/crusader(H), slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/chaplain(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/lw/crusader(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/claymore/silver(H), slot_l_hand)
		H.equip_to_slot_or_del(new /obj/item/sheath(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/paladin(H), slot_shoes)
		H.add_perk(/datum/perk/ref/strongback)
		H.terriblethings = TRUE
		H.add_perk(/datum/perk/heroiceffort)
		H.create_kg()
		H.add_verb(/mob/living/carbon/human/proc/sins)
		H.add_verb(/mob/living/carbon/human/proc/eucharisty)
		H.add_verb(/mob/living/carbon/human/proc/undeadead)
		return 1

/datum/job/cleric
	title = "Cleric"
	titlebr = "Clereese"
	flag = CLERIC
	latejoin_locked = FALSE
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 1, STAT_DX = 0, STAT_HT = 3, STAT_IN = 6)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader, or paladin if there is one"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained cleric, fighting and healing for god."
	jobdescbr = "You are a trained cleric, fighting and healing for god."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,2,4),
	list(SKILL_MELEE,1,6),
	list(SKILL_RANGE, 3,4),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,4.7),
	list(SKILL_CLIMB,2,4),
	list(SKILL_PARTY,0),
	list(SKILL_SWIM,3,4),
	list(SKILL_MUSIC, 0),
	list(SKILL_OBSERV, 2,9),
	list(SKILL_UNARM, 3,4),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/chaplain(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/storage/backpack/svalinncloak(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/sheath/claymore(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/paladin(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/amulet/holy/cross/gcopper, slot_r_hand)
		H.equip_to_slot_or_del(new /obj/item/clothing/wrist/bracer/gold, slot_wrist_l)
		H.equip_to_slot_or_del(new /obj/item/clothing/wrist/bracer/gold, slot_wrist_r)
		H.terriblethings = TRUE
		H.create_kg()
		H.add_verb(/mob/living/carbon/human/proc/sins)
		H.add_verb(/mob/living/carbon/human/proc/eucharisty)
		H.add_verb(/mob/living/carbon/human/proc/undeadead)
		H.add_verb(/mob/living/carbon/human/proc/magic)
		H.add_verb(/mob/living/carbon/human/proc/remembermagic)	
		H.retain_spell(/obj/item/spellorb/smallheal)
		H.retain_spell(/obj/item/spellorb/mediumheal)
		H.retain_spell(/obj/item/spellorb/largeheal)
		H.retain_spell(/obj/item/spellorb/projectile/spark)
		return 1

/datum/job/sojourner
	title = "Sojourner"
	titlebr = "Bardou"
	flag = SOJOURNER
	latejoin_locked = FALSE
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 1, STAT_DX = 1, STAT_HT = 4, STAT_IN = 3)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a trained trekker homesteading in the wild."
	jobdescbr = "You are a trained trekker homesteading in the wild."
	thanati_chance = 75
	money = 30
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,0),
	list(SKILL_MELEE,2,4),
	list(SKILL_RANGE, 3,4),
	list(SKILL_FARM,7,9),
	list(SKILL_COOK,7,9),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,4.7),
	list(SKILL_CLIMB,3,4),
	list(SKILL_PARTY,2,9),
	list(SKILL_SWIM,7,9),
	list(SKILL_MUSIC, 9,10),
	list(SKILL_OBSERV, 4,8),
	list(SKILL_UNARM, 8,9),
	list(SKILL_CRAFT, 8,9),
	list(SKILL_SURVIV, 8,9),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/under/common(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/leather(H), slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/leatherboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/gun/projectile/shotgun/princess(H), slot_back2)
		H.equip_to_slot_or_del(new /obj/item/kitchen/utensil/knife/cutelo(H), slot_l_store)
		H.equip_to_slot_or_del(new /obj/item/flame/lighter(H), slot_l_store)
		H.equip_to_slot_or_del(new /obj/item/storage/backpack(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/reagent_containers/glass/beaker/bowl(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/reagent_containers/food/snacks/breadsys/salamistick(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/stack/medical/bruise_pack(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/stack/sheet/wood/full(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/reagent_containers/glass/bottle/cwine(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/reagent_containers/glass/bottle/vwine(H), slot_in_backpack)
		H.equip_to_slot_or_del(new /obj/item/roller(H), slot_in_backpack)
		H.create_kg()
		return 1


/datum/job/prisoner
	title = "Prisoner"
	titlebr = "Bardou"
	flag = PRISONER
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 1, STAT_DX = 1, STAT_HT = 4, STAT_IN = 1)
	faction = "DungeonParty"
	total_positions = 2
	spawn_positions = 2
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a prisoner holding onto the god-kings amulet."
	jobdescbr = "You are a prisoner holding onto the god-kings amulet."
	thanati_chance = 75
	money = 30
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,0,20),
	list(SKILL_MELEE,0,20),
	list(SKILL_RANGE, 0,20),
	list(SKILL_FARM,0,20),
	list(SKILL_COOK,0,20),
	list(SKILL_ENGINE,0,20),
	list(SKILL_SURG,0,20),
	list(SKILL_MEDIC,0,20),
	list(SKILL_CLEAN,0,20),
	list(SKILL_CLIMB,0,20),
	list(SKILL_PARTY,0,20),
	list(SKILL_SWIM,0,20),
	list(SKILL_MUSIC, 0,20),
	list(SKILL_OBSERV, 0,20),
	list(SKILL_UNARM, 0,20),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/handcuffs(H), slot_handcuffed)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/common(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/sandal(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/amulet/holy/cross/old(H), slot_l_store)
		H.create_kg()
		return 1

/datum/job/wizard
	title = "Wizard"
	titlebr = "ROGER"
	flag = WIZARD
	department_flag = DUNGEONEER
	stat_mods = list(STAT_ST = 0, STAT_DX = 0, STAT_HT = 0, STAT_IN = 8)
	faction = "DungeonParty"
	total_positions = 1
	spawn_positions = 1
	supervisors = "The party leader"
	selection_color = "#ddddff"
	idtype = /obj/item/card/id/ltgrey
	jobdesc = "You are a wise wizard."
	jobdescbr = "You are a trained idiot."
	thanati_chance = 75
	access = list(keep,baronquarter)
	minimal_access = list(keep,baronquarter)
	skill_mods = list(
	list(SKILL_SWORD,0),
	list(SKILL_MELEE,2,3),
	list(SKILL_RANGE, 1,9),
	list(SKILL_FARM,0),
	list(SKILL_COOK,0),
	list(SKILL_ENGINE,0),
	list(SKILL_SURG,0),
	list(SKILL_MEDIC,0),
	list(SKILL_CLEAN,0),
	list(SKILL_CLIMB,1,3),
	list(SKILL_PARTY,1,4),
	list(SKILL_SWIM,1,3),
	list(SKILL_MUSIC, 0,1),
	list(SKILL_OBSERV, 2,8),
	list(SKILL_UNARM, 1,7),
	list(SKILL_STEAL, 1,3),
	list(SKILL_SNEAK, 3,4),
	)


	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		..()
		H.voicetype = "noble"
		H.equip_to_slot_or_del(new /obj/item/clothing/head/wizard(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/common(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/lw/sandal(H), slot_shoes)

		H.add_verb(/mob/living/carbon/human/proc/magic)
		H.add_verb(/mob/living/carbon/human/proc/remembermagic)

		H.retain_spell(/obj/item/spellorb/projectile/fireball)
		H.retain_spell(/obj/item/spellorb/largeheal)
		H.retain_spell(/obj/item/spellorb/projectile/mmissile)
		H.create_kg()
		return 1