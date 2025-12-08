	object_const_def
	const_export MTSILVEREXTRAROOMS_CANDYJAR
	const_export MTSILVEREXTRAROOMS_FULLRESTORE

MtSilverExtraRooms_Object:
	db $3 ; border block

	def_warp_events
	warp_event 11,  3, MT_SILVER_F2, 3
	warp_event  3, 15, MT_SILVER_F2, 4

	def_bg_events

	def_object_events
	object_event  2,  3,  SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVEREXTRAROOMS_CANDYJAR, CANDY_JAR
	object_event 11, 11,  SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVEREXTRAROOMS_FULLRESTORE, FULL_RESTORE

	def_warps_to MT_SILVER_EXTRA_ROOMS