	db DEX_VULPIII ; pokedex id

	db  28,  31,  30,  60,  60
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 225 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/vulpiii.pic", 0, 1 ; sprite dimensions
	dw VulpiiiPicFront, VulpiiiPicBack

	db EMBER, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,	\
		 FLAMETHROWER,        HEADBUTT
	; end

	db BANK(VulpiiiPicFront)
	assert BANK(VulpiiiPicFront) == BANK(VulpiiiPicBack)
