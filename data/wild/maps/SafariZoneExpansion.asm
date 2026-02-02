SafariZoneExpansionWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	dbw 32, NIDORAN_F
	dbw 35, WEEPINBELL
	dbw 32, VENOMOTH
	dbw 34, EXEGGUTOR
	dbw 41, NIDORINA
	dbw 35, RAMOOSE
	dbw 41, NIDORINO
	dbw 40, PINSIR
ENDC
IF DEF(_BLUE)
	dbw 32, NIDORAN_M
	dbw 35, GLOOM
	dbw 32, VENOMOTH
	dbw 34, EXEGGUTOR
	dbw 41, NIDORINO
	dbw 35, RAMOOSE
	dbw 41, NIDORINA
	dbw 40, SCYTHER
ENDC
	dbw 33, MR_MIME
	dbw 33, LICKITUNG
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
