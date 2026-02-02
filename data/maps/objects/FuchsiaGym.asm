	object_const_def
	const_export FUCHSIAGYM_KOGA
	const_export FUCHSIAGYM_ROCKER1
	const_export FUCHSIAGYM_ROCKER2
	const_export FUCHSIAGYM_ROCKER3
	const_export FUCHSIAGYM_ROCKER4
	const_export FUCHSIAGYM_ROCKER5
	const_export FUCHSIAGYM_ROCKER6
	const_export FUCHSIAGYM_GYM_GUIDE

FuchsiaGym_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 17, LAST_MAP, 6
	warp_event  5, 17, LAST_MAP, 6

	def_bg_events

	def_object_events
	object_event  4, 10, SPRITE_KOGA, STAY, DOWN, TEXT_FUCHSIAGYM_KOGA, KOGA, 1
	object_event  8, 13, SPRITE_ROCKER, STAY, DOWN, TEXT_FUCHSIAGYM_ROCKER1, JUGGLER, 7
	object_event  7,  8, SPRITE_ROCKER, STAY, RIGHT, TEXT_FUCHSIAGYM_ROCKER2, JUGGLER, 3
	object_event  1, 12, SPRITE_ROCKER, STAY, DOWN, TEXT_FUCHSIAGYM_ROCKER3, JUGGLER, 8
	object_event  3,  5, SPRITE_ROCKER, STAY, UP, TEXT_FUCHSIAGYM_ROCKER4, TAMER, 1
	object_event  8,  2, SPRITE_ROCKER, STAY, DOWN, TEXT_FUCHSIAGYM_ROCKER5, TAMER, 2
	object_event  2,  7, SPRITE_ROCKER, STAY, LEFT, TEXT_FUCHSIAGYM_ROCKER6, JUGGLER, 4
	object_event  7, 15, SPRITE_GYM_GUIDE, STAY, DOWN, TEXT_FUCHSIAGYM_GYM_GUIDE

	def_warps_to FUCHSIA_GYM
