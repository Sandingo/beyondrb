	db DEX_DISTURBAN ; pokedex id

	db  80,  90, 150,  30,  80
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/front/disturban.pic", 0, 1 ; sprite dimensions
	dw DisturbanPicFront, DisturbanPicBack

	db WITHDRAW, SUPERSONIC, CLAMP, BITE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    \
	     DIG,     SKULL_BASH,     HYPER_BEAM,   RAGE,         TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SELFDESTRUCT, \
	     SWIFT,        REST,         EXPLOSION,    TRI_ATTACK,   SUBSTITUTE,   \
	     SURF,		  FISSURE
	; end

	db BANK(DisturbanPicFront)
	assert BANK(DisturbanPicFront) == BANK(DisturbanPicBack)
