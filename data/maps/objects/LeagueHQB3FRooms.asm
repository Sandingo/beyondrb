LeagueHQB3FRooms_Object:
	db $0C ; border block

	object_const_def
	const_export LEAGUEHQB3FROOMS_COOLTRAINER_M
	const_export LEAGUEHQB3FROOMS_GENTLEMAN
	const_export LEAGUEHQB3FROOMS_COOLTRAINER_F
	const_export LEAGUEHQB3FROOMS_FULL_HEAL
	const_export LEAGUEHQB3FROOMS_PROTEIN
	const_export LEAGUEHQB3FROOMS_GUARD_SPEC
	const_export LEAGUEHQB3FROOMS_HYPER_POTION

	def_warp_events
	warp_event  2,  5, LEAGUE_HQ_B3F, 3
	warp_event  3,  5, LEAGUE_HQ_B3F, 3
	warp_event  12,  5, LEAGUE_HQ_B3F, 4
	warp_event  13,  5, LEAGUE_HQ_B3F, 4
	warp_event  2,  15, LEAGUE_HQ_B3F, 5
	warp_event  3,  15, LEAGUE_HQ_B3F, 5
	warp_event  12, 15, LEAGUE_HQ_B3F, 6
	warp_event  13, 15, LEAGUE_HQ_B3F, 6
	warp_event  12, 10, LEAGUE_HQ_B3F, 7

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_COOLTRAINER_M, STAY, DOWN, 1, OPP_COOLTRAINER_M, 8
	object_event 12,  4, SPRITE_GENTLEMAN, STAY, ANY_DIR, 2, OPP_GENTLEMAN, 4
	object_event  0, 13, SPRITE_COOLTRAINER_F, STAY, ANY_DIR, 3, OPP_COOLTRAINER_F, 8
	object_event  0,  4, SPRITE_POKE_BALL, STAY, NONE, 4, FULL_HEAL
	object_event 12,  1, SPRITE_POKE_BALL, STAY, NONE, 5, PROTEIN
	object_event  1, 13, SPRITE_POKE_BALL, STAY, NONE, 6, GUARD_SPEC
	object_event 10, 12, SPRITE_POKE_BALL, STAY, NONE, 7, HYPER_POTION

	def_warps_to LEAGUE_HQ_B3F_ROOMS