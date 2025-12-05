	db DEX_SKIMPER ; pokedex id

	db  62,  43,  36,  88,  71
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/skimper.pic", 0, 1 ; sprite dimensions
	dw SkimperPicFront, SkimperPicBack

	db SCRATCH, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     RAGE,         DRAGON_RAGE,  \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, SUBSTITUTE,   SURF,	FLAMETHROWER,	WATERFALL
	; end

	db BANK(SkimperPicFront)
	assert BANK(SkimperPicFront) == BANK(SkimperPicBack)
