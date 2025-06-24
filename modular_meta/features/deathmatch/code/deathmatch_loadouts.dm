/datum/outfit/deathmatch_loadout/prisoner
	name = "Deathmatch: Prisoner"
	display_name = "Prisoner"
	desc = "You must have committed war crimes"

	uniform = /obj/item/clothing/under/rank/prisoner
	back = /obj/item/storage/backpack
	box = /obj/item/storage/box/survival/prisoner
	shoes = /obj/item/clothing/shoes/sneakers/orange

/datum/outfit/deathmatch_loadout/savage
	name = "Deathmatch: Melee Savage"
	display_name = "Melee Savage"
	desc = "Unga!"

	back = /obj/item/storage/backpack/satchel/leather
	shoes = /obj/item/clothing/shoes/sandal
	head = /obj/item/clothing/head/helmet/skull
	l_hand = /obj/item/spear/bamboospear
	backpack_contents = list(
		/obj/item/food/grown/ambrosia/deus = 2,
	)

/datum/outfit/deathmatch_loadout/savage/ranged
	name = "Deathmatch: Ranged Savage"
	display_name = "Ranged Savage"
	desc = "Ooga-booga?"

	back = /obj/item/storage/backpack/satchel/leather
	shoes = /obj/item/clothing/shoes/sandal
	mask = /obj/item/clothing/mask/gas/tiki_mask
	head = null
	l_hand = /obj/item/gun/ballistic/bow
	r_hand = /obj/item/ammo_casing/arrow
	backpack_contents = list(
		/obj/item/ammo_casing/arrow = 3,
		/obj/item/stack/medical/poultice = 2,
	)

/datum/outfit/deathmatch_loadout/saloon/bartender
	name = "Deathmatch: Bartender"
	display_name = "Bartender"
	desc = "Drunkin' assholes wants from me some drinks, i will feed 'em some bullets."

	neck = /obj/item/clothing/neck/bowtie
	uniform = /obj/item/clothing/under/costume/buttondown/slacks/service
	belt = /obj/item/storage/belt/bandolier
	suit = /obj/item/clothing/suit/armor/vest
	backpack_contents = list(
		/obj/item/storage/box/beanbag = 1,
		)
	ears = /obj/item/radio/headset/headset_srv
	glasses = /obj/item/clothing/glasses/sunglasses/reagent
	shoes = /obj/item/clothing/shoes/laceup
	suit_store = /obj/item/gun/ballistic/shotgun/doublebarrel

	backpack = /obj/item/storage/backpack
