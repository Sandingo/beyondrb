	object_const_def
	const_export MTSILVERF2_PPUP
	const_export MTSILVERF2_MAXREVIVE
	const_export MTSILVERF2_ULTRABALL
	const_export MTSILVERF2_CALCIUM

MtSilverF2_Object:
	db $3 ; border block

	def_warp_events
	warp_event 18, 32, MT_SILVER_F1, 3
	warp_event 23,  3, MT_SILVER_SUMMIT, 1
	warp_event 11,  5, MT_SILVER_MELTAN_ROOM, 1

	def_bg_events

	def_object_events
	object_event  4, 22, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_PPUP, PP_UP
	object_event 13, 23, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_MAXREVIVE, MAX_REVIVE
	object_event 22, 26, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_ULTRABALL, ULTRA_BALL
	object_event 24,  6, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_CALCIUM, CALCIUM

	def_warps_to MT_SILVER_F2