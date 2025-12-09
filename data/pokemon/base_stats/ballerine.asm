	db DEX_BALLERINE ; pokedex id

	db  20,  25,  45,  60,  90
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 130 ; catch rate
	db 78 ; base exp

	INCBIN "gfx/pokemon/front/ballerine.pic", 0, 1 ; sprite dimensions
	dw BallerinePicFront, BallerinePicBack

	db CONFUSION, BARRIER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DAZZLINGLEAM,  FLASH,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, LIGHT_SCREEN,     \
	     SUBSTITUTE,        HEADBUTT
	; end

	db BANK(BallerinePicFront)
	assert BANK(BallerinePicFront) == BANK(BallerinePicBack)
