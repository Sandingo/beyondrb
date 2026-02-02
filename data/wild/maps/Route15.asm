Route15WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	dbw 24, ODDISH
	dbw 26, DITTO
	dbw 23, PIDGEOTTO
	dbw 26, VENONAT
	dbw 22, ODDISH
	dbw 28, VENONAT
	dbw 26, ODDISH
	dbw 30, GLOOM
ENDC
IF DEF(_BLUE)
	dbw 24, BELLSPROUT
	dbw 26, DITTO
	dbw 23, PIDGEOTTO
	dbw 26, VENONAT
	dbw 22, BELLSPROUT
	dbw 28, VENONAT
	dbw 26, BELLSPROUT
	dbw 30, WEEPINBELL
ENDC
	dbw 28, RAMOOSE
	dbw 30, RAMOOSE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
