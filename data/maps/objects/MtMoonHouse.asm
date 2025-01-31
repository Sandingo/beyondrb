	object_const_def
	const_export MTMOONHOUSE_MAN
	
MtMoonHouse_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  7, MT_MOON_SQUARE, 2
	warp_event  2,  7, MT_MOON_SQUARE, 2

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, STAY, DOWN, TEXT_MTMOONHOUSE_MAN

	def_warps_to MT_MOON_HOUSE