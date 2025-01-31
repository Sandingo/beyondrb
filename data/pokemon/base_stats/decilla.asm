	db DEX_DECILLA ;pokedex id

	db  61,  90,  70,  15,  40
	;   hp  atk  def  spd  spc

	db NORMAL, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/decilla.pic", 0, 1 ; sprite dimensions
	dw DecillaPicFront, DecillaPicBack

	db SUBSTITUTE, GROWL, TACKLE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      \
	     DIG,          MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db BANK(DecillaPicFront)
	assert BANK(DecillaPicFront) == BANK(DecillaPicBack)
