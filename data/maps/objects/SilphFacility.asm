SilphFacility_Object:
	db $17 ; border block

	def_warp_events
	warp_event  3,  7, PALLET_TOWN, 1 
	warp_event  2,  7, PALLET_TOWN, 1 

	def_bg_events

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, STAY, UP, TEXT_SILPHFACILITY_SCIENTIST
	object_event  3,  3, SPRITE_ROCKER, STAY, DOWN, TEXT_SILPHFACILITY_JACK

	def_warps_to SILPH_FACILITY