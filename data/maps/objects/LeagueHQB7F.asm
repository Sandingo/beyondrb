LeagueHQB7F_Object:
	db $02 ; border block

	object_const_def
	const_export LEAGUEHQB7F_COOLTRAINER_M
	const_export LEAGUEHQB7F_ULTRA_BALL

	def_warp_events
	warp_event  8,  0, LEAGUE_HQ_B6F, 2
	warp_event  6,  7, LEAGUE_HQ_B8F, 1

	def_bg_events

	def_object_events
	object_event 17, 10, SPRITE_COOLTRAINER_M, STAY, ANY_DIR, 1, OPP_COOLTRAINER_M, 6
	object_event 12,  8, SPRITE_POKE_BALL, STAY, NONE, 2, ULTRA_BALL

	def_warps_to LEAGUE_HQ_B7F