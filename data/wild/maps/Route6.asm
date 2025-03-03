Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, ODDISH
	db 12, VULPIII
	db 15, ODDISH
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, BELLSPROUT
	db 12, VULPIII
	db 15, BELLSPROUT
ENDC
	db 16, MAGNEMITE
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
