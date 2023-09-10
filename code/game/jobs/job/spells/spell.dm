/mob/living/carbon/human
	var/list/knownspells = list()
	var/list/spellmemory = list()

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
	

/mob/living/carbon/human/proc/remembermagic()
	set hidden = 0
	set category ="magic"
	set name = "rememberspell"
	set desc = "summon magic to your mind"

	var/obj/item/spellorb/chosenspell = input(src, "pick a spell","remembered spells", null) as obj in src.spellmemory
	var/obj/item/spellorb/newspell = new chosenspell.type()
	knownspells += newspell

/obj/item/spellorb
	name = "ball of energy"
	desc = "god knows what will come of this"
	icon_state = "default"
	icon = 'icons/obj/spells.dmi'
	w_class = 4
	weight = 40

/mob/living/carbon/human/proc/teach_spellunr(var/spellpath)
	knownspells += new spellpath

/mob/living/carbon/human/proc/teach_spell(var/spellpath)
	if(!spellmemory.Find(spellpath))
		knownspells += new spellpath


/mob/living/carbon/human/proc/retain_spell(var/spellpath)
	if(!knownspells.Find(spellpath))
		spellmemory += new spellpath

/obj/item/spellorb/throw_at(atom/target, range, speed, /mob/living/carbon/human/thrower)
	. = ..()
	del(src)

/obj/item/spellorb/dropped()
	. = ..()
	del(src)

/obj/item/spellorb/on_exit_storage(obj/item/storage/S, new_location)
	. = ..()
	del(src)

/obj/item/spellorb/on_enter_storage(obj/item/storage/S)
	. = ..()
	del(src)