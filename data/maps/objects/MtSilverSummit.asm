	object_const_def
	const_export MTSILVERSUMMIT_OAK

MtSilverSummit_Object:
	db $3 ; border block

	def_warp_events
	warp_event 13, 33, MT_SILVER_PEAK, 11

	def_bg_events

	def_object_events
	object_event 13,  9, SPRITE_OAK, STAY, UP, TEXT_MTSILVERSUMMIT_OAK, OPP_PROF_OAK, 4

	def_warps_to MT_SILVER_SUMMIT