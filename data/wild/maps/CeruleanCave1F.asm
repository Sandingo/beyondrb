CeruleanCave1FWildMons:
	def_grass_wildmons 10 ; encounter rate
	dbw 46, GOLBAT
	dbw 46, HYPNO
	dbw 46, MAGNETON
	dbw 49, DODRIO
	dbw 49, VENOMOTH
IF DEF(_RED)
	dbw 52, ARBOK
ENDC
IF DEF(_BLUE)
	dbw 52, SANDSLASH
ENDC
	dbw 49, KADABRA
	dbw 52, PARASECT
	dbw 53, RAICHU
	dbw 53, DITTO
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
