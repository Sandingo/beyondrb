	db DEX_BLOTTLE ; pokedex id

	db  60,  35,  60,  50, 65
	;   hp  atk  def  spd  spc

	db POISON, WATER ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/blottle.pic", 0, 1 ; sprite dimensions
	dw BlottlePicFront, BlottlePicBack

	db CONSTRICT, SMOKESCREEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    LIGHT_SCREEN, PSYCHIC_M,     RAGE,         MEGA_DRAIN,   \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   CUT,          SURF,         DAZZLINGLEAM
	; end

	db BANK(BlottlePicFront)
	assert BANK(BlottlePicFront) == BANK(BlottlePicBack)
