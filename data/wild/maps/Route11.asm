Route11WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 14, EKANS
	db 15, SPEAROW
	db 12, EKANS
ENDC
IF DEF(_BLUE)
	db 14, SANDSHREW
	db 15, SPEAROW
	db 12, SANDSHREW
ENDC
	db 12, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, MAGNEMITE
	db 17, SPEAROW
	db 11, DROWZEE
	db 16, DROWZEE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
