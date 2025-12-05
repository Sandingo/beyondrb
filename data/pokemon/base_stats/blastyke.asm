	db DEX_BLASTYKE ; pokedex id

	db  49,  43,  60,  48,  45
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 85 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/blastyke.pic", 0, 1 ; sprite dimensions
	dw BlastykePicFront, BlastykePicBack

	db TACKLE, TAIL_WHIP, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         DIG,          \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SKULL_BASH,   \
	     REST,         SUBSTITUTE,   SURF,         STRENGTH,     WATERFALL
	; end

	db BANK(BlastykePicFront)
	assert BANK(BlastykePicFront) == BANK(BlastykePicBack)
