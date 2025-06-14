/**********************Water Areas**************************/

/area/rainworld
	icon = 'icons/area/areas_station.dmi'
	icon_state = "mining"
	default_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	area_flags = UNIQUE_AREA | FLORA_ALLOWED
	ambience_index = AMBIENCE_ICEMOON
	sound_environment = SOUND_AREA_ICEMOON
	ambient_buzz = 'modular_meta/features/meta_maps/sound/abyssal_station.ogg'
	allow_shuttle_docking = TRUE

/area/rainworld/surface
	name = "Rainworld"
	icon_state = "explored"
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	area_flags = UNIQUE_AREA | FLORA_ALLOWED
	area_has_base_lighting = 1
	base_lighting_alpha = 110
	base_lighting_color = "#66ccff"

/area/rainworld/surface/outdoors // parent that defines if something is on the exterior of the station.
	name = "Rainworld Ocean"
	outdoors = TRUE

/// this is the area you use for stuff to not spawn, but if you still want weather.
/area/rainworld/surface/outdoors/nospawn

/area/rainworld/surface/outdoors/noruinsnomonsters // when you want random generation without the chance of getting ruins
	icon_state = "noruins"
	area_flags = UNIQUE_AREA | FLORA_ALLOWED | CAVES_ALLOWED
	map_generator =  /datum/map_generator/cave_generator/rainworld/surface/noruins

/area/rainworld/surface/outdoors/labor_camp
	name = "Rainworld Labor Camp"
	area_flags = UNIQUE_AREA

/area/rainworld/surface/outdoors/unexplored //monsters and ruins spawn here
	icon_state = "unexplored"
	area_flags = UNIQUE_AREA | FLORA_ALLOWED | MOB_SPAWN_ALLOWED | CAVES_ALLOWED
	map_generator = /datum/map_generator/cave_generator/rainworld/surface
