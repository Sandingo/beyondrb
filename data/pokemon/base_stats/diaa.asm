	db DEX_DIAA ; pokedex id

	db  85, 110,  95, 60,  80
	;   hp  atk  def  spd  spc

	db STEEL, STEEL ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/diaa.pic", 0, 1 ; sprite dimensions
	dw DiaaPicFront, DiaaPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     PSYCHIC_M,     STRENGTH,     HYPER_BEAM,   RAGE,         THUNDERBOLT,  \
	     THUNDER_WAVE,      EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         PSYWAVE,   SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(DiaaPicFront)
	assert BANK(DiaaPicFront) == BANK(DiaaPicBack)
