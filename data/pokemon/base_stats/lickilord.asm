	db DEX_LICKILORD ; pokedex id

	db  110,  85,  95,  50,  95
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 193 ; base exp

	INCBIN "gfx/pokemon/front/lickilord.pic", 0, 1 ; sprite dimensions
	dw LickilordPicFront, LickilordPicBack

	db LICK, WRAP, SUPERSONIC, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    TOXIC,        BODY_SLAM,    \
	     TAKE_DOWN,    DOUBLE_EDGE,  BUBBLEBEAM,   WATER_GUN,    ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   COUNTER,      SEISMIC_TOSS, \
	     RAGE,         THUNDERBOLT,  THUNDER,      EARTHQUAKE,   FISSURE,      \
	     MIMIC,        DOUBLE_TEAM,  BIDE,         FIRE_BLAST,   SKULL_BASH,   \
	     REST,         SUBSTITUTE,   CUT,          SURF,         STRENGTH, \
		 FLAMETHROWER,        HEADBUTT
	; end

	db BANK(LickilordPicFront)
	assert BANK(LickilordPicFront) == BANK(LickilordPicBack)
