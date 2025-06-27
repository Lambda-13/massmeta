//////////////////////////////////////////////
//                                          //
//        ROUNDSTART BLOODSUCKER            //
//                                          //
//////////////////////////////////////////////

/datum/dynamic_ruleset/roundstart/bloodsucker
	name = "Bloodsuckers"
	config_tag = "Bloodsuckers"
	jobban_flag = ROLE_TRAITOR
	preview_antag_datum = /datum/antagonist/bloodsucker
	pref_flag = ROLE_BLOODSUCKER
	blacklisted_roles = list(
		JOB_HEAD_OF_PERSONNEL,
	)
	min_pop = 10
	weight = 5
	min_antag_cap = 1
	max_antag_cap = 2

/datum/dynamic_ruleset/roundstart/bloodsucker/get_always_blacklisted_roles()
	return ..() | JOB_CURATOR

/datum/dynamic_ruleset/roundstart/bloodsucker/pre_execute(population)
	. = ..()
	var/num_bloodsuckers = get_antag_cap(population) * (scaled_times + 1)

	for(var/i = 1 to num_bloodsuckers)
		if(candidates.len <= 0)
			break
		var/mob/selected_mobs = pick_n_take(candidates)
		assigned += selected_mobs.mind
		selected_mobs.mind.special_role = ROLE_BLOODSUCKER
		selected_mobs.mind.restricted_roles = restricted_roles
		GLOB.pre_setup_antags += selected_mobs.mind
	return TRUE

/datum/dynamic_ruleset/roundstart/bloodsucker/execute()
	for(var/datum/mind/candidate_minds as anything in assigned)
		if(!candidate_minds.make_bloodsucker())
			message_admins("[ADMIN_LOOKUPFLW(candidate_minds)] was selected by the [name] ruleset, but couldn't be made into a Bloodsucker.")
			assigned -= candidate_minds
			continue
		GLOB.pre_setup_antags -= candidate_minds
	return TRUE

//////////////////////////////////////////////
//                                          //
//          MIDROUND BLOODSUCKER            //
//                                          //
//////////////////////////////////////////////

/datum/dynamic_ruleset/midround/from_living/bloodsucker
	name = "Vampiric Accident"
	config_tag = "Vampiric Accident"
	jobban_flag = ROLE_TRAITOR
	midround_type = HEAVY_MIDROUND
	preview_antag_datum = /datum/antagonist/bloodsucker
	pref_flag = ROLE_VAMPIRICACCIDENT
	blacklisted_roles = list(
		JOB_HEAD_OF_PERSONNEL,
	)
	min_pop = 10
	weight = 5
	max_antag_cap = 1
	repeatable = FALSE

/datum/dynamic_ruleset/midround/from_living/bloodsucker/get_always_blacklisted_roles()
	return ..() | JOB_CURATOR

/datum/dynamic_ruleset/midround/from_living/bloodsucker/trim_candidates()
	candidates = living_players
	for(var/mob/living/player in candidates)
		if(!is_station_level(player.z))
			candidates.Remove(player)
		else if(player.mind && (player.mind.special_role || length(player.mind.antag_datums) > 0))
			candidates.Remove(player)

/datum/dynamic_ruleset/midround/from_living/bloodsucker/assign_role(datum/mind/candidate)
	candidate.add_antag_datum(/datum/antagonist/bloodsucker)

//////////////////////////////////////////////
//                                          //
//          LATEJOIN BLOODSUCKER            //
//                                          //
//////////////////////////////////////////////

/datum/dynamic_ruleset/latejoin/bloodsucker
	name = "Bloodsucker Breakout"
	config_tag = "Bloodsucker Breakout"
	jobban_flag = ROLE_TRAITOR
	preview_antag_datum = /datum/antagonist/bloodsucker
	pref_flag = ROLE_BLOODSUCKERBREAKOUT
	blacklisted_roles = list(
		JOB_HEAD_OF_PERSONNEL
	)
	min_pop = 10
	weight = 5
	repeatable = FALSE

/datum/dynamic_ruleset/latejoin/bloodsucker/get_always_blacklisted_roles()
	return ..() | JOB_CURATOR

/datum/dynamic_ruleset/latejoin/bloodsucker/execute()
	var/mob/latejoiner = pick(candidates) // This should contain a single player, but in case.
	assigned += latejoiner.mind

	for(var/datum/mind/candidate_mind as anything in assigned)
		var/datum/antagonist/bloodsucker/bloodsuckerdatum = candidate_mind.make_bloodsucker()
		if(!bloodsuckerdatum)
			assigned -= candidate_mind
			message_admins("[ADMIN_LOOKUPFLW(candidate_mind)] was selected by the [name] ruleset, but couldn't be made into a Bloodsucker.")
			continue
		bloodsuckerdatum.bloodsucker_level_unspent = rand(2,3)
		message_admins("[ADMIN_LOOKUPFLW(candidate_mind)] was selected by the [name] ruleset and has been made into a midround Bloodsucker.")
		log_game("DYNAMIC: [key_name(candidate_mind)] was selected by the [name] ruleset and has been made into a midround Bloodsucker.")
	return TRUE
