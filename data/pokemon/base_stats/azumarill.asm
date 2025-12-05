	db DEX_AZUMARILL ; pokedex id

	db  100,  50,  80,  50,  80
	;   hp  atk  def  spd  spc

	db WATER, FAIRY ; type
	db 75 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/azumarill.pic", 0, 1 ; sprite dimensions
	dw AzumarillPicFront, AzumarillPicBack

	db TACKLE, DEFENSE_CURL, TAIL_WHIP, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SURF,      SUBMISSION,      REST,         SUBSTITUTE,   RAGE,         \
	     SWIFT,          MIMIC,        DOUBLE_TEAM,  BIDE,	    SEISMIC_TOSS,  \
		 WATERFALL
	; end

	db BANK(AzumarillPicFront)
	assert BANK(AzumarillPicFront) == BANK(AzumarillPicBack)
