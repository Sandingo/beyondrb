	db DEX_HONCHKROW ; pokedex id

	db  100, 125, 52, 71,  105
	;   hp  atk  def  spd  spc

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 187 ; base exp

	INCBIN "gfx/pokemon/front/honchkrow.pic", 0, 1 ; sprite dimensions
	dw HonchkrowPicFront, HonchkrowPicBack

	db PECK, HAZE, WING_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         \
	     SWIFT,        SKY_ATTACK,   REST,         SUBSTITUTE,   FLY,          \
	     PSYCHIC_M,    DREAM_EATER,  PSYWAVE
	; end

	db BANK(HonchkrowPicFront)
	assert BANK(HonchkrowPicFront) == BANK(HonchkrowPicBack)
