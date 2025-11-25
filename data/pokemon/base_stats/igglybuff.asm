	db DEX_IGGLYBUFF ; pokedex id

	db 90,  30,  15,  15,  20
	;   hp  atk  def  spd  spc

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 39 ; base exp

	INCBIN "gfx/pokemon/front/igglybuff.pic", 0, 1 ; sprite dimensions
	dw IgglybuffPicFront, IgglybuffPicBack

	db SING, CHARM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DAZZLINGLEAM,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   COUNTER,      SEISMIC_TOSS, RAGE,         SOLARBEAM,    \
	     THUNDERBOLT,  THUNDER,      PSYCHIC_M,    TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   SKULL_BASH,   \
	     REST,         THUNDER_WAVE,       TRI_ATTACK,   SUBSTITUTE,   \
	     STRENGTH,     FLASH,	     FLAMETHROWER,	LIGHT_SCREEN
	; end

	db BANK(IgglybuffPicFront)
	assert BANK(IgglybuffPicFront) == BANK(IgglybuffPicBack)
