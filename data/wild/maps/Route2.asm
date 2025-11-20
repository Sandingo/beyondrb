Route2WildMons:
	def_grass_wildmons 25 ; encounter rate
	db  3, RATTATA
	db  3, COINPUR
	db  4, PIDGEY
	db  4, RATTATA
	db  5, KOKANA
IF DEF(_RED)
	db  3, WEEDLE
	db  2, RATTATA
	db  5, RATTATA
ENDC
IF DEF(_BLUE)
	db  3, CATERPIE
	db  2, RATTATA
	db  5, RATTATA
ENDC
	db  4, PSYDUCK
	db  5, PSYDUCK
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
