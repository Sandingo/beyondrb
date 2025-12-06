	object_const_def
	const_export MTSILVERF2_PPUP
	const_export MTSILVERF2_MAXREVIVE
	const_export MTSILVERF2_ULTRABALL
	const_export MTSILVERF2_CALCIUM

MtSilverF2_Object:
	db $3 ; border block

	def_warp_events
	warp_event 18, 32, MT_SILVER_F1, 3
	warp_event 11,  3, MT_SILVER_F3, 1
	warp_event 15,  5, MT_SILVER_EXTRA_ROOMS, 1
	warp_event 13, 25, MT_SILVER_EXTRA_ROOMS, 2
	warp_event 25, 20, MT_SILVER_EXTERIOR, 1
	warp_event 25, 21, MT_SILVER_EXTERIOR, 1
	warp_event 25, 16, MT_SILVER_EXTERIOR, 2
	warp_event 25, 17, MT_SILVER_EXTERIOR, 2
	warp_event 25,  4, MT_SILVER_EXTERIOR, 3
	warp_event 25,  5, MT_SILVER_EXTERIOR, 3

	def_bg_events

	def_object_events
	object_event  4, 22, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_PPUP, PP_UP
	object_event  6,  7, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_MAXREVIVE, MAX_REVIVE
	object_event 22, 26, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_ULTRABALL, ULTRA_BALL
	object_event 19,  2, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF2_CALCIUM, CALCIUM

	def_warps_to MT_SILVER_F2