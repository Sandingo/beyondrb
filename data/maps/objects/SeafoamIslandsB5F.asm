	object_const_def
	const_export SEAFOAMISLANDSB5F_ARTICUNO
	const_export SEAFOAMISLANDSB5F_ICE_STONE
	const_export SEAFOAMISLANDSB5F_MAX_ETHER

SeafoamIslandsB5F_Object:
	db $7d ; border block

	def_warp_events
	warp_event  9,  1, SEAFOAM_ISLANDS_B4F, 5

	def_bg_events

	def_object_events
	object_event 19,  7, SPRITE_ARTICUNO, STAY, DOWN, TEXT_SEAFOAMISLANDSB5F_ARTICUNO, ARTICUNO, 50 | OW_POKEMON
	object_event  1,  9, SPRITE_POKE_BALL, STAY, NONE, TEXT_SEAFOAMISLANDSB5F_ITEM_1, ICE_STONE
	object_event 28, 13, SPRITE_POKE_BALL, STAY, NONE, TEXT_SEAFOAMISLANDSB5F_ITEM_2, MAX_ETHER
	

	def_warps_to SEAFOAM_ISLANDS_B5F