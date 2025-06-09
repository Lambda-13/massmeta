/obj/item/grenade/supermatter_foam
    name = "Supermatter Foam Grenade"
    desc = "A grenade that deploys stabilized crystal mass."
    icon = 'modular_meta/features/smfoam/icons/supermatter_foam.dmi'
    icon_state = "supermatter_foam"
    inhand_icon_state = "flashbang"
    worn_icon_state = "flashbang"
    det_time = 3 SECONDS
    var/radius = 3
    var/crystal_spawn_count = 5
	var/gpsname = null


/obj/item/grenade/supermatter_foam/attack_self(mob/user)
    to_chat(user, span_notice("You blow a kiss at [src], activating it."))
	playsound(src, '', 60, TRUE)
	icon_state = "supermatter_foam_primed"
    addtimer(CALLBACK(src, PROC_REF(detonate)), det_time)

/obj/item/grenade/supermatter_foam/detonate(mob/living/lanced_by)
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

/obj/item/grenade/supermatter_foam/shitfuck
	name = "Supermatter Foam Grenade"
	desc = "Bigger is better. Twenty times better, to be clear."
	radius = 10
	crystal_spawn_count = 100

/obj/item/grenade/supermatter_foam/shitfuck/Initialize(mapload)
	. = ..()
	update_transform(10)
	gpsname = pick("Shitfuck", "Universe Death", "Administrator Watermelon", "Oh no", "langiS tnatsiD", "GOD IS HERE", "ImadethisitemonlyusingCHATGPT", "Syndicate Commander's ass", "bsa target", "spongebob is my best friend")
	AddComponent(/datum/component/gps, gpsname)
