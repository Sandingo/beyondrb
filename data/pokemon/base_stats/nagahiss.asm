	db DEX_NAGAHISS ; pokedex id

	db  71,  82,  57,  95,  65
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 50 ; catch rate
	db 170 ; base exp

	INCBIN "gfx/pokemon/front/nagahiss.pic", 0, 1 ; sprite dimensions
	dw NagahissPicFront, NagahissPicBack

	db WRAP, TAIL_WHIP, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  HYPER_BEAM,   \
	     RAGE,         MEGA_DRAIN,   EARTHQUAKE,   FISSURE,      DIG,          \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH,	   HORN_DRILL,	\
		 FLAMETHROWER
	; end

	db BANK(NagahissPicFront)
	assert BANK(NagahissPicFront) == BANK(NagahissPicBack)
