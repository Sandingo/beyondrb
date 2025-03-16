	db DEX_SMOGRUB ; pokedex id

	db  68,  97,  50,  102,  43
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 45 ; catch rate
	db 107 ; base exp

	INCBIN "gfx/pokemon/front/papyo.pic", 0, 1 ; sprite dimensions
	dw SmogrubPicFront, SmogrubPicBack

	db LEECH_LIFE, SMOKESCREEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  SELFDESTRUCT,   \
	     RAGE,         MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT,          LUNGE,		 EXPLOSION
	; end

	db BANK(SmogrubPicFront)
	assert BANK(SmogrubPicFront) == BANK(SmogrubPicBack)
