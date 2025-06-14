//////////////////////////////////////////////
//                                          //
//        ROUNDSTART SINFUL DEMON           //
//                                          //
//////////////////////////////////////////////

/datum/dynamic_ruleset/roundstart/sinfuldemon
	name = "Demon of Sin"
	antag_flag = ROLE_SINFULDEMON
	antag_datum = /datum/antagonist/sinfuldemon
	protected_roles = list(
		// Command
		JOB_CAPTAIN, JOB_HEAD_OF_PERSONNEL, JOB_HEAD_OF_SECURITY,
		// Security
		JOB_WARDEN, JOB_SECURITY_OFFICER, JOB_DETECTIVE,
		// Curator
		JOB_CHAPLAIN,
	)
	restricted_roles = list(
		JOB_AI,
		JOB_CYBORG,
	)
	required_candidates = 1
	minimum_players = 10
	weight = 5
	cost = 10
	scaling_cost = 9
	requirements = list(10,10,10,10,10,10,10,10,10,10)

/datum/dynamic_ruleset/roundstart/sinfuldemon/pre_execute(population)
	. = ..()
	var/num_sinfuldemons = get_antag_cap(population) * (scaled_times + 1)

	for(var/i = 1 to num_sinfuldemons)
		if(candidates.len <= 0)
			break
		var/mob/selected_mobs = pick_n_take(candidates)
		assigned += selected_mobs.mind
		selected_mobs.mind.special_role = ROLE_SINFULDEMON
		selected_mobs.mind.restricted_roles = restricted_roles
		GLOB.pre_setup_antags += selected_mobs.mind
	return TRUE

//////////////////////////////////////////////
//                                          //
//          LATEJOIN SINFUL DEMON           //
//                                          //
//////////////////////////////////////////////

/datum/dynamic_ruleset/latejoin/sinfuldemon
	name = "Demon Infiltration"
	antag_datum = /datum/antagonist/sinfuldemon
	antag_flag = ROLE_DEMONINFILTRATION
	antag_flag_override = ROLE_SINFULDEMON
	protected_roles = list(
		JOB_CAPTAIN, JOB_HEAD_OF_PERSONNEL, JOB_HEAD_OF_SECURITY,
		JOB_WARDEN, JOB_SECURITY_OFFICER, JOB_DETECTIVE,
		JOB_CHAPLAIN,
	)
	restricted_roles = list(
		JOB_AI,
		JOB_CYBORG,
	)
	required_candidates = 1
	minimum_players = 10
	weight = 5
	cost = 10
	requirements = list(10,10,10,10,10,10,10,10,10,10)
	repeatable = FALSE

/datum/dynamic_ruleset/latejoin/sinfuldemon/execute()
	var/mob/latejoiner = pick(candidates) // This should contain a single player, but in case.
	assigned += latejoiner.mind
	return TRUE
