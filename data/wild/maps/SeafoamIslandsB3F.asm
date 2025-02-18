SeafoamIslandsB3FWildMons:
	def_grass_wildmons 10 ; encounter rate
IF DEF(_RED)
	db 31, SLOWPOKE
	db 31, SEEL
	db 33, SLOWPOKE
	db 33, BLASTYKE
	db 29, HORSEA
	db 31, SHELLDER
	db 31, HORSEA
	db 29, SHELLDER
	db 39, SEADRA
ENDC
IF DEF(_BLUE)
	db 31, WEIRDUCK
	db 31, SEEL
	db 33, WEIRDUCK
	db 33, BLASTYKE
	db 29, KRABBY
	db 31, STARYU
	db 31, KRABBY
	db 29, STARYU
	db 39, KINGLER
ENDC
	db 37, DEWGONG
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db 15, MAGIKARP
	db 20, MAGIKARP
	db 25, MAGIKARP
	db 15, HORSEA
	db 25, HORSEA
	db 15, KRABBY
	db 20, KRABBY
	db 30, PSYDUCK
	db 30, SLOWPOKE
	db 35, GYARADOS
	end_water_wildmons
