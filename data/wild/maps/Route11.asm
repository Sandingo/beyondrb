Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	dbw 14, EKANS
	dbw 15, SPEAROW
	dbw 12, EKANS
ENDC
IF DEF(_BLUE)
	dbw 14, SANDSHREW
	dbw 15, SPEAROW
	dbw 12, SANDSHREW
ENDC
	dbw 12, DROWZEE
	dbw 13, SPEAROW
	dbw 13, DROWZEE
	dbw 15, MAGNEMITE
	dbw 17, SPEAROW
	dbw 11, DROWZEE
	dbw 16, DROWZEE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
