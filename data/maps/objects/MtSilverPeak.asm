MtSilverPeak_Object:
	db $5e ; border block

	def_warp_events
	warp_event 17,  5, MT_SILVER_F2, 2 ; Top Entrance
	warp_event 16,  5, MT_SILVER_F2, 2 ; Top Entrance
	warp_event 25, 10, MT_SILVER_F2, 2 ; Right 1
	warp_event 25, 11, MT_SILVER_F2, 2 ; Right 1
	warp_event 25, 20, MT_SILVER_F2, 2 ; Right 2
	warp_event 25, 21, MT_SILVER_F2, 2 ; Right 2
	warp_event 25, 28, MT_SILVER_F2, 2 ; Right 3
	warp_event 25, 29, MT_SILVER_F2, 2 ; Right 3
	warp_event 20, 31, MT_SILVER_F2, 2 ; Bottom Right
	warp_event 12, 31, MT_SILVER_F2, 2 ; Bottom Left
	warp_event 10, 19, MT_SILVER_SUMMIT, 1 ; To the summit

	def_bg_events

	def_object_events

	def_warps_to MT_SILVER_PEAK