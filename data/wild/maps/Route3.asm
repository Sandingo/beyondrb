Route3WildMons:
	def_grass_wildmons 20 ; encounter rate
	db  6, PIDGEY
	db  6, SPEAROW
	db  7, PIDGEY
	db  7, MANKEY
	db  8, SPEAROW
IF DEF(_RED)
	db  7, NIDORAN_M
	db  6, NIDORAN_F
	db  3, JIGGLYPUFF
	db  5, JIGGLYPUFF
	db  7, JIGGLYPUFF
ENDC
IF DEF(_BLUE)
	db  7, NIDORAN_F
	db  6, NIDORAN_M
	db  3, JIGGLYPUFF
	db  5, JIGGLYPUFF
	db  7, JIGGLYPUFF
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
