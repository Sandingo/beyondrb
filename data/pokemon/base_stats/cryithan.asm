	db DEX_CRYITHAN ; pokedex id

	db  102, 93,  86,  98, 121
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/cryithan.pic", 0, 1 ; sprite dimensions
	dw CryithanPicFront, CryithanPicBack

	db SCRATCH, TAIL_WHIP, MIST, AMNESIA ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm STRENGTH,   TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   RAGE,         DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, SUBSTITUTE,   \
	     SURF,	FLAMETHROWER,	WATERFALL
	; end

	db BANK(CryithanPicFront)
	assert BANK(CryithanPicFront) == BANK(CryithanPicBack)
