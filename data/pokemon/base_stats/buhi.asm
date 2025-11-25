	db DEX_WISPURR ; pokedex id

	db  58,  97,  40,  112,  53
	;   hp  atk  def  spd  spc

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 107 ; base exp

	INCBIN "gfx/pokemon/front/buhi.pic", 0, 1 ; sprite dimensions
	dw WispurrPicFront, WispurrPicBack

	db PSYWAVE, SCRATCH, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        RAGE,         MEGA_DRAIN,   THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  BIDE,         SWIFT,        \
	     DREAM_EATER,  REST,	TAKE_DOWN, EXPLOSION,    SUBSTITUTE,   \
		 DAZZLINGLEAM, PAY_DAY,		 TAKE_DOWN
	; end

	db BANK(WispurrPicFront)
	assert BANK(WispurrPicFront) == BANK(WispurrPicBack)
