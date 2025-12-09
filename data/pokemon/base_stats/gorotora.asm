	db DEX_GOROTORA ; pokedex id

	db  90,  105,  85, 90,  95
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 25 ; catch rate
	db 252 ; base exp

	INCBIN "gfx/pokemon/front/gorotora.pic", 0, 1 ; sprite dimensions
	dw GorotoraPicFront, GorotoraPicBack

	db THUNDERSHOCK, TACKLE, BITE, ROAR ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   FLASH,		   SURF,         SWORDS_DANCE, \
		 FISSURE,	   DIG,			 EARTHQUAKE,        HEADBUTT
	; end

	db BANK(GorotoraPicFront)
	assert BANK(GorotoraPicFront) == BANK(GorotoraPicBack)
