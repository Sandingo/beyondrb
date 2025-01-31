Route23WildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 26, EKANS
ENDC
IF DEF(_BLUE)
	db 26, SANDSHREW
ENDC
	db 33, DITTO
	db 26, SPEAROW
	db 38, FEAROW
	db 38, DITTO
	db 38, FEAROW
IF DEF(_RED)
	db 41, ARBOK
ENDC
IF DEF(_BLUE)
	db 41, SANDSLASH
ENDC
	db 43, DITTO
	db 41, FEAROW
	db 43, FEAROW
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db  5, POLIWAG
	db 10, POLIWAG
	db 15, POLIWAG
	db 20, POLIWAG
	db 10, POLIWAG
	db 15, POLIWAG
	db 20, POLIWAG
	db 30, POLIWAG
	db 35, POLIWHIRL
	db 40, POLIWHIRL
	end_water_wildmons
