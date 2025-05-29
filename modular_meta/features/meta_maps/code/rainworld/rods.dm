/obj/item/stack/rods/water
	name = "water resistant rod"
	desc = "Because regular rods do not support you. Too bad!"
	singular_name = "water resistant rod"
	icon_state = "rods"
	inhand_icon_state = "rods"
	color = "#5286b9ff"
	obj_flags = CONDUCTS_ELECTRICITY
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF | LAVA_PROOF
	merge_type = /obj/item/stack/rods/water

/obj/structure/lattice/water
	name = "waterproof support lattice"
	desc = "A specialized support beam for building across water. Watch your step."
	give_turf_traits = list(TRAIT_LAVA_STOPPED, TRAIT_CHASM_STOPPED, TRAIT_IMMERSE_STOPPED, TRAIT_HYPERSPACE_STOPPED)
