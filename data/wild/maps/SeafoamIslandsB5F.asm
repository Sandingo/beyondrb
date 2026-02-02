SeafoamIslandsB5FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	dbw 31, HORSEA
	dbw 31, SHELLDER
	dbw 33, BLASTYKE
	dbw 33, SHELLDER
	dbw 29, SLOWPOKE
	dbw 31, SEEL
	dbw 31, SLOWPOKE
	dbw 29, FREEZETI
	dbw 39, SLOWBRO
ENDC
IF DEF(_BLUE)
	dbw 31, KRABBY
	dbw 31, STARYU
	dbw 33, BLASTYKE
	dbw 33, STARYU
	dbw 29, WEIRDUCK
	dbw 31, SEEL
	dbw 31, WEIRDUCK
	dbw 29, FREEZETI
	dbw 39, GOLDUCK
ENDC
	dbw 38, QUADRAGON
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	dbw 15, MAGIKARP
	dbw 20, MAGIKARP
	dbw 25, MAGIKARP
	dbw 15, HORSEA
	dbw 25, HORSEA
	dbw 15, KRABBY
	dbw 20, KRABBY
	dbw 30, PSYDUCK
	dbw 30, SLOWPOKE
	dbw 35, GYARADOS
	end_water_wildmons
