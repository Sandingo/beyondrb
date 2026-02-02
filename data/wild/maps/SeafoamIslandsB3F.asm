SeafoamIslandsB3FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	dbw 31, SLOWPOKE
	dbw 31, SEEL
	dbw 33, SLOWPOKE
	dbw 33, BLASTYKE
	dbw 29, HORSEA
	dbw 31, SHELLDER
	dbw 31, HORSEA
	dbw 29, SHELLDER
	dbw 39, SEADRA
ENDC
IF DEF(_BLUE)
	dbw 31, WEIRDUCK
	dbw 31, SEEL
	dbw 33, WEIRDUCK
	dbw 33, BLASTYKE
	dbw 29, KRABBY
	dbw 31, STARYU
	dbw 31, KRABBY
	dbw 29, STARYU
	dbw 39, KINGLER
ENDC
	dbw 37, DEWGONG
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
