MtSilverF3_Object:
	db $03 ; border block

	object_const_def
	const_export MTSILVERF3_MAXELIXIR
	const_export MTSILVERF3_MAXREVIVE
	const_export MTSILVERF3_PROTEIN
	const_export MTSILVERF3_CALCIUM

	def_warp_events
	warp_event  8, 10, MT_SILVER_F2, 2
	warp_event  8, 11, MT_SILVER_F2, 2
	warp_event  8,  0, MT_SILVER_PEAK, 1
	warp_event  9,  0, MT_SILVER_PEAK, 2
	warp_event 19,  4, MT_SILVER_PEAK, 3
	warp_event 19,  5, MT_SILVER_PEAK, 4
	warp_event 19, 10, MT_SILVER_PEAK, 5
	warp_event 19, 11, MT_SILVER_PEAK, 6
	warp_event 19, 16, MT_SILVER_PEAK, 7
	warp_event 19, 17, MT_SILVER_PEAK, 8
	warp_event 14, 19, MT_SILVER_PEAK, 9
	warp_event 15, 19, MT_SILVER_PEAK, 9
	warp_event 8,  19, MT_SILVER_PEAK, 10
	warp_event 9,  19, MT_SILVER_PEAK, 10


	def_bg_events

	def_object_events
	object_event 10,  6, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF3_MAXELIXIR, MAX_ELIXIR
	object_event  5,  4, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF3_MAXREVIVE, MAX_REVIVE
	object_event 17,  7, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF3_PROTEIN, PROTEIN
	object_event  5, 19, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF3_CALCIUM, CALCIUM

	def_warps_to MT_SILVER_F3