LeagueHQB1FWildMons:
	def_grass_wildmons 8 ; encounter rate
IF DEF(_RED)
	dbw  54, WEEDLE
	dbw  54, CATERPIE
	dbw  51, NIDORAN_M
	dbw  51, PIKACHU
	dbw  52, METAPOD
	dbw  52, KAKUNA
	dbw  52, METAPOD
ENDC
IF DEF(_BLUE)
	dbw  54, CATERPIE
	dbw  54, WEEDLE
	dbw  51, NIDORAN_F
	dbw  51, PIKACHU
	dbw  52, KAKUNA
	dbw  52, METAPOD
	dbw  52, KAKUNA
ENDC
	dbw  52, PUPAL
	dbw  50, PIKACHU
	dbw  52, PIKACHU
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
