LeagueHQB8F_Object:
	db $1 ; border block

	object_const_def
	const_export LEAGUEHQB8F_COOLTRAINER_M
	const_export LEAGUEHQB8F_COOLTRAINER_F
	const_export LEAGUEHQB8F_MAX_REVIVE
	const_export LEAGUEHQB8F_HP_UP

	def_warp_events
	warp_event  7, 18, LEAGUE_HQ_B7F, 2
	warp_event  2,  3, LORELEIS_ROOM, 1

	def_bg_events

	def_object_events
	object_event  8,  3, SPRITE_COOLTRAINER_M, STAY, DOWN, 1, OPP_COOLTRAINER_M, 7
	object_event 16, 18, SPRITE_COOLTRAINER_F, STAY, ANY_DIR, 2, OPP_COOLTRAINER_F, 7
	object_event  5, 16, SPRITE_POKE_BALL, STAY, NONE, 3, MAX_REVIVE
	object_event 22, 11, SPRITE_POKE_BALL, STAY, NONE, 4, HP_UP
	object_event  5,  2, SPRITE_NURSE, STAY, DOWN, 5
	object_event  6,  9, SPRITE_POKEDEX, STAY, NONE, 6
	object_event 15,  5, SPRITE_POKEDEX, STAY, NONE, 7

	def_warps_to LEAGUE_HQ_B8F