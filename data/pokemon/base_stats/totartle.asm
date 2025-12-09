	db DEX_TOTARTLE ; pokedex id

	db  79,  83, 85,  78,  100
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 45 ; catch rate
	db 210 ; base exp

	INCBIN "gfx/pokemon/front/totartle.pic", 0, 1 ; sprite dimensions
	dw TotartlePicFront, TotartlePicBack

	db TACKLE, TAIL_WHIP, BUBBLE, AURORA_BEAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     EARTHQUAKE,   FISSURE,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     SURF,         STRENGTH,	 WATERFALL,        HEADBUTT
	; end

	db BANK(TotartlePicFront)
	assert BANK(TotartlePicFront) == BANK(TotartlePicBack)
