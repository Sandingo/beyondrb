PowerPlantWildMons:
	def_grass_wildmons 10 ; encounter rate
	dbw 21, VOLTORB
	dbw 21, MAGNEMITE
	dbw 20, PIKACHU
	dbw 24, PIKACHU
	dbw 23, VOLTORB
	dbw 23, MAGNETITE
	dbw 32, MAGNETITE
	dbw 35, MAGNETON
IF DEF(_RED)
	dbw 33, ELECTABUZZ
	dbw 36, ELECTABUZZ
ENDC
IF DEF(_BLUE)
	dbw 33, RAICHU
	dbw 36, RAICHU
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
