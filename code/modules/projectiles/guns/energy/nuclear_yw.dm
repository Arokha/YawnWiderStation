/obj/item/weapon/gun/energy/sf2000
	name = "SF 2000"
	desc = "A oddly shaped red colored energy gun, can fire both stun and lethal lasers"
	icon_state = "lasgunstun"
	icon = 'icons/obj/gun_yw.dmi'
	item_state = null	//so the human update icon uses the icon_state instead.
	fire_sound = 'sound/weapons/Taser.ogg'
	fire_delay = 10 // Handguns should be inferior to two-handed weapons.

	projectile_type = /obj/item/projectile/beam/stun
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	modifystate = "lasgunstun"

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/weak, modifystate="lasgunstun", fire_sound='sound/weapons/Taser.ogg', charge_cost = 240),
		list(mode_name="lethal", projectile_type=/obj/item/projectile/beam, modifystate="lasgunkill", fire_sound='sound/weapons/Laser.ogg', charge_cost = 480),
		)


/obj/item/weapon/gun/energy/gun/burst/mg42
	name = "MG42-E"
	desc = "Space Blitzkrieg."
	icon = 'icons/obj/gun_yw.dmi'
	icon_state = "mg42-e100"	//May resprite this to be more rifley
	item_state = null	//so the human update icon uses the icon_state instead.
	fire_sound = 'sound/weapons/Laser.ogg'
	charge_cost = 1
	force = 8
	w_class = ITEMSIZE_LARGE	//Probably gonna make it a rifle sooner or later
	fire_delay = 6
	burst_delay = 0.5

	projectile_type = /obj/item/projectile/beam/burstlaser
	origin_tech = list(TECH_COMBAT = 4, TECH_MAGNET = 2, TECH_ILLEGAL = 3)
	modifystate = "mg42-e"

//	requires_two_hands = 1
	one_handed_penalty = 2

	firemodes = list(
		list(mode_name="single fire", burst=1, projectile_type=/obj/item/projectile/beam/burstlaser, modifystate="mg42-e", fire_sound='sound/weapons/Laser.ogg', charge_cost = 100),
		list(mode_name="burst fire", burst=3, fire_delay=null, move_delay=4, burst_accuracy=list(0,0,0), dispersion=list(0.0, 0.2, 0.5), projectile_type=/obj/item/projectile/beam/burstlaser, modifystate="mg42-e", fire_sound='sound/weapons/Laser.ogg'),
		list(mode_name="5 laser burst", burst=5, fire_delay=null, move_delay=4, burst_accuracy=list(0,0,0,0,0), dispersion=list(0.0, 0.2, 0.5, 0.5, 0.5), projectile_type=/obj/item/projectile/beam/burstlaser, modifystate="mg42-e", fire_sound='sound/weapons/Laser.ogg'),
		list(mode_name="15 laser burst, ye boi.", burst=15, fire_delay=null, move_delay=4, burst_accuracy=list(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0), dispersion=list(0.0, 0.2, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5), projectile_type=/obj/item/projectile/beam/burstlaser, modifystate="mg42-e", fire_sound='sound/weapons/Laser.ogg'),
		)