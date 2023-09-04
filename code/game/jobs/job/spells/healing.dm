/mob/living/carbon/human/proc/minorheal()
	set hidden = 0
	set name = "MinorHeal"
	set desc="Minor Heal"
	set category = "cross"

	if(stat) return

	if(istype(src.get_active_hand(), /obj/item/grab/wrench))
		var/obj/item/grab/wrench/W = get_active_hand()
		var/mob/living/carbon/human/H = W.affecting
		H.heal_overall_damage(10,10)
		to_chat(src, "You have healed [H.name].")
		message_admins("worked")
		to_chat(H, "You have been healed by [src.name]")