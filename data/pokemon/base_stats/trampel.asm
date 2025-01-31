	db DEX_TRAMPEL ; pokedex id

	db  110, 100,  95, 56,  64
	;   hp  atk  def  spd  spc

	db NORMAL, GROUND ; type
	db 45 ; catch rate
	db 222 ; base exp

	INCBIN "gfx/pokemon/front/trampel.pic", 0, 1 ; sprite dimensions
	dw TrampelPicFront, TrampelPicBack

	db TACKLE, GROWL, HORN_ATTACK, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   RAGE,         THUNDERBOLT,  \
	     THUNDER,      EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         FIRE_BLAST,   SKULL_BASH,   REST,         SUBSTITUTE,   \
	     STRENGTH,	   SUBMISSION,   SEISMIC_TOSS, COUNTER,      SWIFT,        \
		 ROCK_SLIDE
	; end

	db BANK(TrampelPicFront)
	assert BANK(TrampelPicFront) == BANK(TrampelPicBack)
