	object_const_def
	const_export MTSILVERPOKECENTER_NURSE
	const_export MTSILVERPOKECENTER_LINK_RECEPTIONIST
	const_export MTSILVERPOKECENTER_CHANSEY

MtSilverPokecenter_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  7, LAST_MAP, 2
	warp_event  4,  7, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, STAY, DOWN, TEXT_MTSILVERPOKECENTER_NURSE
	object_event 11,  2, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_MTSILVERPOKECENTER_LINK_RECEPTIONIST
	object_event  4,  1, SPRITE_CHANSEY, STAY, DOWN, TEXT_MTSILVERPOKECENTER_CHANSEY

	def_warps_to MT_SILVER_POKECENTER
