	object_const_def
	const_export MTMOONB1F_WING_FOSSIL
	const_export MTMOONB1F_TINYMUSHROOM1
	const_export MTMOONB1F_TINYMUSHROOM2
	const_export MTMOONB1F_TINYMUSHROOM3
	const_export MTMOONB1F_TINYMUSHROOM4

MtMoonB1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event  5,  5, MT_MOON_1F, 3
	warp_event 17, 11, MT_MOON_B2F, 1
	warp_event 25,  9, MT_MOON_1F, 4
	warp_event 25, 15, MT_MOON_1F, 5
	warp_event 21, 17, MT_MOON_B2F, 2
	warp_event 13, 27, MT_MOON_B2F, 3
	warp_event 23,  3, MT_MOON_B2F, 4
	warp_event 27,  3, ROUTE_4, 3
	warp_event  9, 37, MT_MOON_SQUARE, 3


	def_bg_events

	def_object_events
	object_event  1, 27, SPRITE_FOSSIL, STAY, NONE, TEXT_MTMOONB1F_WING_FOSSIL, WING_FOSSIL
	object_event 15, 16, SPRITE_MUSHROOM, STAY, NONE, TEXT_MTMOONB1F_TINYMUSHROOM1, TINYMUSHROOM
	object_event  4, 10, SPRITE_MUSHROOM, STAY, NONE, TEXT_MTMOONB1F_TINYMUSHROOM2, TINYMUSHROOM
	object_event 27, 22, SPRITE_MUSHROOM, STAY, NONE, TEXT_MTMOONB1F_TINYMUSHROOM3, TINYMUSHROOM
	object_event 22, 11, SPRITE_MUSHROOM, STAY, NONE, TEXT_MTMOONB1F_TINYMUSHROOM4, TINYMUSHROOM

	def_warps_to MT_MOON_B1F
