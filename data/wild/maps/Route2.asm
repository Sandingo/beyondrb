Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
	dbw  3, RATTATA
	dbw  3, COINPUR
	dbw  4, PIDGEY
	dbw  4, RATTATA
	dbw  5, KOKANA
IF DEF(_RED)
	dbw  3, WEEDLE
	dbw  2, RATTATA
	dbw  5, RATTATA
ENDC
IF DEF(_BLUE)
	dbw  3, CATERPIE
	dbw  2, RATTATA
	dbw  5, RATTATA
ENDC
	dbw  4, PSYDUCK
	dbw  5, PSYDUCK
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
