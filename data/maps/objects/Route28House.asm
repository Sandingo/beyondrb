Route28House_Object:
	db $a ; border block

	def_warp_events
	warp_event  3,  7, ROUTE_28, 2
	warp_event  2,  7, ROUTE_28, 2

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_BALDING_GUY, STAY, RIGHT, 1 ; MrHyper

	def_warps_to ROUTE_28_HOUSE