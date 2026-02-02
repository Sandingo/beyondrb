; this function temporarily makes the starters owned
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex:
	ASSERT STARTER1 == CHARMANDER
	ASSERT STARTER2 == SQUIRTLE
	ASSERT STARTER3 == BULBASAUR
	ld hl, wPokedexOwned + ((DEX_BULBASAUR - 1) / 8)
	set (DEX_BULBASAUR - 1) % 8, [hl]
IF ((DEX_CHARMANDER - 1) / 8) != ((DEX_BULBASAUR - 1) / 8)
	ld hl, wPokedexOwned + ((DEX_CHARMANDER - 1) / 8)
ENDC
	set (DEX_CHARMANDER - 1) % 8, [hl]
IF ((DEX_SQUIRTLE - 1) / 8) != ((DEX_CHARMANDER - 1) / 8)
	ld hl, wPokedexOwned + ((DEX_SQUIRTLE - 1) / 8)
ENDC
	set (DEX_SQUIRTLE - 1) % 8, [hl]
	predef ShowPokedexData
	xor a
	ld hl, wPokedexOwned + ((DEX_BULBASAUR - 1) / 8)
	res (DEX_BULBASAUR - 1) % 8, [hl]
IF ((DEX_CHARMANDER - 1) / 8) != ((DEX_BULBASAUR - 1) / 8)
	ld hl, wPokedexOwned + ((DEX_CHARMANDER - 1) / 8)
ENDC
	res (DEX_CHARMANDER - 1) % 8, [hl]
IF ((DEX_SQUIRTLE - 1) / 8) != ((DEX_CHARMANDER - 1) / 8)
	ld hl, wPokedexOwned + ((DEX_SQUIRTLE - 1) / 8)
ENDC
	res (DEX_SQUIRTLE - 1) % 8, [hl]
	ret