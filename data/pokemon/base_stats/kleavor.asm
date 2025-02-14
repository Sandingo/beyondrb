	db DEX_KLEAVOR ; pokedex id

	db  70, 135,  95, 85,  70
	;   hp  atk  def  spd  spc

	db BUG, ROCK ; type
	db 15 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kleavor.pic", 0, 1 ; sprite dimensions
	dw KleavorPicFront, KleavorPicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   CUT,			 EARTHQUAKE,   \
		 FISSURE,	   DIG,			 ROCK_SLIDE,   STEEL_WING
	; end

	db BANK(KleavorPicFront)
	assert BANK(KleavorPicFront) == BANK(KleavorPicBack)
