Route5WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	dbw 13, ODDISH
	dbw 13, PIDGEY
	dbw 15, PIDGEY
	dbw 10, COINPUR
	dbw 12, COINPUR
	dbw 15, ODDISH
	dbw 16, ODDISH
ENDC
IF DEF(_BLUE)
	dbw 13, BELLSPROUT
	dbw 13, PIDGEY
	dbw 15, PIDGEY
	dbw 10, COINPUR
	dbw 12, COINPUR
	dbw 15, BELLSPROUT
	dbw 16, BELLSPROUT
ENDC
	dbw 16, MACHOP
	dbw 14, DODAERIE
	dbw 16, DODAERIE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
