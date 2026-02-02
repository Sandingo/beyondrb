Route3WildMons:
	def_grass_wildmons 20 ; encounter rate
	dbw  7, PIDGEY
	dbw  7, SPEAROW
	dbw  8, PIDGEY
	dbw  8, KOLTA
	dbw  9, SPEAROW
IF DEF(_RED)
	dbw  8, NIDORAN_M
	dbw  9, NIDORAN_F
	dbw  7, JIGGLYPUFF
	dbw  8, JIGGLYPUFF
	dbw  10, JIGGLYPUFF
ENDC
IF DEF(_BLUE)
	dbw  8, NIDORAN_F
	dbw  9, NIDORAN_M
	dbw  7, JIGGLYPUFF
	dbw  8, JIGGLYPUFF
	dbw  10, JIGGLYPUFF
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
