/datum/uplink_item/role_restricted/turretbox
	name = "Supermatter Mass Delivery Grenade"
	desc = "A grenade that deploys stabilized crystal mass. Safe until activation."
	item = /obj/item/grenade/supermatter_foam
	cost = 15
	restricted_roles = list(JOB_STATION_ENGINEER, JOB_CHIEF_ENGINEER, JOB_ATMOSPHERIC_TECHNICIAN)
