	db DEX_PENDRAKEN ; pokedex id

	db  80,  60,  85, 90, 95
	;   hp  atk  def  spd  spc

	db POISON, DARK ; type
	db 60 ; catch rate
	db 205 ; base exp

	INCBIN "gfx/pokemon/front/pendraken.pic", 0, 1 ; sprite dimensions
	dw PendrakenPicFront, PendrakenPicBack

	db CONSTRICT, SMOKESCREEN, BUBBLE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    PSYWAVE,      PSYCHIC_M,    HYPER_BEAM,   RAGE,         \
	     MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         \
	     SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          SURF,         \
		 DAZZLINGLEAM
	; end

	db BANK(PendrakenPicFront)
	assert BANK(PendrakenPicFront) == BANK(PendrakenPicBack)
