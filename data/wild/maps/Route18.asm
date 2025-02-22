Route18WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 25, DODUO
	db 26, SLUGMA
IF DEF(_RED)
	db 28, PAPYO
	db 29, PAPYO
ENDC
IF DEF(_BLUE)
	db 28, SLUGMA
	db 29, SLUGMA
ENDC
	db 27, FEAROW
	db 29, FEAROW
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
