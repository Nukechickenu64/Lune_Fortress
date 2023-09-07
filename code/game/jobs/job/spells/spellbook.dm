obj/item/book/spell
	name = "uknown spellbook"
	desc = "a spellbook with no spells"
	var/obj/item/spellorb/spell = /obj/item/spellorb
	var/uses = 5

obj/item/book/spellmulti
	name = "advanced spellbook"
	desc = "a spellbook with multiple spells stored and infinite uses as it was treated with sacred oils"
	var/list/spells

obj/item/book/spellmulti/attack_self(mob/living/carbon/human/user)
	. = ..()
	var/obj/item/spellorb/chosenspell = input(user, "pick a spell","spells to teach yourself", null) as obj in spells
	if(!user.knownspells.Find(chosenspell.type))
		var/obj/item/spellorb/newspell = new chosenspell.type()
		user.knownspells += newspell
	else
		to_chat(user,"you already have the spell in mind")


obj/item/book/spell/attack_self(mob/living/carbon/human/user)
	. = ..()
	if(uses > 0 && !user.knownspells.Find(spell))
		var/obj/item/spellorb/newspell = new spell.type()
		user.knownspells += newspell
	else
		if(uses > 0)
			to_chat(user,"the book has been studied so vigorously the words are faded and incomprehensible!")
		else
			to_chat(user,"you already have the spell in mind")

obj/item/book/spell/smallhealing
	name = "small healing spellbook"
	desc = "a spellbook with small healing wrote into"
	spell = /obj/item/spellorb/smallheal
	uses = 5

obj/item/book/spellmulti/healing
	name = "advanced healing spellbook"
	desc = "a spellbook with multiple spells stored and infinite uses as it was treated with sacred oils"
	spells = list(/obj/item/spellorb/smallheal,/obj/item/spellorb/largeheal,/obj/item/spellorb/mediumheal)
