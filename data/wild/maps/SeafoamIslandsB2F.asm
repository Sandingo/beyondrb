SeafoamIslandsB2FWildMons:
	def_grass_wildmons 10 ; encounter rate
	dbw 30, SEEL
IF DEF(_RED)
	dbw 30, SLOWPOKE
	dbw 32, SEEL
	dbw 32, SLOWPOKE
	dbw 28, HORSEA
	dbw 30, STARYU
	dbw 30, BLASTYKE
	dbw 28, SHELLDER
	dbw 30, GOLBAT
	dbw 37, SLOWBRO
ENDC
IF DEF(_BLUE)
	dbw 30, PSYDUCK
	dbw 32, SEEL
	dbw 32, PSYDUCK
	dbw 28, KRABBY
	dbw 30, SHELLDER
	dbw 30, BLASTYKE
	dbw 28, STARYU
	dbw 30, GOLBAT
	dbw 37, GOLDUCK
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
