	db DEX_DOOMSDAY ; pokedex id

	db  115,  90, 124, 43, 124
	;   hp  atk  def  spd  spc

	db GHOST, DARK ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/doomsday.pic", 0, 1 ; sprite dimensions
	dw DoomsdayPicFront, DoomsdayPicBack

	db FEINT_ATTACK, HYPNOSIS, NIGHT_SHADE, DREAM_EATER ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         GIGA_DRAIN,   THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         METRONOME,    SELFDESTRUCT, \
	     SKULL_BASH,   DREAM_EATER,  REST,               EXPLOSION,    \
	     SUBSTITUTE,   STRENGTH,	 ICE_BEAM,     BLIZZARD,     FIRE_BLAST,   \
		 BUBBLEBEAM,   WATER_GUN,    TELEPORT,     TRI_ATTACK,   FLASH,	\
		 FLAMETHROWER
	; end

	db BANK(DoomsdayPicFront)
	assert BANK(DoomsdayPicFront) == BANK(DoomsdayPicBack)
