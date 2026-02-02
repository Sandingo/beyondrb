Route12WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	dbw 24, ODDISH
	dbw 25, PIDGEY
	dbw 23, PIDGEY
	dbw 24, VENONAT
	dbw 22, ODDISH
	dbw 26, VENONAT
	dbw 26, ODDISH
	dbw 30, GLOOM
	dbw 28, GLOOM
	dbw 28, FARFETCHD
ENDC
IF DEF(_BLUE)
	dbw 24, BELLSPROUT
	dbw 25, PIDGEY
	dbw 23, PIDGEY
	dbw 24, VENONAT
	dbw 22, BELLSPROUT
	dbw 26, VENONAT
	dbw 26, BELLSPROUT
	dbw 30, WEEPINBELL
	dbw 28, WEEPINBELL
	dbw 28, FARFETCHD
ENDC
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	dbw 15, TENTACOOL
	dbw 20, TENTACOOL
	dbw 25, TENTACOOL
	dbw 15, BLOTTLE
	dbw 25, BLOTTLE
	dbw 15, CHEEP
	dbw 20, CHEEP
	dbw 30, TENTACOOL
	dbw 35, PENDRAKEN
	dbw 40, TENTACRUEL
	end_water_wildmons
