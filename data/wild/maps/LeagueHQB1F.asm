LeagueHQB1FWildMons:
	def_grass_wildmons 8 ; encounter rate
IF DEF(_RED)
	db  54, WEEDLE
	db  54, CATERPIE
	db  51, NIDORAN_M
	db  51, PIKACHU
	db  52, METAPOD
	db  52, KAKUNA
	db  52, METAPOD
ENDC
IF DEF(_BLUE)
	db  54, CATERPIE
	db  54, WEEDLE
	db  51, NIDORAN_F
	db  51, PIKACHU
	db  52, KAKUNA
	db  52, METAPOD
	db  52, KAKUNA
ENDC
	db  52, PUPAL
	db  50, PIKACHU
	db  52, PIKACHU
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
