Route7WildMons:
	def_grass_wildmons 15 ; encounter rate
	dbw 19, PIDGEY
IF DEF(_RED)
	dbw 19, ODDISH
	dbw 17, MEOWTH
	dbw 22, ODDISH
	dbw 22, PIDGEY
	dbw 18, MEOWTH
	dbw 18, GROWLITHE
	dbw 20, GROWLITHE
	dbw 19, HOUNDOUR
	dbw 20, HOUNDOUR
ENDC
IF DEF(_BLUE)
	dbw 19, BELLSPROUT
	dbw 17, MEOWTH
	dbw 22, BELLSPROUT
	dbw 22, PIDGEY
	dbw 18, MEOWTH
	dbw 18, VULPIX
	dbw 20, VULPIX
	dbw 19, HOUNDOUR
	dbw 20, HOUNDOUR
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
