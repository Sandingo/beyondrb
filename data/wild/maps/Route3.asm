Route3WildMons:
	def_grass_wildmons 20 ; encounter rate
	db  7, PIDGEY
	db  7, SPEAROW
	db  8, PIDGEY
	db  8, KOLTA
	db  9, SPEAROW
IF DEF(_RED)
	db  8, NIDORAN_M
	db  9, NIDORAN_F
	db  7, JIGGLYPUFF
	db  8, JIGGLYPUFF
	db  10, JIGGLYPUFF
ENDC
IF DEF(_BLUE)
	db  8, NIDORAN_F
	db  9, NIDORAN_M
	db  7, JIGGLYPUFF
	db  8, JIGGLYPUFF
	db  10, JIGGLYPUFF
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
