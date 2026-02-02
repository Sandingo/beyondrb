Route25WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	dbw  8, WEEDLE
	dbw  9, KAKUNA
	dbw 13, BALUMBA
	dbw 12, ODDISH
	dbw 13, ODDISH
	dbw 12, ABRA
	dbw 14, ODDISH
	dbw 10, ABRA
	dbw  7, METAPOD
	dbw  8, CATERPIE
ENDC
IF DEF(_BLUE)
	dbw  8, CATERPIE
	dbw  9, METAPOD
	dbw 13, BALUMBA
	dbw 12, BELLSPROUT
	dbw 13, BELLSPROUT
	dbw 12, ABRA
	dbw 14, BELLSPROUT
	dbw 10, ABRA
	dbw  7, KAKUNA
	dbw  8, WEEDLE
ENDC
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	dbw  5, MAGIKARP
	dbw 10, MAGIKARP
	dbw 15, MAGIKARP
	dbw 20, MAGIKARP
	dbw 10, MAGIKARP
	dbw 15, SLOWPOKE
	dbw 20, SLOWPOKE
	dbw 30, GOLDEEN
	dbw 35, GOLDEEN
	dbw 40, SEAKING
	end_water_wildmons
