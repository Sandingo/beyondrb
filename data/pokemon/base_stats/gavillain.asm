	db DEX_GAVILLAIN ; pokedex id

	db  75, 105,  85, 40,  100
	;   hp  atk  def  spd  spc

	db WATER, GRASS ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/gavillain.pic", 0, 1 ; sprite dimensions
	dw GavillainPicFront, GavillainPicBack

	db BIDE, BUBBLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    STRENGTH,     SOLARBEAM,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     SUBSTITUTE,   SURF,      MEGA_DRAIN,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST
	; end

	db BANK(GavillainPicFront)
	assert BANK(GavillainPicFront) == BANK(GavillainPicBack)
