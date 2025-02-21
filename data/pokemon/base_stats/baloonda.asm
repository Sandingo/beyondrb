	db DEX_BALOONDA ; pokedex id

	db 80,  80,  30,  125,  80
	;   hp  atk  def  spd  spc

	db FAIRY, FLYING ; type
	db 170 ; catch rate
	db 89 ; base exp

	INCBIN "gfx/pokemon/front/baloonda.pic", 0, 1 ; sprite dimensions
	dw BaloondaPicFront, BaloondaPicBack

	db GUST, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TRI_ATTACK,   SUBSTITUTE,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   PSYWAVE,    FLY,     SELFDESTRUCT,     \
	     RAZOR_WIND,   WHIRLWIND,    METRONOME,    RAGE,         SWIFT,    \
	     THUNDERBOLT,  EXPLOSION,    FLASH,    TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   SKULL_BASH,   \
	     REST,         THUNDER_WAVE, DAZZLINGLEAM, FLAMETHROWER
	; end

	db BANK(BaloondaPicFront)
	assert BANK(BaloondaPicFront) == BANK(BaloondaPicBack)
