Route6WildMons:
	def_grass_wildmons 15 ; encounter rate
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, ODDISH
	db 12, PUPPERON
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, BELLSPROUT
	db 12, VULPIII
ENDC
	db 15, MAGNEMITE
	db 16, MAGNEMITE
	db 16, MACHOP
	db 14, SMUJJ
	db 16, SMUJJ
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db  5, SMUJJ
	db 10, SMUJJ
	db 15, SMUJJ
	db 20, GRIMER
	db 10, GRIMER
	db 15, SLOWPOKE
	db 20, SLOWPOKE
	db 30, GRIMER
	db 35, GRIMER
	db 40, MUK
	end_water_wildmons
