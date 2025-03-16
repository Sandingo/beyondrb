	db DEX_ELEBABY ; pokedex id

	db  45,  63,  37, 95,  65
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/elebaby.pic", 0, 1 ; sprite dimensions
	dw ElebabyPicFront, ElebabyPicBack

	db QUICK_ATTACK, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     STRENGTH,  FLASH,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         METRONOME,    \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, PSYWAVE,      \
	     SUBSTITUTE
	; end

	db BANK(ElebabyPicFront)
	assert BANK(ElebabyPicFront) == BANK(ElebabyPicBack)
