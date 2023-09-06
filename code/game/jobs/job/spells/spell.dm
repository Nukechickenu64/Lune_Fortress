/mob/living/carbon/human
	var/list/knownspells = list()

/mob/living/carbon/human/proc/magic()
	set hidden = 0
	set category ="magic"
	set name = "domagic"
	set desc = "summon magic to your hand"

	var/obj/item/spellorb/chosenspell = input(src, "pick a spell","known spells", null) as obj in src.knownspells
	if(!src.get_active_hand())
		put_in_active_hand(chosenspell)
	else
		to_chat(src,"you need an empty hand ready")
	
/obj/item/spellorb
	name = "ball of energy"
	desc = "god knows what will come of this"
	icon_state = "default"
	icon = 'icons/obj/spells.dmi'

/mob/living/carbon/human/proc/teach_spellunr(var/spellpath)
	knownspells += new spellpath

/mob/living/carbon/human/proc/teach_spell(var/spellpath)
	if(!knownspells.Find(spellpath))
		knownspells += new spellpath
	else
		to_chat(src,"you already know this spell")

/obj/item/spellorb/throw_at(atom/target, range, speed, thrower)
	. = ..()
	del(src)

/obj/item/spellorb/dropped()
	. = ..()
	del(src)