LeagueHQB3FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db  48, SEADRA
	db  48, KINGLER
	db  48, CLOYSTER
	db  48, DEWGONG
IF DEF(_RED)
	db  48, EKANS
	db  47, DEWGONG
	db  49, EKANS
	db  49, CLOYSTER
	db  47, EKANS
	db  50, EKANS
ENDC
IF DEF(_BLUE)
	db  48, SANDSHREW
	db  47, DEWGONG
	db  49, SANDSHREW
	db  49, CLOYSTER
	db  47, SANDSHREW
	db  50, SANDSHREW
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
