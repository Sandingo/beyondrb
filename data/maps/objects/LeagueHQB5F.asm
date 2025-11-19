LeagueHQB5F_Object:
	db $1 ; border block

	object_const_def
	const_export LEAGUEHQB5F_FULL_RESTORE
	const_export LEAGUEHQB5F_TM_DOUBLE_EDGE

	def_warp_events
	warp_event  4,  3, LEAGUE_HQ_B3F, 2
	warp_event 13, 14, LEAGUE_HQ_B6F, 1

	def_bg_events

	def_object_events
	object_event  2,  9, SPRITE_POKE_BALL, STAY, NONE, TEXT_LEAGUEHQB5F_ITEM_0, FULL_RESTORE
	object_event 17,  9, SPRITE_POKE_BALL, STAY, NONE, TEXT_LEAGUEHQB5F_ITEM_1, TM_DOUBLE_EDGE

	def_warps_to LEAGUE_HQ_B5F