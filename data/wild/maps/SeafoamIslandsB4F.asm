SeafoamIslandsB4FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 31, HORSEA
	db 31, SHELLDER
	db 33, BLASTYKE
	db 33, SHELLDER
	db 29, SLOWPOKE
	db 31, SEEL
	db 31, SLOWPOKE
	db 29, BUU
	db 39, SLOWBRO
ENDC
IF DEF(_BLUE)
	db 31, KRABBY
	db 31, STARYU
	db 33, BLASTYKE
	db 33, STARYU
	db 29, PSYDUCK
	db 31, SEEL
	db 31, PSYDUCK
	db 29, BUU
	db 39, GOLDUCK
ENDC
	db 38, QUADRAGON
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
