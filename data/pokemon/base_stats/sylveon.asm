	db DEX_SYLVEON ; pokedex id

	db 95,  65,  65,  60, 130
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/sylveon.pic", 0, 1 ; sprite dimensions
	dw SylveonPicFront, SylveonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, FAIRY_WIND ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  REFLECT,   \
	     DREAM_EATER,   PSYCHIC_M,     TELEPORT,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  PSYWAVE,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   DAZZLINGLEAM
	; end

	db BANK(SylveonPicFront)
	assert BANK(SylveonPicFront) == BANK(SylveonPicBack)
