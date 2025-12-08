	db DEX_CARAPTHOR ; pokedex id

	db  65,  85,  50,  60,  60
	;   hp  atk  def  spd  spc

	db BUG, FIGHTING ; type
	db 45 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/carapthor.pic", 0, 1 ; sprite dimensions
	dw CarapthorPicFront, CarapthorPicBack

	db LEECH_LIFE, STRING_SHOT, UPPERCUT, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         COUNTER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT,		   BODY_SLAM,    SEISMIC_TOSS, SUBMISSION,   PAY_DAY,      \
		 DIG,		   MEGA_PUNCH,   LUNGE
	; end

	db BANK(CarapthorPicFront)
	assert BANK(CarapthorPicFront) == BANK(CarapthorPicBack)
