Route24WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	dbw  7, WEEDLE
	dbw  8, KAKUNA
	dbw 12, BALUMBA
	dbw 12, ODDISH
	dbw 13, ODDISH
	dbw 10, ABRA
	dbw 14, ODDISH
ENDC
IF DEF(_BLUE)
	dbw  7, CATERPIE
	dbw  8, METAPOD
	dbw 12, BALUMBA
	dbw 12, BELLSPROUT
	dbw 13, BELLSPROUT
	dbw 10, ABRA
	dbw 14, BELLSPROUT
ENDC
	dbw 13, PIDGEY
	dbw  8, ABRA
	dbw 12, ABRA
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	dbw  5, MAGIKARP
	dbw 10, MAGIKARP
	dbw 15, MAGIKARP
	dbw 10, POLIWAG
	dbw 15, POLIWAG
	dbw 15, SLOWPOKE
	dbw 20, SLOWPOKE
	dbw 30, GOLDEEN
	dbw 35, GOLDEEN
	dbw 40, SEAKING
	end_water_wildmons
