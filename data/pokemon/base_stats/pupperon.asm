	db DEX_PUPPERON ; pokedex id

	db  50,  65,  40,  50,  45
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 45 ; base exp

	INCBIN "gfx/pokemon/front/pupperon.pic", 0, 1 ; sprite dimensions
	dw PupperonPicFront, PupperonPicBack

	db BITE, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    FLAMETHROWER,  RAGE,         \
	     DRAGON_RAGE,  DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         \
	     SUBSTITUTE
	; end

	db BANK(PupperonPicFront)
	assert BANK(PupperonPicFront) == BANK(PupperonPicBack)
