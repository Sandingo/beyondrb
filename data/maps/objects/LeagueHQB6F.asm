LeagueHQB6F_Object:
	db $0e ; border block

	object_const_def
	const_export LEAGUEHQB6F_MAX_POTION
	const_export LEAGUEHQB6F_REVIVE

	def_warp_events
	warp_event 19,  6, LEAGUE_HQ_B5F, 2
	warp_event  3,  2, LEAGUE_HQ_B7F, 1

	def_bg_events

	def_object_events
	object_event 16,  4, SPRITE_POKE_BALL, STAY, NONE, 1, MAX_POTION
	object_event  8, 13, SPRITE_POKE_BALL, STAY, NONE, 2, REVIVE

	def_warps_to LEAGUE_HQ_B6F