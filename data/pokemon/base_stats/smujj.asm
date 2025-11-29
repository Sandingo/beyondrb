	db DEX_SMUJJ ; pokedex id

	db  60,  70,  40,  15,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 190 ; catch rate
	db 51 ; base exp

	INCBIN "gfx/pokemon/front/smujj.pic", 0, 1 ; sprite dimensions
	dw SmujjPicFront, SmujjPicBack

	db POUND, DISABLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    RAGE,         GIGA_DRAIN,   THUNDERBOLT,  \
	     THUNDER,      MIMIC,        DOUBLE_TEAM,  BIDE,         SELFDESTRUCT, \
	     FIRE_BLAST,   REST,         EXPLOSION,    SUBSTITUTE,	FLAMETHROWER
	; end

	db BANK(SmujjPicFront)
	assert BANK(SmujjPicFront) == BANK(SmujjPicBack)
