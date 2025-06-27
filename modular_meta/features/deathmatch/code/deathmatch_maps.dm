/datum/lazy_template/deathmatch/the_permabrig
	name = "The Permabrig"
	desc = "A recreation of ProtoBoxStation Permabrig."
	max_players = 8
	allowed_loadouts = list(/datum/outfit/deathmatch_loadout/prisoner)
	map_name = "protobox_permabrig"
	key = "protobox_permabrig"

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
