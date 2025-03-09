SafariZoneExpansion_Object:
	db $0 ; border block

	def_warp_events
	warp_event  8, 19, SAFARI_ZONE_NORTH, 10
	warp_event  9, 19, SAFARI_ZONE_NORTH, 11

	def_bg_events
	bg_event 11, 15, TEXT_SAFARIZONEEXPANSION_SIGN

	def_object_events

	def_warps_to SAFARI_ZONE_EXPANSION
