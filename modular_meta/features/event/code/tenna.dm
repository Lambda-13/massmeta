#define BB_TENNA_STATE_1 "TENNA_STATE_1"
#define BB_TENNA_STATE_2 "TENNA_STATE_2"
#define BB_TENNA_STATE_3 "TENNA_STATE_3"
#define BB_TENNA_STATE_4 "TENNA_STATE_4"
#define BB_TENNA_STATE_5 "TENNA_STATE_5"
#define BB_TENNA_STATE_6 "TENNA_STATE_6"
#define BB_TENNA_STATE_7 "TENNA_STATE_7"
#define BB_TENNA_STATE_8 "TENNA_STATE_8"

/mob/living/simple_animal/tenna
	name = "tenna"
	real_name = "tenna"
	desc = "Like antenna."
	speak_emote = list("cackles")
	emote_hear = list("cackles","screeches")
	response_help_continuous = "thinks better of touching"
	response_help_simple = "thinks better of touchingt"
	response_disarm_continuous = "flails at"
	response_disarm_simple = "flails at"
	response_harm_continuous = "punches"
	response_harm_simple = "punches"
	icon = 'modular_meta/features/event/icons/tenna.dmi'
	icon_state = "normal_state"
	icon_living = "normal_state"
	mob_biotypes = MOB_ORGANIC|MOB_HUMANOID
	speed = 0
	combat_mode = TRUE
	stop_automated_movement = 1
	status_flags = CANPUSH
	attack_sound = 'modular_meta/features/event/sound/snd_hitcar.ogg'
	death_sound = 'modular_meta/features/event/sound/snd_closet_fall.ogg'
	death_message = "wails in anger and fear as it collapses in defeat!"
	atmos_requirements  = null
	minbodytemp = 0
	maxbodytemp = INFINITY
	faction = list("dark world")
	attack_verb_continuous = "attacks"
	attack_verb_simple = "attacks"
	maxHealth = 22000
	health = 22000
	del_on_death = TRUE

/mob/living/simple_animal/tenna/Initialize(mapload)
	. = ..()
	var/static/list/innate_actions = list(
		/datum/action/cooldown/spell/shapeshift/tenna = BB_TENNA_STATE_1,
		/datum/action/cooldown/spell/shapeshift/tenna/state_2 = BB_TENNA_STATE_2,
		/datum/action/cooldown/spell/shapeshift/tenna/state_3 = BB_TENNA_STATE_3,
		/datum/action/cooldown/spell/shapeshift/tenna/state_4 = BB_TENNA_STATE_4,
		/datum/action/cooldown/spell/shapeshift/tenna/state_5 = BB_TENNA_STATE_5,
		/datum/action/cooldown/spell/shapeshift/tenna/state_6 = BB_TENNA_STATE_6,
		/datum/action/cooldown/spell/shapeshift/tenna/state_7 = BB_TENNA_STATE_7,
		/datum/action/cooldown/spell/shapeshift/tenna/state_8 = BB_TENNA_STATE_8,
	)

	grant_actions_by_list(innate_actions)

/datum/action/cooldown/spell/shapeshift/tenna
	name = "Normal state"
	spell_requirements = NONE
	possible_shapes = list(/mob/living/simple_animal/tenna)

/mob/living/simple_animal/tenna/state_2
	icon_state = "2_state"
	icon_living = "2_state"

/datum/action/cooldown/spell/shapeshift/tenna/state_2
	name = "Shy state"
	possible_shapes = list(/mob/living/simple_animal/tenna/state_2)

/mob/living/simple_animal/tenna/state_3
	icon_state = "3_state"
	icon_living = "3_state"

/datum/action/cooldown/spell/shapeshift/tenna/state_3
	name = "Angry state"
	possible_shapes = list(/mob/living/simple_animal/tenna/state_3)

/mob/living/simple_animal/tenna/state_4
	icon_state = "4_state"
	icon_living = "4_state"

/datum/action/cooldown/spell/shapeshift/tenna/state_4
	name = "Run state"
	possible_shapes = list(/mob/living/simple_animal/tenna/state_4)

/mob/living/simple_animal/tenna/state_5
	icon_state = "5_state"
	icon_living = "5_state"
	icon = 'modular_meta/features/event/icons/tenna3.dmi'

/datum/action/cooldown/spell/shapeshift/tenna/state_5
	name = "Salute state"
	possible_shapes = list(/mob/living/simple_animal/tenna/state_5)

/mob/living/simple_animal/tenna/state_6
	icon_state = "6_state"
	icon_living = "6_state"
	icon = 'modular_meta/features/event/icons/tenna3.dmi'

/datum/action/cooldown/spell/shapeshift/tenna/state_6
	name = "Sad state"
	possible_shapes = list(/mob/living/simple_animal/tenna/state_6)

/mob/living/simple_animal/tenna/state_7
	icon_state = "7_state"
	icon_living = "7_state"
	icon = 'modular_meta/features/event/icons/tenna3.dmi'

/datum/action/cooldown/spell/shapeshift/tenna/state_7
	name = "Scared state"
	possible_shapes = list(/mob/living/simple_animal/tenna/state_7)

/mob/living/simple_animal/tenna/state_8
	icon_state = "dance"
	icon_living = "dance"
	icon = 'modular_meta/features/event/icons/tenna2.dmi'

/datum/action/cooldown/spell/shapeshift/tenna/state_8
	name = "Dancing state"
	possible_shapes = list(/mob/living/simple_animal/tenna/state_8)
