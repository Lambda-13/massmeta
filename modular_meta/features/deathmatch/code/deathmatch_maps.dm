/datum/lazy_template/deathmatch/the_permabrig
	name = "The Permabrig"
	desc = "A recreation of MetaStation Permabrig."
	max_players = 8
	allowed_loadouts = list(/datum/outfit/deathmatch_loadout/prisoner)
	map_name = "meta_permabrig"
	key = "meta_permabrig"

/datum/lazy_template/deathmatch/jungle_showdown
	name = "Jungle Showdown"
	desc = "My want to eat, my want to kill"
	max_players = 4
	allowed_loadouts = list(
		/datum/outfit/deathmatch_loadout/savage,
		/datum/outfit/deathmatch_loadout/savage/ranged
	)
	map_name = "jungle_showdown"
	key = "jungle_showdown"

/datum/lazy_template/deathmatch/saloon
	name = "Wild West Saloon"
	desc = "Trouble in Texas Town."
	max_players = 6
	allowed_loadouts = list(
		/datum/outfit/deathmatch_loadout/battler/cowboy,
		/datum/outfit/deathmatch_loadout/saloon/bartender
	)
	map_name = "saloon"
	key = "saloon"
