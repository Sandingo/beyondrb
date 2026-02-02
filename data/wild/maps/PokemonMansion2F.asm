PokemonMansion2FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	dbw 32, GROWLITHE
	dbw 34, KOFFING
	dbw 34, KOFFING
	dbw 30, PONYTA
	dbw 30, KOFFING
	dbw 32, PONYTA
	dbw 30, GRIMER
	dbw 28, PONYTA
	dbw 39, WEEZING
	dbw 37, MUK
ENDC
IF DEF(_BLUE)
	dbw 32, VULPIX
	dbw 34, GRIMER
	dbw 34, GRIMER
	dbw 30, PONYTA
	dbw 30, GRIMER
	dbw 32, PONYTA
	dbw 30, KOFFING
	dbw 28, PONYTA
	dbw 39, MUK
	dbw 37, WEEZING
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
