PokemonTower3FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db 20, GASTLY
	db 21, GASTLY
	db 22, GASTLY
	db 23, GASTLY
	db 19, GASTLY
IF DEF(_RED)
	db 18, GASTLY
	db 24, GASTLY
ENDC
IF DEF(_BLUE)
	db 18, WISPURR
	db 24, WISPURR
ENDC
	db 20, CUBONE
	db 22, CUBONE
	db 25, HAUNTER
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
