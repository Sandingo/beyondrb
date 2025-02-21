	object_const_def
	const_export GAMECORNER_BEAUTY1
	const_export GAMECORNER_CLERK1
	const_export GAMECORNER_MIDDLE_AGED_MAN1
	const_export GAMECORNER_BEAUTY2
	const_export GAMECORNER_FISHING_GURU
	const_export GAMECORNER_MIDDLE_AGED_WOMAN
	const_export GAMECORNER_GYM_GUIDE
	const_export GAMECORNER_GAMBLER
	const_export GAMECORNER_CLERK2
	const_export GAMECORNER_GENTLEMAN
	const_export GAMECORNER_IMAKUNI
	const_export GAMECORNER_ROCKET

GameCorner_Object:
	db $f ; border block

	def_warp_events
	warp_event 15, 17, LAST_MAP, 8
	warp_event 16, 17, LAST_MAP, 8
	warp_event 17,  4, ROCKET_HIDEOUT_B1F, 2

	def_bg_events
	bg_event  9,  4, TEXT_GAMECORNER_POSTER

	def_object_events
	object_event  2,  6, SPRITE_BEAUTY, STAY, DOWN, TEXT_GAMECORNER_BEAUTY1
	object_event  5,  6, SPRITE_CLERK, STAY, DOWN, TEXT_GAMECORNER_CLERK1
	object_event  2, 10, SPRITE_MIDDLE_AGED_MAN, STAY, LEFT, TEXT_GAMECORNER_MIDDLE_AGED_MAN1
	object_event  2, 13, SPRITE_BEAUTY, STAY, LEFT, TEXT_GAMECORNER_BEAUTY2
	object_event  5, 11, SPRITE_FISHING_GURU, STAY, RIGHT, TEXT_GAMECORNER_FISHING_GURU
	object_event  8, 11, SPRITE_MIDDLE_AGED_WOMAN, STAY, LEFT, TEXT_GAMECORNER_MIDDLE_AGED_WOMAN
	object_event  8, 14, SPRITE_GYM_GUIDE, STAY, LEFT, TEXT_GAMECORNER_GYM_GUIDE
	object_event 11, 15, SPRITE_GAMBLER, STAY, RIGHT, TEXT_GAMECORNER_GAMBLER
	object_event 14, 11, SPRITE_CLERK, STAY, LEFT, TEXT_GAMECORNER_CLERK2
	object_event 17, 13, SPRITE_GAMBLER, STAY, RIGHT, TEXT_GAMECORNER_GENTLEMAN
	object_event  9,  5, SPRITE_IMAKUNI, STAY, UP, TEXT_GAMECORNER_IMAKUNI
	object_event  9,  5, SPRITE_ROCKET, STAY, UP, TEXT_GAMECORNER_ROCKET, OPP_ROCKET, 7

	def_warps_to GAME_CORNER
