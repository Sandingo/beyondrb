LeagueHQB7F_Object:
	db $02 ; border block

	object_const_def
	const_export LEAGUEHQB7F_ESCAPE_ROPE

	def_warp_events
	warp_event  8,  0, LEAGUE_HQ_B6F, 2
	warp_event  6,  7, LEAGUE_HQ_B8F, 1

	def_bg_events

	def_object_events
	object_event 12,  8, SPRITE_POKE_BALL, STAY, NONE, 1, ESCAPE_ROPE

	def_warps_to LEAGUE_HQ_B7F