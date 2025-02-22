	db DEX_GODZILANTE ; pokedex id

	db 100, 130,  70,  20,  90
	;   hp  atk  def  spd  spc

	db DRAGON, DARK ; type
	db 35 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/godzilante.pic", 0, 1 ; sprite dimensions
	dw GodzilantePicFront, GodzilantePicBack

	db HORN_ATTACK, BITE, EMBER, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm EARTHQUAKE,   TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   RAGE,         DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, SUBSTITUTE,   \
	     SURF,         STRENGTH,     FLAMETHROWER, DIG
	; end

	db BANK(GodzilantePicFront)
	assert BANK(GodzilantePicFront) == BANK(GodzilantePicBack)
