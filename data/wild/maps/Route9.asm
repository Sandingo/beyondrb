Route9WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, RATTATA
	db 16, SPEAROW
	db 14, RATTATA
IF DEF(_RED)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
ENDC
	db 17, CACTORMUS
	db 17, CACTORMUS
	db 13, NAGAASP
	db 17, NAGAASP
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
