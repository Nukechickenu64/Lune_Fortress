/obj/item/spellorb/sheal
	name = "small heal spell"
	desc = "use this on someone to heal them"
	var/timer = 0

/obj/item/spellorb/sheal/attack(mob/living/M, mob/living/user, def_zone, special)
	. = ..()
	if(world.time >= timer)
		M.heal_overall_damage(10, 10)
		to_chat(user,"you healed [M]")
		to_chat(M,"you feel a tingling sensation around your wounds")
		timer = world.time + 300
	else
		to_chat(user,"you need to wait a bit to cast this again")