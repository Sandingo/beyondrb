	db DEX_GOROCHU ; pokedex id

	db  70,  100,  65, 65,  135
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 25 ; catch rate
	db 252 ; base exp

	INCBIN "gfx/pokemon/front/gorochu.pic", 0, 1 ; sprite dimensions
	dw GorochuPicFront, GorochuPicBack

	db THUNDERSHOCK, GROWL, THUNDER_WAVE, HORN_ATTACK ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   PAY_DAY,      SUBMISSION,   SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   FLASH,		   SURF,	     HORN_DRILL,   \
		 FISSURE,	   DIG,			 EARTHQUAKE,   SWORDS_DANCE,	LIGHT_SCREEN
	; end

	db BANK(GorochuPicFront)
	assert BANK(GorochuPicFront) == BANK(GorochuPicBack)
