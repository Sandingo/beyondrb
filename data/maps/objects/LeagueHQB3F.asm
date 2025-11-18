LeagueHQB3F_Object:
	db $0C ; border block

	def_warp_events
	warp_event  0, 18, LEAGUE_HQ_B2F, 2
	warp_event  8,  4, LEAGUE_HQ_B5F, 1

	def_bg_events

	def_object_events

	def_warps_to LEAGUE_HQ_B3F