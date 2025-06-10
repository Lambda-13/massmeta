/obj/item/grenade/supermatter_foam
	name = "Supermatter Foam Grenade"
	desc = "A grenade that deploys stabilized crystal mass."
	icon = 'modular_meta/features/smfoam/icons/supermatter_foam.dmi'
	icon_state = "supermatter_foam"
	inhand_icon_state = "flashbang"
	worn_icon_state = "flashbang"
	det_time = 5 SECONDS
	var/radius = 3
	var/crystal_spawn_count = 5
	var/activated = FALSE
	var/adminabuse = FALSE


/obj/item/grenade/supermatter_foam/attack_self(mob/user)
	if(!activated)
		activated = TRUE
		if(adminabuse)
			to_chat(user, span_notice("As you look at [src], your vision is going black. You try to throw [src] away but lose control...."))
		to_chat(user, span_notice("You blow a kiss at [src], activating it! 5 seconds!"))
		if(adminabuse)
			to_chat(user, span_notice("As [src] screeches and turns red you regain control! RUN FOR YOUR LIFE!"))
		playsound(src, 'sound/effects/supermatter.ogg', 20, TRUE)
		addtimer(CALLBACK(src, PROC_REF(detonate)), det_time)
		icon_state = "supermatter_foam_primed"
		return

/obj/item/grenade/supermatter_foam/detonate()
    visible_message(span_danger("The [src] ruptures, spreading supermatter crystal mass everywhere!"))
    playsound(src, 'sound/effects/supermatter.ogg', 60, TRUE)

    var/turf/center = get_turf(src)
    for(var/i = 1 to crystal_spawn_count)
        var/tx = rand(-radius, radius)
        var/ty = rand(-radius, radius)
        var/turf/T = locate(center.x + tx, center.y + ty, center.z)
        if(T && isturf(T))
            new /obj/crystal_mass(T)
    qdel(src)

//admin arbuse

/obj/item/grenade/supermatter_foam/adminabuse
	name = "Supermatter Foam Grenade"
	desc = "Bigger is better. Ten times better, to be clear."
	radius = 10
	crystal_spawn_count = 150
	adminabuse = TRUE

/obj/item/grenade/supermatter_foam/adminabuse/Initialize(mapload)
	. = ..()
	transform = matrix(10, MATRIX_SCALE)
	AddComponent(/datum/component/gps, pick("damn", "Universe Death", "Admin Watermelon", "Oh no", "langiS tnatsiD", "GOD IS HERE", "ImadethisitemonlyusingCHATGPT", "valid", "bsa target", "spongebob is my best friend"))
