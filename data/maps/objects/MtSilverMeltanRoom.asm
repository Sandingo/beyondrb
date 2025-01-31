	object_const_def
	const_export MTSILVERMELTANROOM_CANDYJAR

MtSilverMeltanRoom_Object:
	db $3 ; border block

	def_warp_events
	warp_event 11,  3, MT_SILVER_F2, 3

	def_bg_events

	def_object_events
	object_event  2,  2,  SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERMELTANROOM_CANDYJAR, CANDY_JAR

	def_warps_to MT_SILVER_MELTAN_ROOM