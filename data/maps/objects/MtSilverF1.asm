	object_const_def
	const_export MTSILVERF1_XACCURACY
	const_export MTSILVERF1_ESCAPEROPE
	const_export MTSILVERF1_ULTRABALL
	const_export MTSILVERF1_MAXELIXIR

MtSilverF1_Object:
	db $3 ; border block

	def_warp_events
	warp_event  8, 33, MT_SILVER_FRONT, 1
	warp_event  9, 33, MT_SILVER_FRONT, 1
	warp_event  15,  3, MT_SILVER_F2, 1

	def_bg_events

	def_object_events
	object_event  6, 30, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF1_XACCURACY, X_ACCURACY
	object_event 15, 29, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF1_ESCAPEROPE, ESCAPE_ROPE
	object_event  7, 18, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF1_ULTRABALL, ULTRA_BALL
	object_event  4,  9, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERF1_MAXELIXIR, MAX_ELIXIR

	def_warps_to MT_SILVER_F1