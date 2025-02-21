	db DEX_MAGNETITE ; pokedex id

	db  30,  45,  80,  55,  105
	;   hp  atk  def  spd  spc

	db ELECTRIC, STEEL ; type
	db 120 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/magnetite.pic", 0, 1 ; sprite dimensions
	dw MagnetitePicFront, MagnetitePicBack

	db TACKLE, SUPERSONIC, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         THUNDERBOLT,  \
	     THUNDER,      TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        REST,         THUNDER_WAVE, SUBSTITUTE,   \
	     FLASH
	; end

	db BANK(MagnetitePicFront)
	assert BANK(MagnetitePicFront) == BANK(MagnetitePicBack)
