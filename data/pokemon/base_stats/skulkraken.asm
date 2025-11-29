	db DEX_SKULKRAKEN ; pokedex id

	db  95, 100,  81,  79, 125
	;   hp  atk  def  spd  spc

	db WATER, DARK ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/skulkraken.pic", 0, 1 ; sprite dimensions
	dw SkulkrakenPicFront, SkulkrakenPicBack

	db BITE, CONSTRICT, SCREECH, HYDRO_PUMP ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   \
	     WATER_GUN,    ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         \
	     DRAGON_RAGE,    ROCK_SLIDE,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      BIDE,         GIGA_DRAIN,   SKULL_BASH,   REST,         \
	     SUBSTITUTE,   SURF,         STRENGTH
	; end

	db BANK(SkulkrakenPicFront)
	assert BANK(SkulkrakenPicFront) == BANK(SkulkrakenPicBack)
