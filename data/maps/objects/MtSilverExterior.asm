	object_const_def
	const_export MTSILVEREXTERIOR_ESCAPEROPE
	const_export MTSILVEREXTERIOR_TMROCKSLIDE

MtSilverExterior_Object:
	db $0F ; border block

	def_warp_events
	warp_event  8, 15, MT_SILVER_F2, 5
	warp_event 10, 11, MT_SILVER_F2, 8
	warp_event 18,  7, MT_SILVER_F2, 9

	def_bg_events

	def_object_events
	object_event  4, 16,  SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVEREXTERIOR_ESCAPEROPE, ESCAPE_ROPE
	object_event  8,  5,  SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVEREXTERIOR_TMROCKSLIDE, TM_ROCK_SLIDE

	def_warps_to MT_SILVER_EXTERIOR