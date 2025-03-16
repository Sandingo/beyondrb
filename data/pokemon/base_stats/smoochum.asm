	db DEX_SMOOCHUM ; pokedex id

	db  45,  30,  15,  65,  85
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/smoochum.pic", 0, 1 ; sprite dimensions
	dw SmoochumPicFront, SmoochumPicBack

	db POUND, LICK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     PSYWAVE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBSTITUTE,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     PSYCHIC_M,    TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         METRONOME,    SKULL_BASH,   REST      \
	; end

	db BANK(SmoochumPicFront)
	assert BANK(SmoochumPicFront) == BANK(SmoochumPicBack)
