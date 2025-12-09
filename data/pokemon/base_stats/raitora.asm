	db DEX_RAITORA ; pokedex id

	db  65,  80,  65, 60,  75
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 117;base exp

	INCBIN "gfx/pokemon/front/raitora.pic", 0, 1 ; sprite dimensions
	dw RaitoraPicFront, RaitoraPicBack

	db THUNDERSHOCK, TACKLE, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,	STRENGTH,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   FLASH,		   SURF,        HEADBUTT
	; end

	db BANK(RaitoraPicFront)
	assert BANK(RaitoraPicFront) == BANK(RaitoraPicBack)
