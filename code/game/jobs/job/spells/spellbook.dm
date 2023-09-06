obj/item/book/spell
	name = "uknown spellbook"
	desc = "a spellbook with no spells"
	var/obj/item/spellorb/spell = /obj/item/spellorb
	var/uses = 5

obj/item/book/spell/attack_self(mob/living/carbon/human/user)
	. = ..()
	if(uses > 0)
		user.teach_spell(spell)
	else
		to_chat(user,"the book has been studied so vigorously the words are faded and incomprehensible!")
