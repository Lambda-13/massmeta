/datum/emote/living/carbon/medic_so
	key = "medic_so"
	name = "medic! (soldier)"
	key_third_person = "calls for medic"
	message = "calls a medic!"
	cooldown = 4 SECONDS
	emote_type = EMOTE_VISIBLE | EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/medic_so/get_sound(mob/living/user)
	return pick(
			'modular_meta/features/new_emotes/sound/medic_so01.wav',
			'modular_meta/features/new_emotes/sound/medic_so02.wav',
			'modular_meta/features/new_emotes/sound/medic_so03.wav',
			'modular_meta/features/new_emotes/sound/medic_so04.wav',
	)

/datum/emote/living/carbon/thanks_so
	key = "thanks_so"
	name = "thanks! (soldier)"
	key_third_person = "says thanks"
	message = "says thanks and makes 👍!"
	cooldown = 4 SECONDS
	emote_type = EMOTE_VISIBLE | EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/thanks_so/get_sound(mob/living/user)
	return pick(
			'modular_meta/features/new_emotes/sound/thanks_so01.wav',
			'modular_meta/features/new_emotes/sound/thanks_so02.wav',
			'modular_meta/features/new_emotes/sound/thanks_so03.wav',
	)

/datum/emote/living/carbon/helpme_so
	key = "helpme_so"
	name = "help! (soldier)"
	key_third_person = "call for help"
	message = "calls for help!"
	cooldown = 4 SECONDS
	emote_type = EMOTE_VISIBLE | EMOTE_AUDIBLE
	vary = TRUE

/datum/emote/living/carbon/helpme_so/get_sound(mob/living/user)
	return pick(
			'modular_meta/features/new_emotes/sound/helpme_so01.wav',
			'modular_meta/features/new_emotes/sound/helpme_so02.wav',
			'modular_meta/features/new_emotes/sound/helpme_so03.wav',
	)
