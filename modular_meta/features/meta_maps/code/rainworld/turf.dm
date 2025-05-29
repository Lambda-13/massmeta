/turf/closed/mineral/random/rainworld
	name = "wet rocks"
	icon = MAP_SWITCH('icons/turf/walls/rock_wall.dmi', 'icons/turf/walls/rock_wall.dmi')
	icon_state = "rock_wall"
	base_icon_state = "rock_wall"
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_BORDER
	canSmoothWith = SMOOTH_GROUP_CLOSED_TURFS
	defer_change = TRUE
	turf_type = /turf/open/misc/ashplanet/wateryrock/rainworld
	baseturfs = /turf/open/misc/ashplanet/wateryrock/rainworld
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	weak_turf = TRUE
	mineralChance = 35

/turf/closed/mineral/random/rainworld/mineral_chances()
	return list(
		/obj/item/stack/ore/bluespace_crystal = 1,
		/obj/item/stack/ore/diamond = 1,
		/obj/item/stack/ore/gold = 4,
		/obj/item/stack/ore/iron = 20,
		/obj/item/stack/ore/plasma = 7,
		/obj/item/stack/ore/silver = 6,
		/obj/item/stack/ore/titanium = 4,
		/obj/item/stack/ore/uranium = 2,
	)

/turf/open/misc/ashplanet/rocky/rainworld
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	slowdown = 0
	baseturfs = /turf/open/misc/ashplanet/wateryrock/rainworld

/turf/open/misc/ashplanet/wateryrock/rainworld
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	slowdown = 0
	baseturfs = /turf/open/misc/ashplanet/wateryrock/rainworld

/turf/open/water/attackby(obj/item/C, mob/user, list/modifiers)
	..()
	if(istype(C, /obj/item/stack/rods/water))
		var/obj/item/stack/rods/water/R = C
		var/obj/structure/lattice/water/H = locate(/obj/structure/lattice/water, src)
		if(H)
			to_chat(user, span_warning("There is already a lattice here!"))
			return
		if(R.use(1))
			to_chat(user, span_notice("You construct a lattice."))
			playsound(src, 'sound/items/weapons/genhit.ogg', 50, TRUE)
			new /obj/structure/lattice/water(locate(x, y, z))
		else
			to_chat(user, span_warning("You need one rod to build a waterproof lattice."))
		return

/turf/open/water/rcd_vals(mob/user, obj/item/construction/rcd/the_rcd)
	if(the_rcd.mode == RCD_TURF && the_rcd.rcd_design_path == /turf/open/floor/plating/rcd)
		return list("delay" = 0, "cost" = 3)
	return FALSE

/turf/open/water/rcd_act(mob/user, obj/item/construction/rcd/the_rcd, list/rcd_data)
	if(rcd_data["[RCD_DESIGN_MODE]"] == RCD_TURF && rcd_data["[RCD_DESIGN_PATH]"] == /turf/open/floor/plating/rcd)
		place_on_top(/turf/open/floor/plating, flags = CHANGETURF_INHERIT_AIR)
		return TRUE
	return FALSE

/turf/open/water/no_planet_atmos/deep/planetary_atmos
	name = "deep water"
	desc = "Less shallow water."
	icon_state = "deep_riverwater_motion"
	immerse_overlay = "immerse_deep"
	planetary_atmos = TRUE
	initial_gas_mix = OPENTURF_LOW_PRESSURE
	baseturfs = /turf/open/water/no_planet_atmos/deep/planetary_atmos
