	object_const_def
	const_export ROUTE22GATE_GUARD
	const_export ROUTE22GATE_SILVERGUARD_1
	const_export ROUTE22GATE_SILVERGUARD_2

Route22Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event  4,  7, ROUTE_22, 1
	warp_event  5,  7, ROUTE_22, 1
	warp_event  4,  0, ROUTE_23, 1
	warp_event  5,  0, ROUTE_23, 2
	warp_event  0,  4, ROUTE_28, 1
	warp_event  0,  5, ROUTE_28, 1

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_GUARD, STAY, LEFT, TEXT_ROUTE22GATE_GUARD
	object_event  0,  4, SPRITE_GUARD, STAY, RIGHT, TEXT_ROUTE22GATE_SILVERGUARD
	object_event  0,  5, SPRITE_GUARD, STAY, RIGHT, TEXT_ROUTE22GATE_SILVERGUARD

	def_warps_to ROUTE_22_GATE
