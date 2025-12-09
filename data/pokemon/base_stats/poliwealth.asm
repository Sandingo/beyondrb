	db DEX_POLIWEALTH ; pokedex id

	db  130,  45,  105,  50,  90
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 252 ; base exp

	INCBIN "gfx/pokemon/front/poliwealth.pic", 0, 1 ; sprite dimensions
	dw PoliwealthPicFront, PoliwealthPicBack

	db HYPNOSIS, WATER_GUN, BODY_SLAM, PAY_DAY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      COUNTER,      STRENGTH,     RAGE,         \
	     EARTHQUAKE,   FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         WATERFALL,      \
	     SUBSTITUTE,   SURF,		 FLASH,        DAZZLINGLEAM,	LIGHT_SCREEN, \
		 HEADBUTT
	; end

	db BANK(PoliwealthPicFront)
	assert BANK(PoliwealthPicFront) == BANK(PoliwealthPicBack)
