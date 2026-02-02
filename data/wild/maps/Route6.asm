Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	dbw 13, ODDISH
	dbw 13, PIDGEY
	dbw 15, PIDGEY
	dbw 10, ODDISH
	dbw 12, PUPPERON
ENDC
IF DEF(_BLUE)
	dbw 13, BELLSPROUT
	dbw 13, PIDGEY
	dbw 15, PIDGEY
	dbw 10, BELLSPROUT
	dbw 12, VULPIII
ENDC
	dbw 15, MAGNEMITE
	dbw 16, MAGNEMITE
	dbw 16, MACHOP
	dbw 14, SMUJJ
	dbw 16, SMUJJ
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	dbw  5, SMUJJ
	dbw 10, SMUJJ
	dbw 15, SMUJJ
	dbw 20, GRIMER
	dbw 10, GRIMER
	dbw 15, SLOWPOKE
	dbw 20, SLOWPOKE
	dbw 30, GRIMER
	dbw 35, GRIMER
	dbw 40, MUK
	end_water_wildmons
