/obj/item/clothing/mask/gas/mime
	icon = 'modular_meta/features/edit_masks/icons/masks.dmi'
	worn_icon = 'modular_meta/features/edit_masks/icons/mask.dmi'

/obj/item/clothing/mask/gas/mime/Initialize(mapload)
	.=..()
	mimemask_designs += list(
		"Joker" = image(icon = 'modular_meta/features/edit_masks/icons/masks.dmi', icon_state = "mimejoker")
		)
