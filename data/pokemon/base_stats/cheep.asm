	db DEX_CHEEP ; pokedex id

	db  45,  65,  40,  60,  40
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 111 ; base exp

	INCBIN "gfx/pokemon/front/cheep.pic", 0, 1 ; sprite dimensions
	dw CheepPicFront, CheepPicBack

	db BUBBLE, PECK, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         SUBSTITUTE,   \
	     SURF,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     METRONOME,    SKULL_BASH,   REST,	WATERFALL,        HEADBUTT              
	; end

	db BANK(CheepPicFront)
	assert BANK(CheepPicFront) == BANK(CheepPicBack)
