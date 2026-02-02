Route23WildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	dbw 36, EKANS
ENDC
IF DEF(_BLUE)
	dbw 36, SANDSHREW
ENDC
	dbw 33, DITTO
	dbw 36, SPEAROW
	dbw 38, FEAROW
	dbw 38, DITTO
	dbw 38, FEAROW
IF DEF(_RED)
	dbw 41, ARBOK
ENDC
IF DEF(_BLUE)
	dbw 41, SANDSLASH
ENDC
	dbw 43, DITTO
	dbw 41, FEAROW
	dbw 43, FEAROW
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	dbw  5, POLIWAG
	dbw 10, POLIWAG
	dbw 15, POLIWAG
	dbw 20, POLIWAG
	dbw 10, POLIWAG
	dbw 15, POLIWAG
	dbw 20, POLIWAG
	dbw 30, POLIWAG
	dbw 35, POLIWHIRL
	dbw 40, POLIWHIRL
	end_water_wildmons
