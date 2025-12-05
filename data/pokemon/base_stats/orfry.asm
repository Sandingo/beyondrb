	db DEX_ORFRY ; pokedex id

	db  35,  57,  50,  53,  40
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 30 ; base exp

	INCBIN "gfx/pokemon/front/orfry.pic", 0, 1 ; sprite dimensions
	dw OrfryPicFront, OrfryPicBack

	db PECK, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SURF,		 THUNDERBOLT,  WATERFALL
	; end

	db BANK(OrfryPicFront)
	assert BANK(OrfryPicFront) == BANK(OrfryPicBack)
