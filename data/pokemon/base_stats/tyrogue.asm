	db DEX_TYROGUE ; pokedex id

	db  35, 35,  35,  35,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 91 ; base exp

	INCBIN "gfx/pokemon/front/tyrogue.pic", 0, 1 ; sprite dimensions
	dw TyroguePicFront, TyroguePicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     STRENGTH,  SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(TyroguePicFront)
	assert BANK(TyroguePicFront) == BANK(TyroguePicBack)
