	db DEX_KOTORA ; pokedex id

	db  50,  65,  45,  40,  55
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 120 ; catch rate
	db 92 ; base exp

	INCBIN "gfx/pokemon/front/Kotora.pic", 0, 1 ; sprite dimensions
	dw KotoraPicFront, KotoraPicBack

	db THUNDERSHOCK, TACKLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, RAGE,         \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     SUBSTITUTE,   FLASH,		 SURF,        HEADBUTT
	; end

	db BANK(KotoraPicFront)
	assert BANK(KotoraPicFront) == BANK(KotoraPicBack)
