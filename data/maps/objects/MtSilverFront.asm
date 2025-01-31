MtSilverFront_Object:
	db $2c ; border block

	def_warp_events
	warp_event 16, 11, MT_SILVER_F1, 1
	warp_event 21, 19, MT_SILVER_POKECENTER, 1

	def_bg_events
	bg_event 15, 13, TEXT_MTSILVERFRONT_SIGN
	bg_event 22, 19, TEXT_MTSILVERFRONT_POKECENTER_SIGN

	def_object_events

	def_warps_to MT_SILVER_FRONT