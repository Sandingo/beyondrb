SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	dbw 25, NIDORAN_M
	dbw 26, DODUO
	dbw 23, VENONAT
	dbw 24, EXEGGCUTE
	dbw 33, NIDORINO
	dbw 26, EXEGGCUTE
	dbw 25, NIDORAN_F
ENDC
IF DEF(_BLUE)
	dbw 25, NIDORAN_F
	dbw 26, DODUO
	dbw 23, VENONAT
	dbw 24, EXEGGCUTE
	dbw 33, NIDORINA
	dbw 26, EXEGGCUTE
	dbw 25, NIDORAN_M
ENDC
	dbw 31, VENOMOTH
	dbw 26, TAUROS
	dbw 28, KANGASKHAN
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
