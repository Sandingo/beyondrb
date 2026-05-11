SafariZoneNorthWildMons:
	def_grass_wildmons 30 ; encounter rate
IF DEF(_RED)
	db 22, NIDORAN_M
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINO
	db 27, GAVILLAIN
	db 30, NIDORINA
ENDC
IF DEF(_BLUE) || DEF(_GREEN)
	db 22, NIDORAN_F
	db 26, RHYHORN
	db 23, PARAS
	db 25, EXEGGCUTE
	db 30, NIDORINA
	db 27, GAVILLAIN
	db 30, NIDORINO
ENDC
	db 32, GAVILLAIN
	db 26, CHANSEY
IF DEF(_RED) || DEF(_GREEN)
	db 28, TAUROS
ENDC
IF DEF(_BLUE)
	db 28, LICKITUNG
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
