#include "pods_controller.dm"
#include "train_controller.dm"

var/vessel_name = ""//"NSV Luna"
var/vessel_type = "ship"
var/list/vessel_z = list(1,2,3,4,5,6)
var/asteroid_z = 8
var/centcomm_z = 6
var/evac_type = "pods"
var/list/accessable_z_levels = list("1" = 10, "2" = 10, "3" = 10, "4" = 10, "5" = 20, "6" = 10, "7" = 20, "8" = 20)


/obj/effect/mapinfo/ship/luna
	name = "NSV Luna"
	shipname = "NSV Luna"
	obj_type = /obj/effect/map/ship/luna
	mapx = 11
	mapy = 10

/obj/effect/map/ship/luna
	shipname = "NSV Luna"
	name = "generic ship"
	desc = "Space faring vessel."
	icon = 'maps/oldweb/overmap/bearcat/bearcat.dmi'
	icon_state = "luna"

var/list/leversinworld = list()

/obj/machinery/key_card/g/magma/Trem
	name = "train lever"
	desc = "Train lever used to move train from station to Firethorn and vice versa."
	icon_state = "lever0"
	airlock_tag = "magma"

/obj/machinery/key_card/g/magma/Trem/New()
	..()
	leversinworld.Add(src)

/obj/machinery/key_card/g/magma/Trem/Station
	name = "fortress lever"

var/global/trainmoving = 0
var/global/trainwhereisit = 2 // 1 fortress 2 station

/obj/machinery/key_card/g/magma/Trem/attack_hand(mob/user)
	var/obj/effect/landmark/mapinfo/MF = locate(/obj/effect/landmark/mapinfo/)
	if(icon_state == "lever1")
		icon_state = "lever0"
	else
		icon_state = "lever1"
	playsound(src.loc, 'sound/effects/lever.ogg', 100, 1)
	spawn(30)
		if(trainmoving)
			return
		else
			if(trainwhereisit == 1)
				for(var/x = 0; x <= MF.trainstop; x++)
					trainmoving = 1
					sleep(2)
					var/value = 1
					if(x == MF.trainstop)
						value = 2
					for(var/obj/O in trainparts)
						O.trainMove(NORTH, value)
					if(x == MF.trainstop)
						trainmoving = 0
						trainwhereisit = 2
						return
			else if(trainwhereisit == 2)
				for(var/x = 0; x <= MF.trainstop; x++)
					trainmoving = 1
					sleep(2)
					var/value = 1
					if(x == MF.trainstop)
						value = 2
					for(var/obj/O in trainparts)
						O.trainMove(SOUTH, value)
					if(x == MF.trainstop)
						trainmoving = 0
						trainwhereisit = 1
						return

