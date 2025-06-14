#define MAX_ARTIFACT_ROLL_CHANCE 10
#define MINERAL_TYPE_OPTIONS_RANDOM 4
#define OVERLAY_OFFSET_START 0
#define OVERLAY_OFFSET_EACH 5
#define MINERALS_PER_BOULDER 3

/obj/structure/ore_vent/random/water
	defending_mobs = list(
		/mob/living/basic/mining/lobstrosity,
		/mob/living/basic/mining/hivelord,
		/mob/living/basic/mining/basilisk,
	)
	ore_vent_options = list(
		SMALL_VENT_TYPE = 3,
		MEDIUM_VENT_TYPE = 5,
		LARGE_VENT_TYPE = 7,
	)
