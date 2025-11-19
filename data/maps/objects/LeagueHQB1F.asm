LeagueHQB1F_Object:
	db $02 ; border block

	object_const_def
	const_export LEAGUEHQB1F_COOLTRAINER_M
	const_export LEAGUEHQB1F_COOLTRAINER_F
	const_export LEAGUEHQB1F_TM_SUBMISSION

	def_warp_events
	warp_event 14,  0, INDIGO_PLATEAU_LOBBY, 3
	warp_event  8,  9, LEAGUE_HQ_B2F, 1

	def_bg_events

	def_object_events
	object_event 3, 14, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_LEAGUEHQB1F_TRAINER_0, OPP_COOLTRAINER_M, 4
	object_event 8, 12, SPRITE_COOLTRAINER_F, STAY, ANY_DIR, TEXT_LEAGUEHQB1F_TRAINER_1, OPP_COOLTRAINER_F, 4
	object_event 17,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_LEAGUEHQB1F_ITEM_0, TM_SUBMISSION

	def_warps_to LEAGUE_HQ_B1F