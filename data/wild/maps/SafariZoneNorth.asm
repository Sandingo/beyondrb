SafariZoneNorthWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	dbw 22, NIDORAN_M
	dbw 26, RHYHORN
	dbw 23, PARAS
	dbw 25, EXEGGCUTE
	dbw 30, NIDORINO
	dbw 27, GAVILLAIN
	dbw 30, NIDORINA
ENDC
IF DEF(_BLUE)
	dbw 22, NIDORAN_F
	dbw 26, RHYHORN
	dbw 23, PARAS
	dbw 25, EXEGGCUTE
	dbw 30, NIDORINA
	dbw 27, GAVILLAIN
	dbw 30, NIDORINO
ENDC
	dbw 32, GAVILLAIN
	dbw 26, CHANSEY
	dbw 28, TAUROS
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
