	object_const_def
	const_export MTMOON1F_HIKER
	const_export MTMOON1F_YOUNGSTER1
	const_export MTMOON1F_COOLTRAINER_F1
	const_export MTMOON1F_SUPER_NERD
	const_export MTMOON1F_COOLTRAINER_F2
	const_export MTMOON1F_YOUNGSTER2
	const_export MTMOON1F_YOUNGSTER3
	const_export MTMOON1F_POTION1
	const_export MTMOON1F_ANTIDOTE
	const_export MTMOON1F_RARE_CANDY
	const_export MTMOON1F_ESCAPE_ROPE
	const_export MTMOON1F_POTION2
	const_export MTMOON1F_TM_WATER_GUN

MtMoon1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 14, 35, ROUTE_4, 2
	warp_event 15, 35, ROUTE_4, 2
	warp_event  5,  5, MT_MOON_B1F, 1
	warp_event 17, 11, MT_MOON_B1F, 3
	warp_event 25, 15, MT_MOON_B1F, 4
	warp_event 35,  5, MT_MOON_SQUARE, 1

	def_bg_events
	bg_event 15, 23, TEXT_MTMOON1F_BEWARE_ZUBAT_SIGN

	def_object_events
	object_event  5,  6, SPRITE_HIKER, STAY, DOWN, TEXT_MTMOON1F_HIKER, OPP_HIKER, 1
	object_event 12, 16, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_MTMOON1F_YOUNGSTER1, OPP_YOUNGSTER, 3
	object_event 30,  4, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_MTMOON1F_COOLTRAINER_F1, OPP_LASS, 5
	object_event 24, 31, SPRITE_SUPER_NERD, STAY, UP, TEXT_MTMOON1F_SUPER_NERD, OPP_SUPER_NERD, 1
	object_event 16, 23, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_MTMOON1F_COOLTRAINER_F2, OPP_LASS, 6
	object_event  7, 22, SPRITE_YOUNGSTER, STAY, DOWN, TEXT_MTMOON1F_YOUNGSTER2, OPP_BUG_CATCHER, 7
	object_event 30, 27, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_MTMOON1F_YOUNGSTER3, OPP_BUG_CATCHER, 8
	object_event  2, 20, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOON1F_POTION1, POTION
	object_event  2,  2, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOON1F_ANTIDOTE, ANTIDOTE
	object_event 35, 31, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOON1F_RARE_CANDY, RARE_CANDY
	object_event 36, 23, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOON1F_ESCAPE_ROPE, ESCAPE_ROPE
	object_event 20, 33, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOON1F_POTION2, POTION
	object_event  5, 32, SPRITE_POKE_BALL, STAY, NONE, TEXT_MTMOON1F_TM_WATER_GUN, TM_WATER_GUN

	def_warps_to MT_MOON_1F
