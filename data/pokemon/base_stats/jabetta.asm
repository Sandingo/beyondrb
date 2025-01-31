	db DEX_JABETTA ; pokedex id

	db  80,  110,  70,  90,  85
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 60 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/jabetta.pic", 0, 1 ; sprite dimensions
	dw JabettaPicFront, JabettaPicBack

	db BUBBLE, PECK, COUNTER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         \
	     SURF,   STRENGTH,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,         PSYWAVE,      \
	     SUBSTITUTE
	; end

	db BANK(JabettaPicFront)
	assert BANK(JabettaPicFront) == BANK(JabettaPicBack)
