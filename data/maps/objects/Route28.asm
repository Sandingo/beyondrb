	object_const_def
	const_export ROUTE28_RARE_CANDY

Route28_Object:
	db $2c ; border block

	def_warp_events
	warp_event 33,  5, ROUTE_22_GATE, 6
	warp_event  7,  3, ROUTE_28_HOUSE, 1

	def_bg_events
	bg_event 31,  5, TEXT_ROUTE28_SIGN

	def_object_events
	object_event 25,  3, SPRITE_POKE_BALL, STAY, NONE, TEXT_ROUTE28_RARE_CANDY, RARE_CANDY

	def_warps_to ROUTE_28