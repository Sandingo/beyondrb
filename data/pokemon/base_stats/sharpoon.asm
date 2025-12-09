	db DEX_SHARPOON ; pokedex id

	db  80,  115,  100,  60,  85
	;   hp  atk  def  spd  spc

	db WATER, DARK ; type
	db 60 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/sharpoon.pic", 0, 1 ; sprite dimensions
	dw SharpoonPicFront, SharpoonPicBack

	db BITE, LEER, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
	     REST,         SUBSTITUTE,   SURF,		   EARTHQUAKE,   FISSURE,	   \
		 WATERFALL,        HEADBUTT
	; end

	db BANK(SharpoonPicFront)
	assert BANK(SharpoonPicFront) == BANK(SharpoonPicBack)
