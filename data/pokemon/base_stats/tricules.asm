	db DEX_TRICULES ; pokedex id

	db  65, 125, 140,  45,  55
	;   hp  atk  def  spd  spc

	db BUG, STEEL ; type
	db 25 ; catch rate
	db 200 ; base exp

	INCBIN "gfx/pokemon/front/tricules.pic", 0, 1 ; sprite dimensions
	dw TriculesPicFront, TriculesPicBack

	db VICEGRIP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         REST,         SUBSTITUTE,   CUT,          \
	     STRENGTH,     LUNGE,		 COUNTER,      EARTHQUAKE
	; end

	db BANK(TriculesPicFront)
	assert BANK(TriculesPicFront) == BANK(TriculesPicBack)
