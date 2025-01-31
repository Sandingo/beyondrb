	db DEX_STACKTUS ; pokedex id

	db  60,  90,  100,  90,  75
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/stacktus.pic", 0, 1 ; sprite dimensions
	dw StacktusPicFront, StacktusPicBack

	db BARRAGE, SAND_ATTACK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT,          SELFDESTRUCT, EXPLOSION
	; end

	db BANK(StacktusPicFront)
	assert BANK(StacktusPicFront) == BANK(StacktusPicBack)
