	db DEX_COINPUR ; pokedex id

	db  35,  40,  30,  85,  35
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 42 ; base exp

	INCBIN "gfx/pokemon/front/coinpur.pic", 0, 1 ; sprite dimensions
	dw CoinpurPicFront, CoinpurPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    PAY_DAY,      RAGE,         THUNDERBOLT,  THUNDER,      \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        SKULL_BASH,   \
	     REST,         SUBSTITUTE,	CUT,        HEADBUTT
	; end

	db BANK(CoinpurPicFront)
	assert BANK(CoinpurPicFront) == BANK(CoinpurPicBack)
