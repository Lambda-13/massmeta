/obj/projectile/bullet/pellet/shotgun_improvised
	damage = 6
	wound_bonus = -20
	exposed_wound_bonus = 7.5
	damage_falloff_tile = -1.2
	demolition_mod = 2
	embed_type = /datum/embedding/shrapnel

/obj/projectile/bullet/pellet/shotgun_improvised/Initialize(mapload)
	. = ..()
	range = rand(3, 8)
