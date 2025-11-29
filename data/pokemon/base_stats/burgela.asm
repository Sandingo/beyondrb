	db DEX_BURGELA ; pokedex id

	db  40,  40, 70,  40, 70
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 140 ; catch rate
	db 85 ; base exp

	INCBIN "gfx/pokemon/front/burgela.pic", 0, 1 ; sprite dimensions
	dw BurgelaPicFront, BurgelaPicBack

	db CONSTRICT, BIND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    SUBSTITUTE,  \
	     CUT,   RAGE,         GIGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,	FLASH   \
	; end

	db BANK(BurgelaPicFront)
	assert BANK(BurgelaPicFront) == BANK(BurgelaPicBack)
