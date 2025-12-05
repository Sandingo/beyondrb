	db DEX_MARILL ; pokedex id

	db  70,  20,  50,  40,  50
	;   hp  atk  def  spd  spc

	db WATER, FAIRY ; type
	db 190 ; catch rate
	db 58 ; base exp

	INCBIN "gfx/pokemon/front/marill.pic", 0, 1 ; sprite dimensions
	dw MarillPicFront, MarillPicBack

	db TACKLE, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SURF,      SUBMISSION,      REST,         SUBSTITUTE,   RAGE,         \
	     SWIFT,          MIMIC,        DOUBLE_TEAM,  BIDE,	SEISMIC_TOSS,	   \
		 WATERFALL
	; end

	db BANK(MarillPicFront)
	assert BANK(MarillPicFront) == BANK(MarillPicBack)
