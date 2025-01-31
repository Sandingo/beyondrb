	db DEX_MURKROW ; pokedex id

	db  60,  85,  42,  91,  85
	;   hp  atk  def  spd  spc

	db DARK, FLYING ; type
	db 30 ; catch rate
	db 107 ; base exp

	INCBIN "gfx/pokemon/front/murkrow.pic", 0, 1 ; sprite dimensions
	dw MurkrowPicFront, MurkrowPicBack

	db PECK, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm RAZOR_WIND,   WHIRLWIND,    TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     SKY_ATTACK,   REST,         SUBSTITUTE,   FLY,	     PSYCHIC_M,      \
	     DREAM_EATER,  PSYWAVE
	; end

	db BANK(MurkrowPicFront)
	assert BANK(MurkrowPicFront) == BANK(MurkrowPicBack)
