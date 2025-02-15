Route13WildMons:
	def_grass_wildmons 20 ; encounter rate
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 25, DITTO
	db 28, GLOOM
	db 30, GORILLAIMO
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 25, DITTO
	db 28, WEEPINBELL
	db 30, GORILLAIMO
ENDC
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db 15, TENTACOOL
	db 20, TENTACOOL
	db 25, TENTACOOL
	db 15, BLOTTLE
	db 25, BLOTTLE
	db 15, CHEEP
	db 20, CHEEP
	db 30, TENTACOOL
	db 35, PENDRAKEN
	db 40, TENTACRUEL
	end_water_wildmons
