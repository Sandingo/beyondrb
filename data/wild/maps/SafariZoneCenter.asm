SafariZoneCenterWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 22, NIDORAN_M
	db 25, RHYHORN
	db 22, VENONAT
	db 24, EXEGGCUTE
	db 31, NIDORINO
	db 25, PARASECT
	db 31, NIDORINA
	db 30, SCYTHER
	db 23, GORILLAIMO
ENDC
IF DEF(_BLUE)
	db 22, NIDORAN_F
	db 25, RHYHORN
	db 22, VENONAT
	db 24, EXEGGCUTE
	db 31, NIDORINA
	db 25, PARASECT
	db 31, NIDORINO
	db 30, PINSIR
	db 23, GORILLAIMO
ENDC
	db 23, TRAMPEL
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
