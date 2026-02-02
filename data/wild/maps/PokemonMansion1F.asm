PokemonMansion1FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	dbw 32, KOFFING
	dbw 30, KOFFING
	dbw 34, PONYTA
	dbw 30, PONYTA
	dbw 34, GROWLITHE
	dbw 32, PONYTA
	dbw 30, GRIMER
	dbw 28, PONYTA
	dbw 37, WEEZING
	dbw 39, MUK
ENDC
IF DEF(_BLUE)
	dbw 32, GRIMER
	dbw 30, GRIMER
	dbw 34, PONYTA
	dbw 30, PONYTA
	dbw 34, VULPIX
	dbw 32, PONYTA
	dbw 30, KOFFING
	dbw 28, PONYTA
	dbw 37, MUK
	dbw 39, WEEZING
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
