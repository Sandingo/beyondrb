CeruleanCaveB1FWildMons:
	def_grass_wildmons 25 ; encounter rate
	dbw 55, RHYDON
	dbw 55, MAROWAK
	dbw 55, ELECTRODE
	dbw 64, CHANSEY
	dbw 64, PARASECT
	dbw 64, RAICHU
IF DEF(_RED)
	dbw 57, ARBOK
ENDC
IF DEF(_BLUE)
	dbw 57, SANDSLASH
ENDC
	dbw 65, DITTO
	dbw 63, DITTO
	dbw 67, DITTO
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
