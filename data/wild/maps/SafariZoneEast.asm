SafariZoneEastWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	dbw 24, NIDORAN_F
	dbw 26, DODUO
	dbw 22, PARAS
	dbw 25, EXEGGCUTE
	dbw 33, NIDORINO
	dbw 23, EXEGGCUTE
	dbw 24, PARASECT
	dbw 25, KANGASKHAN
	dbw 25, TRAMPEL
	dbw 28, SCYTHER
ENDC
IF DEF(_BLUE)
	dbw 24, NIDORAN_M
	dbw 26, DODUO
	dbw 22, PARAS
	dbw 25, EXEGGCUTE
	dbw 33, NIDORINA
	dbw 23, EXEGGCUTE
	dbw 24, PARASECT
	dbw 25, KANGASKHAN
	dbw 25, TRAMPEL
	dbw 28, PINSIR
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
