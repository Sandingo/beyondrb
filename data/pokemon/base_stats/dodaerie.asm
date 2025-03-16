	db DEX_DODAERIE ; pokedex id

	db  30,  65,  40,  60,  30
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 56 ; base exp

	INCBIN "gfx/pokemon/front/dodaerie.pic", 0, 1 ; sprite dimensions
	dw DodaeriePicFront, DodaeriePicBack

	db PECK, CHARM, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm WHIRLWIND,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    LUNGE,  \
	     RAGE,         MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SKULL_BASH,   SKY_ATTACK,   REST,         TRI_ATTACK,   SUBSTITUTE,   \
	     FLY,          STEEL_WING
	; end

	db BANK(DodaeriePicFront)
	assert BANK(DodaeriePicFront) == BANK(DodaeriePicBack)
