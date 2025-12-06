MtSilverPeak_Object:
	db $5e ; border block

	object_const_def
	const_export MTSILVERPEAK_MAXREPEL
	const_export MTSILVERPEAK_SUNSTONE

	def_warp_events
	warp_event 16,  7, MT_SILVER_F3, 3 ; Top Entrance
	warp_event 17,  7, MT_SILVER_F3, 4 ; Top Entrance
	warp_event 25, 10, MT_SILVER_F3, 5 ; Right 1
	warp_event 25, 11, MT_SILVER_F3, 6 ; Right 1
	warp_event 25, 20, MT_SILVER_F3, 7 ; Right 2
	warp_event 25, 21, MT_SILVER_F3, 8 ; Right 2
	warp_event 25, 28, MT_SILVER_F3, 9 ; Right 3
	warp_event 25, 29, MT_SILVER_F3, 10 ; Right 3
	warp_event 20, 31, MT_SILVER_F3, 11 ; Bottom Right
	warp_event 12, 31, MT_SILVER_F3, 13 ; Bottom Left
	warp_event 10, 19, MT_SILVER_SUMMIT, 1 ; To the summit

	def_bg_events

	def_object_events
	object_event 18, 22, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERPEAK_MAXREPEL, MAX_REPEL
	object_event  6, 20, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTSILVERPEAK_SUNSTONE, SUN_STONE

	def_warps_to MT_SILVER_PEAK