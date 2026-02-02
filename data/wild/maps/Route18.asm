Route18WildMons:
	def_grass_wildmons 25 ; encounter rate
	dbw 20, SPEAROW
	dbw 22, SPEAROW
	dbw 25, RATICATE
	dbw 24, DODUO
	dbw 25, DODUO
	dbw 26, SLUGMA
IF DEF(_RED)
	dbw 28, SMOGRUB
	dbw 29, SMOGRUB
ENDC
IF DEF(_BLUE)
	dbw 28, SLUGMA
	dbw 29, SLUGMA
ENDC
	dbw 27, FEAROW
	dbw 29, FEAROW
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
