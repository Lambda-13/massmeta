/**
 *	# Tremere Powers
 *
 *	This file is for Tremere power procs and Bloodsucker procs that deals exclusively with Tremere.
 *	Tremere has quite a bit of unique things to it, so I thought it's own subtype would be nice
 */

/datum/action/cooldown/bloodsucker/targeted/tremere
	name = "Tremere Gift"
	desc = "A Tremere exclusive gift."
	button_icon_state = "power_auspex"
	background_icon_state = "tremere_power_off"
	active_background_icon_state = "tremere_power_on"
	base_background_icon_state = "tremere_power_off"
	button_icon = 'modular_meta/features/antagonists/icons/bloodsuckers/actions_tremere_bloodsucker.dmi'
	background_icon = 'modular_meta/features/antagonists/icons/bloodsuckers/actions_tremere_bloodsucker.dmi'

	// Tremere powers don't level up, we have them hardcoded.
	should_level = FALSE
	// Re-defining these as we want total control over them
	power_flags = BP_AM_TOGGLE|BP_AM_STATIC_COOLDOWN
	purchase_flags = TREMERE_CAN_BUY
	// Targeted stuff
	power_activates_immediately = FALSE

	///The upgraded version of this Power. 'null' means it's the max level.
	var/upgraded_power = null
