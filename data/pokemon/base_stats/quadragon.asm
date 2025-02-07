	db DEX_QUADRAGON ; pokedex id

	db  81, 102,  84,  94, 94
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 44 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/quadragon.pic", 0, 1 ; sprite dimensions
	dw QuadragonPicFront, QuadragonPicBack

	db EMBER, LEER, SCRATCH, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   TOXIC,        FLY,          BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   RAGE,         DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     MIMIC,        DOUBLE_TEAM,  STRENGTH,     BIDE,         FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, SUBSTITUTE,   \
	     SURF,         CUT,			 MEGA_PUNCH,   MEGA_KICK,    WHIRLWIND     \
	; end

	db BANK(QuadragonPicFront)
	assert BANK(QuadragonPicFront) == BANK(QuadragonPicBack)
