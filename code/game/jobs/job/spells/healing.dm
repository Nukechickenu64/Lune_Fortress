/obj/item/spellorb/smallheal
	name = "small heal"
	desc = "use this on someone to heal them"
	var/timer = 0

/obj/item/spellorb/smallheal/attack(mob/living/M, mob/living/user, def_zone, special)
	. = ..()
	if(world.time >= timer)
		M.heal_overall_damage(10, 10)
		to_chat(user,"you healed [M]")
		to_chat(M,"you feel a tingling sensation around your wounds")
		timer = world.time + 10
	else
		to_chat(user,"you need to wait a bit to cast this again")

/obj/item/spellorb/mediumheal
	name = "medium heal"
	desc = "use this on someone to heal them"
	var/timer = 0

/obj/item/spellorb/mediumheal/attack(mob/living/M, mob/living/user, def_zone, special)
	. = ..()
	if(world.time >= timer)
		M.heal_overall_damage(50, 50)
		to_chat(user,"you healed [M]")
		to_chat(M,"you feel a tingling sensation around your wounds")
		timer = world.time + 300
	else
		to_chat(user,"you need to wait a bit to cast this again")


/obj/item/spellorb/largeheal
	name = "large heal"
	desc = "use this on someone to heal them"
	var/timer = 0

/obj/item/spellorb/largeheal/attack(mob/living/M, mob/living/user, def_zone, special)
	. = ..()
	if(world.time >= timer)
		M.heal_overall_damage(100, 100)
		user.apply_damage(60)
		to_chat(user,"you healed [M]")
		to_chat(M,"you feel a tingling sensation around your wounds")
		del(src)
	else
		to_chat(user,"you need to wait a bit to cast this again")

/obj/item/spellorb/revive
	name = "raise dead"
	desc = "use this on a corpse to raise it"
	var/timer = 0

/obj/item/spellorb/revive/attack(mob/living/carbon/human/M, mob/living/user, def_zone, special)
	. = ..()
	if(M.stat == DEAD)
		M.zombify()
		M.rejuvenate()
		user.visible_message("<span class ='combatbold'>[user]</span><span class ='combat'> revives [M] with a zombie spell!!!")
		del(src)
	else
		to_chat(user, "you can't do this to living people")


/obj/item/spellorb/taint
	name = "taint living"
	desc = "use this on someone to make them immortal"
	var/timer = 0

/obj/item/spellorb/taint/attack(mob/living/carbon/human/M, mob/living/user, def_zone, special)
	. = ..()
	if(M.name != user.name)
		M.zombie_infect()
		user.visible_message("<span class ='combatbold'>[user]</span><span class ='combat'> infects [M] with a zombie spell!!!")
		del(src)