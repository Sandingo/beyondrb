	db DEX_BALUMBA ; pokedex id

	db 80,  50,  30,  125,  80
	;   hp  atk  def  spd  spc

	db FAIRY, FLYING ; type
	db 170 ; catch rate
	db 89 ; base exp

	INCBIN "gfx/pokemon/front/balumba.pic", 0, 1 ; sprite dimensions
	dw BalumbaPicFront, BalumbaPicBack

	db GUST, DEFENSE_CURL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TRI_ATTACK,   SUBSTITUTE,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,	FLAMETHROWER,	FLY,     SELFDESTRUCT,     \
	     RAZOR_WIND,   WHIRLWIND,    METRONOME,    RAGE,         SWIFT,    \
	     THUNDERBOLT,  EXPLOSION,    FLASH,    TELEPORT,     MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         FIRE_BLAST,   SKULL_BASH,   \
	     REST,         THUNDER_WAVE, DAZZLINGLEAM
	; end

	db BANK(BalumbaPicFront)
	assert BANK(BalumbaPicFront) == BANK(BalumbaPicBack)
