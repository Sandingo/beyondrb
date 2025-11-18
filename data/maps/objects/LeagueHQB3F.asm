LeagueHQB3F_Object:
	db $0C ; border block

	object_const_def
	const_export LEAGUEHQB3F_TM_SKY_ATTACK

	def_warp_events
	warp_event  2, 18, LEAGUE_HQ_B2F, 2
	warp_event 10,  4, LEAGUE_HQ_B5F, 1
	warp_event  7, 15, LEAGUE_HQ_B3F_ROOMS, 1
	warp_event 11, 15, LEAGUE_HQ_B3F_ROOMS, 3
	warp_event 15, 15, LEAGUE_HQ_B3F_ROOMS, 5
	warp_event 19, 15, LEAGUE_HQ_B3F_ROOMS, 7
	warp_event 19,  6, LEAGUE_HQ_B3F_ROOMS, 9

	def_bg_events

	def_object_events
	object_event  7,  4, SPRITE_POKE_BALL, STAY, NONE, 1, TM_SKY_ATTACK

	def_warps_to LEAGUE_HQ_B3F