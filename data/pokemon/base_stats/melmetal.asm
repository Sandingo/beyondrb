	db DEX_MELMETAL ; pokedex id

	db  135,  143,  143,  34,  80
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 3 ; catch rate
	db 252 ; base exp

	INCBIN "gfx/pokemon/front/melmetal.pic", 0, 1 ; sprite dimensions
	dw MelmetalPicFront, MelmetalPicBack

	db HEADBUTT, HARDEN, THUNDERPUNCH, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  RAGE,         THUNDERBOLT,  \
	     THUNDER,      TELEPORT,     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     BIDE,         SWIFT,        REST,         THUNDER_WAVE, SUBSTITUTE,   \
	     FLASH,	 	   HYPER_BEAM,	 SKULL_BASH,   EARTHQUAKE,   ROCK_SLIDE,   \
		 SOLARBEAM,    ICE_BEAM,     SELFDESTRUCT,        HEADBUTT
	; end

	db BANK(MelmetalPicFront)
	assert BANK(MelmetalPicFront) == BANK(MelmetalPicBack)
