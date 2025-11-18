LeagueHQB2F_Object:
	db $02 ; border block

	def_warp_events
	warp_event  7,  5, LEAGUE_HQ_B1F, 2
	warp_event  3, 17, LEAGUE_HQ_B3F, 1

	def_bg_events

	def_object_events

	def_warps_to LEAGUE_HQ_B2F