	db DEX_KABIN ; pokedex id

	db 90, 90,  120,  35,  80
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/kabin.pic", 0, 1 ; sprite dimensions
	dw KabinPicFront, KabinPicBack

	db METRONOME, REST, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SELFDESTRUCT, FIRE_BLAST,   SKULL_BASH,   \
	     REST,               ROCK_SLIDE,   SUBSTITUTE,   SURF,         \
	     STRENGTH,	FLAMETHROWER
	; end

	db BANK(KabinPicFront)
	assert BANK(KabinPicFront) == BANK(KabinPicBack)
