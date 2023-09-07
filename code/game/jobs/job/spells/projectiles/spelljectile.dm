/obj/item/projectile/spelljectile


/obj/item/spellorb/projectile
	name = "projectile spell"
	var/uses = 1
	var/should_sound
	var/fire_sound
	var/obj/item/projectile/spelljectile
	var/recoil = 0
	var/light_ra
	var/light_pw
	var/light_color_b
	var/silenced

/obj/item/spellorb/projectile/afterattack(atom/target, mob/user, proximity, params)
	. = ..()
	if(istype(user, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		if(H.hasActiveShield(1))
			user.visible_message("<span class='hitbold'>[user]'s [src] projectile</span> <span class='hit'>is deflected by \his own energy shield!</span>")
			playsound(H.loc, 'sound/effects/energyparrylas.ogg', 100, 1)
			Fire(user,user,params)
		else
			Fire(target,user,params)
	else
		Fire(target,user,params) //Otherwise, fire normally.



/obj/item/spellorb/projectile/proc/Fire(atom/target as mob|obj|turf|area, mob/living/user as mob|obj, params, pointblank=0, reflex = 0)
	var/mob/living/carbon/human/HHC = user
	if(HHC.gloves)
		var/obj/item/clothing/gloves/G = HHC.gloves
		if(G.blocks_firing)
			to_chat(user,"<span class='combatbold'><span class='combat'>[pick(fnord)]</span> I can't pull the trigger in these gloves!</span>")
			return
	var/list/new3d6Roll = roll3d6(HHC,SKILL_RANGE,null)
	switch(new3d6Roll[GP_RESULT])
		if(GP_CRITFAIL)
			return 0

	var/turf/curloc = get_turf(user)
	var/turf/targloc = get_turf(target)
	if (!istype(targloc) || !istype(curloc))
		return
	
	spelljectile.firer = user
	spelljectile.def_zone = user.zone_sel.selecting

	var/mob/living/carbon/human/H = user
	if(recoil)
		spawn()
			if(H.my_skills.get_skill(SKILL_RANGE) <= 3)
				shake_camera(H, recoil + 1, recoil)

	if(should_sound)
		playsound(user, fire_sound, 1000, 1)

		if(istype(target, /mob))
			user.visible_message("<span class='hitbold'>[user] shoots at [target] with [src][reflex ? " by reflex":""]!</span>")
		else
			user.visible_message("<span class='hitbold'>[user] shoots at [target] with [src][reflex ? " by reflex":""]!</span>")
	
	if(params)
		var/list/mouse_control = params2list(params)
		if(mouse_control["icon-x"])
			spelljectile.p_x = text2num(mouse_control["icon-x"])
		if(mouse_control["icon-y"])
			spelljectile.p_y = text2num(mouse_control["icon-y"])

	spawn(0)
		set_light(light_ra, light_pw, light_color_b)

		spawn(3)
			set_light(0)

	spelljectile.original = target
	spelljectile.loc = get_turf(user)
	spelljectile.starting = get_turf(user)
	spelljectile.shot_from = src
	user.next_move = world.time + 4
	spelljectile.current = curloc
	spelljectile.yo = targloc.y - curloc.y
	spelljectile.xo = targloc.x - curloc.x
	if(params)
		var/list/mouse_control = params2list(params)
		if(mouse_control["icon-x"])
			spelljectile.p_x = text2num(mouse_control["icon-x"])
		if(mouse_control["icon-y"])
			spelljectile.p_y = text2num(mouse_control["icon-y"])

	spawn()
		if(spelljectile)
			spelljectile.process()
	
	update_icon()

	user.sound2()

	if(user.hand)
		user.update_inv_l_hand()
	else
		user.update_inv_r_hand()

	user.newtonian_move(get_dir(target, user))
	if(uses <= 0)
		del(src)
	if(user.hand)
		user.update_inv_l_hand()
	else
		user.update_inv_r_hand()
