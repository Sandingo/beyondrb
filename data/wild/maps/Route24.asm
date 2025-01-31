Route24WildMons:
	def_grass_wildmons 25 ; encounter rate
IF DEF(_RED)
	db  7, WEEDLE
	db  8, KAKUNA
	db 12, BALOONDA
	db 12, ODDISH
	db 13, ODDISH
	db 10, ABRA
	db 14, ODDISH
ENDC
IF DEF(_BLUE)
	db  7, CATERPIE
	db  8, METAPOD
	db 12, BALOONDA
	db 12, BELLSPROUT
	db 13, BELLSPROUT
	db 10, ABRA
	db 14, BELLSPROUT
ENDC
	db 13, PIDGEY
	db  8, ABRA
	db 12, ABRA
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db  5, MAGIKARP
	db 10, MAGIKARP
	db 15, MAGIKARP
	db 20, MAGIKARP
	db 10, MAGIKARP
	db 15, SLOWPOKE
	db 20, SLOWPOKE
	db 30, GOLDEEN
	db 35, GOLDEEN
	db 40, SEAKING
	end_water_wildmons
