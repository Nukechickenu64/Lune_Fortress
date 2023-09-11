/obj/item/device/pocketterm
	name = "Pocket Terminal"
	desc = "A portable microterminal by Thinktronic Systems, LTD."
	icon = 'icons/obj/pda.dmi'
	icon_state = "pda"
	item_state = "electronic"
	w_class = 1.0
	flags = FPRINT | TABLEPASS
	slot_flags = SLOT_ID | SLOT_BELT
	var/port
	var/address

/obj/item/device/pocketterm/attack_self(mob/user)
	. = ..()
	var/html = file2text('code/modules/lifeweb/html/terminal.html')
	var/client/C = user.client
	C << browse_rsc('code/modules/lifeweb/html/background.png', "background.png")
	C << browse_rsc('code/modules/lifeweb/html/PTSANS.ttf', "PTSANS.ttf")

	sleep(5)
	winshow(usr, "pocket_terminal", 1)
	C << browse(html, "window=pocket_terminal;display=1; border=0;can_close=1; can_resize=1;")