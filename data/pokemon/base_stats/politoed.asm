	db DEX_POLITOED ; pokedex id

	db  90,  75,  75,  70,  100
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/politoed.pic", 0, 1 ; sprite dimensions
	dw PolitoedPicFront, PolitoedPicBack

	db HYPNOSIS, WATER_GUN, DOUBLESLAP, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,      COUNTER,      SUBSTITUTE, RAGE,         \
	     SURF,   STRENGTH,      PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         METRONOME,    SKULL_BASH,   REST,	WATERFALL
	; end

	db BANK(PolitoedPicFront)
	assert BANK(PolitoedPicFront) == BANK(PolitoedPicBack)
