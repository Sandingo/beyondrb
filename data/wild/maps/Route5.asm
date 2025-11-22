Route5WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, COINPUR
	db 12, COINPUR
	db 15, ODDISH
	db 16, ODDISH
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, COINPUR
	db 12, COINPUR
	db 15, BELLSPROUT
	db 16, BELLSPROUT
ENDC
	db 16, MACHOP
	db 14, DODAERIE
	db 16, DODAERIE
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
