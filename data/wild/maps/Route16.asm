Route16WildMons:
	def_grass_wildmons 25 ; encounter rate
	dbw 20, SPEAROW
	dbw 22, RATTATA
	dbw 18, DODUO
	dbw 20, DODUO
	dbw 20, RATTATA
IF DEF(_RED)
	dbw 25, RATICATE
	dbw 24, MURKROW
	dbw 24, MURKROW
	dbw 23, SLUGMA
	dbw 18, SLUGMA
ENDC
IF DEF(_BLUE)
	dbw 25, RATICATE
	dbw 24, MURKROW
	dbw 24, MURKROW
	dbw 23, SLUGMA
	dbw 18, SLUGMA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
