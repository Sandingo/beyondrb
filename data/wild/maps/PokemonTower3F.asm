PokemonTower3FWildMons:
	def_grass_wildmons 10 ; encounter rate
	dbw 20, GASTLY
	dbw 21, GASTLY
	dbw 22, GASTLY
	dbw 23, GASTLY
	dbw 19, GASTLY
IF DEF(_RED)
	dbw 18, GASTLY
	dbw 24, GASTLY
ENDC
IF DEF(_BLUE)
	dbw 18, WISPURR
	dbw 24, WISPURR
ENDC
	dbw 20, CUBONE
	dbw 22, CUBONE
	dbw 25, HAUNTER
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
