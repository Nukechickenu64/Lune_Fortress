/obj/item/spellorb/smallheal
	name = "small heal spell"
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
	name = "medium heal spell"
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
	name = "large heal spell"
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