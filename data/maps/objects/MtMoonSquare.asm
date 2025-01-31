	object_const_def
	const_export MTMOONSQUARE_CLEFAIRY

MtMoonSquare_Object:
	db $44 ; border block

	def_warp_events
	warp_event 20,  5, MT_MOON_1F, 6
	warp_event 13,  7, MT_MOON_HOUSE, 1

	def_bg_events
	bg_event 17,  7, TEXT_MTMOONSQUARE_SIGN

	def_object_events
	object_event  7,  7, SPRITE_FAIRY, STAY, ANY_DIR, TEXT_MTMOONSQUARE_CLEFAIRY

	def_warps_to MT_MOON_SQUARE