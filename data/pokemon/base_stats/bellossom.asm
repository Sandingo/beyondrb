	db DEX_BELLOSSOM ; pokedex id

	db  75,  80,  85,  50, 100
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 184 ; base exp

	INCBIN "gfx/pokemon/front/bellossom.pic", 0, 1 ; sprite dimensions
	dw BellossomPicFront, BellossomPicBack

	db STUN_SPORE, SLEEP_POWDER, ACID, PETAL_DANCE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      BIDE,         REST,         SUBSTITUTE,   \
	     CUT,          DAZZLINGLEAM
	; end

	db BANK(BellossomPicFront)
	assert BANK(BellossomPicFront) == BANK(BellossomPicBack)
