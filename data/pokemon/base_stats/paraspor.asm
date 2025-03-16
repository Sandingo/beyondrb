	db DEX_PARASPOR ; pokedex id

	db  30,  60,  45,  20,  45
	;   hp  atk  def  spd  spc

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/paraspor.pic", 0, 1 ; sprite dimensions
	dw ParasporPicFront, ParasporPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MEGA_DRAIN,   SOLARBEAM,    DIG,          MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   REST,         \
	     SUBSTITUTE,   CUT,          LUNGE
	; end

	db BANK(ParasporPicFront)
	assert BANK(ParasporPicFront) == BANK(ParasporPicBack)
