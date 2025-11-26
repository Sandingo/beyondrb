	db DEX_MIMMEO ; pokedex id

	db  100,  55,  50,  150,  50
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 25 ; catch rate
	db 121 ; base exp

	INCBIN "gfx/pokemon/front/mimmeo.pic", 0, 1 ; sprite dimensions
	dw MimmeoPicFront, MimmeoPicBack

	db TRANSFORM, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm REFLECT,   LIGHT_SCREEN    \
	; end

	db BANK(MimmeoPicFront)
	assert BANK(MimmeoPicFront) == BANK(MimmeoPicBack)
