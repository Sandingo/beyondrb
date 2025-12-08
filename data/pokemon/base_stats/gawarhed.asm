	db DEX_GAWARHED ; pokedex id

	db 101, 124, 100,  30, 95
	;   hp  atk  def  spd  spc

	db NORMAL, DRAGON ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/gawarhed.pic", 0, 1 ; sprite dimensions
	dw GawarhedPicFront, GawarhedPicBack

	db SUBSTITUTE, GROWL, TACKLE, ROAR ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        HORN_DRILL,   BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      \
	     SEISMIC_TOSS, RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   \
	     SURF,         STRENGTH,	FLAMETHROWER
	; end

	db BANK(GawarhedPicFront)
	assert BANK(GawarhedPicFront) == BANK(GawarhedPicBack)
