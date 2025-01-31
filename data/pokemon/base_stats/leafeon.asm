	db DEX_LEAFEON ; pokedex id

	db 65,  110,  130,  95, 65
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 196 ; base exp

	INCBIN "gfx/pokemon/front/leafeon.pic", 0, 1 ; sprite dimensions
	dw LeafeonPicFront, LeafeonPicBack

	db TACKLE, SAND_ATTACK, QUICK_ATTACK, ABSORB ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  MEGA_DRAIN,   \
	     SOLARBEAM,    ICE_BEAM,     SUBSTITUTE,     HYPER_BEAM,   RAGE,         \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      BIDE,         SWIFT,        \
	     SKULL_BASH,   REST,		 STRENGTH
	; end

	db BANK(LeafeonPicFront)
	assert BANK(LeafeonPicFront) == BANK(LeafeonPicBack)
