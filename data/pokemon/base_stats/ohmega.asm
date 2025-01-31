	db DEX_OHMEGA ; pokedex id

	db 101, 106,  120,  25,  95
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/ohmega.pic", 0, 1 ; sprite dimensions
	dw OhmegaPicFront, OhmegaPicBack

	db METAL_CLAW, HARDEN, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   PAY_DAY,      SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         STRENGTH,    THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     FISSURE,      ROCK_SLIDE,    SUBSTITUTE,        DOUBLE_TEAM,  REFLECT, \
	     BIDE,         METRONOME,    SELFDESTRUCT, FIRE_BLAST,   SKULL_BASH,   \
	     REST,		   FLASH,		TRI_ATTACK
	; end

	db BANK(OhmegaPicFront)
	assert BANK(OhmegaPicFront) == BANK(OhmegaPicBack)
