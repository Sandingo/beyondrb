PokemonTower4FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 20, GASTLY
	db 21, GASTLY
	db 22, GASTLY
	db 23, GASTLY
IF DEF(_RED)
	db 18, GASTLY
	db 19, GASTLY
ENDC
IF DEF(_BLUE)
	db 18, WISPURR
	db 19, WISPURR
ENDC
	db 25, HAUNTER
	db 20, CUBONE
	db 22, CUBONE
	db 24, GASTLY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
