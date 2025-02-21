	object_const_def
	const_export FIGHTINGDOJO_KARATE_MASTER
	const_export FIGHTINGDOJO_BLACKBELT1
	const_export FIGHTINGDOJO_BLACKBELT2
	const_export FIGHTINGDOJO_BLACKBELT3
	const_export FIGHTINGDOJO_BLACKBELT4
	const_export FIGHTINGDOJO_HITMONLEE_POKE_BALL
	const_export FIGHTINGDOJO_HITMONCHAN_POKE_BALL
	const_export FIGHTINGDOJO_HITMONTOP_POKE_BALL

FightingDojo_Object:
	db $3 ; border block

	def_warp_events
	warp_event  4, 11, LAST_MAP, 2
	warp_event  5, 11, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_HIKER, STAY, DOWN, TEXT_FIGHTINGDOJO_KARATE_MASTER, OPP_BLACKBELT, 1
	object_event  3,  4, SPRITE_HIKER, STAY, RIGHT, TEXT_FIGHTINGDOJO_BLACKBELT1, OPP_BLACKBELT, 2
	object_event  3,  6, SPRITE_HIKER, STAY, RIGHT, TEXT_FIGHTINGDOJO_BLACKBELT2, OPP_BLACKBELT, 3
	object_event  7,  5, SPRITE_HIKER, STAY, LEFT, TEXT_FIGHTINGDOJO_BLACKBELT3, OPP_BLACKBELT, 4
	object_event  7,  7, SPRITE_HIKER, STAY, LEFT, TEXT_FIGHTINGDOJO_BLACKBELT4, OPP_BLACKBELT, 5
	object_event  4,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_FIGHTINGDOJO_HITMONLEE_POKE_BALL
	object_event  5,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_FIGHTINGDOJO_HITMONCHAN_POKE_BALL
	object_event  6,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_FIGHTINGDOJO_HITMONTOP_POKE_BALL

	def_warps_to FIGHTING_DOJO
