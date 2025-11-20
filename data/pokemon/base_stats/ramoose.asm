	db DEX_RAMOOSE ; pokedex id

	db  85, 110,  95, 60,  80
	;   hp  atk  def  spd  spc

	db NORMAL, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/ramoose.pic", 0, 1 ; sprite dimensions
	dw RamoosePicFront, RamoosePicBack

	db STOMP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        HORN_DRILL,   BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     PSYCHIC_M,     STRENGTH,     HYPER_BEAM,   RAGE,         THUNDERBOLT,  \
	     THUNDER_WAVE,      EARTHQUAKE,   FISSURE,      MIMIC,        DOUBLE_TEAM,  \
	     BIDE,         PSYWAVE,   SKULL_BASH,   REST,         SUBSTITUTE
	; end

	db BANK(RamoosePicFront)
	assert BANK(RamoosePicFront) == BANK(RamoosePicBack)
