SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	dbw 22, NIDORAN_M
	dbw 25, RHYHORN
	dbw 22, VENONAT
	dbw 24, EXEGGCUTE
	dbw 31, NIDORINO
	dbw 25, PARASECT
	dbw 31, NIDORINA
	dbw 30, SCYTHER
	dbw 23, GORILLAIMO
ENDC
IF DEF(_BLUE)
	dbw 22, NIDORAN_F
	dbw 25, RHYHORN
	dbw 22, VENONAT
	dbw 24, EXEGGCUTE
	dbw 31, NIDORINA
	dbw 25, PARASECT
	dbw 31, NIDORINO
	dbw 30, PINSIR
	dbw 23, GORILLAIMO
ENDC
	dbw 23, TRAMPEL
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
