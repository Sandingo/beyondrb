SafariZoneWestWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 25, NIDORAN_M
	db 26, DODUO
	db 23, VENONAT
	db 24, EXEGGCUTE
	db 33, NIDORINO
	db 26, EXEGGCUTE
	db 25, NIDORAN_F
ENDC
IF DEF(_BLUE) || DEF(_GREEN)
	db 25, NIDORAN_F
	db 26, DODUO
	db 23, VENONAT
	db 24, EXEGGCUTE
	db 33, NIDORINA
	db 26, EXEGGCUTE
	db 25, NIDORAN_M
ENDC
	db 31, VENOMOTH
IF DEF(_RED) || DEF(_GREEN)
	db 26, TAUROS
ENDC
IF DEF(_BLUE)
	db 26, LICKITUNG
ENDC
	db 28, KANGASKHAN
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
