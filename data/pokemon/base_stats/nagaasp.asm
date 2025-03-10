	db DEX_NAGAASP ; pokedex id

	db  71,  112,  57,  95,  65
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 50 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/nagaasp.pic", 0, 1 ; sprite dimensions
	dw NagaaspPicFront, NagaaspPicBack

	db WRAP, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,	   HORN_DRILL,	\
		 FLAMETHROWER
	; end

	db BANK(NagaaspPicFront)
	assert BANK(NagaaspPicFront) == BANK(NagaaspPicBack)
