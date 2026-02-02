Route13WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	dbw 24, ODDISH
	dbw 25, PIDGEY
	dbw 27, PIDGEY
	dbw 24, VENONAT
	dbw 22, ODDISH
	dbw 26, VENONAT
	dbw 26, ODDISH
	dbw 25, DITTO
	dbw 28, GLOOM
	dbw 30, GORILLAIMO
ENDC
IF DEF(_BLUE)
	dbw 24, BELLSPROUT
	dbw 25, PIDGEY
	dbw 27, PIDGEY
	dbw 24, VENONAT
	dbw 22, BELLSPROUT
	dbw 26, VENONAT
	dbw 26, BELLSPROUT
	dbw 25, DITTO
	dbw 28, WEEPINBELL
	dbw 30, GORILLAIMO
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
