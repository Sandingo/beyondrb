	db DEX_GORILLAIMO ; pokedex id

	db 130, 100,  75,  65,  40
	;   hp  atk  def  spd  spc

	db NORMAL, FIGHTING ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/gorillaimo.pic", 0, 1 ; sprite dimensions
	dw GorillaimoPicFront, GorillaimoPicBack

	db COMET_PUNCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SELFDESTRUCT, FIRE_BLAST,   SKULL_BASH,   \
	     REST,               ROCK_SLIDE,   SUBSTITUTE,   SURF,         \
	     STRENGTH,        HEADBUTT
	; end

	db BANK(GorillaimoPicFront)
	assert BANK(GorillaimoPicFront) == BANK(GorillaimoPicBack)
