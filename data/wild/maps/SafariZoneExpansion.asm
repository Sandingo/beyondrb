SafariZoneExpansionWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 32, NIDORAN_F
	db 35, WEEPINBELL
	db 32, VENOMOTH
	db 34, EXEGGUTOR
	db 41, NIDORINA
	db 35, RAMOOSE
	db 41, NIDORINO
	db 40, PINSIR
ENDC
IF DEF(_BLUE)
	db 32, NIDORAN_M
	db 35, GLOOM
	db 32, VENOMOTH
	db 34, EXEGGUTOR
	db 41, NIDORINO
	db 35, RAMOOSE
	db 41, NIDORINA
	db 40, SCYTHER
ENDC
	db 33, MR_MIME
	db 33, LICKITUNG
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
