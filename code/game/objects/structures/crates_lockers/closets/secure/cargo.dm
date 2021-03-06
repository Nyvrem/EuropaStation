/obj/structure/closet/secure_closet/cargotech
	name = "cargo technician's locker"
	req_access = list(access_cargo)
	icon_state = "securecargo1"
	icon_closed = "securecargo"
	icon_locked = "securecargo1"
	icon_opened = "securecargoopen"
	icon_broken = "securecargobroken"
	icon_off = "securecargooff"

	New()
		..()
		if(prob(75))
			new /obj/item/storage/backpack(src)
		else
			new /obj/item/storage/backpack/satchel_norm(src)
		if(prob(25))
			new /obj/item/storage/backpack/dufflebag(src)
		new /obj/item/clothing/under/jumpsuit/gray(src)
		new /obj/item/clothing/shoes/black(src)
		new /obj/item/clothing/gloves/thick(src)
		new /obj/item/clothing/head/soft(src)
//		new /obj/item/cartridge/quartermaster(src)
		return

/obj/structure/closet/secure_closet/quartermaster
	name = "quartermaster's locker"
	req_access = list(access_qm)
	icon_state = "secureqm1"
	icon_closed = "secureqm"
	icon_locked = "secureqm1"
	icon_opened = "secureqmopen"
	icon_broken = "secureqmbroken"
	icon_off = "secureqmoff"

	New()
		..()
		if(prob(75))
			new /obj/item/storage/backpack(src)
		else
			new /obj/item/storage/backpack/satchel_norm(src)
		if(prob(25))
			new /obj/item/storage/backpack/dufflebag(src)
		new /obj/item/clothing/under/jumpsuit/gray(src)
		new /obj/item/clothing/shoes/brown(src)
		new /obj/item/clothing/gloves/thick(src)
//		new /obj/item/cartridge/quartermaster(src)
		new /obj/item/clothing/suit/fire(src)
		new /obj/item/tank/emergency/oxygen(src)
		new /obj/item/clothing/mask/gas(src)
		new /obj/item/clothing/glasses/meson(src)
		new /obj/item/clothing/head/soft(src)
		return
