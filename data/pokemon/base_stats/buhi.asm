	db DEX_BUHI ; pokedex id

	db  58,  97,  40,  112,  53
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 107 ; base exp

	INCBIN "gfx/pokemon/front/buhi.pic", 0, 1 ; sprite dimensions
	dw BuhiPicFront, BuhiPicBack

	db PSYWAVE, SCRATCH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        RAGE,         MEGA_DRAIN,   THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     DREAM_EATER,  REST,         PSYWAVE,      EXPLOSION,    SUBSTITUTE,   \
		 DAZZLINGLEAM, PAY_DAY,		 TAKE_DOWN
	; end

	db BANK(BuhiPicFront)
	assert BANK(BuhiPicFront) == BANK(BuhiPicBack)
