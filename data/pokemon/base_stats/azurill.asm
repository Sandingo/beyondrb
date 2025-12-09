	db DEX_AZURILL ; pokedex id

	db  50,  20,  40,  20,  40
	;   hp  atk  def  spd  spc

	db NORMAL, FAIRY ; type
	db 150 ; catch rate
	db 33 ; base exp

	INCBIN "gfx/pokemon/front/azurill.pic", 0, 1 ; sprite dimensions
	dw AzurillPicFront, AzurillPicBack

	db SPLASH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    TOXIC,        BODY_SLAM,    TAKE_DOWN,    \
	     SEISMIC_TOSS,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     BLIZZARD,     \
	     SURF,      SUBMISSION,      REST,         SUBSTITUTE,   RAGE,         \
	     SWIFT,          MIMIC,        DOUBLE_TEAM,  BIDE,        HEADBUTT
	; end

	db BANK(AzurillPicFront)
	assert BANK(AzurillPicFront) == BANK(AzurillPicBack)
