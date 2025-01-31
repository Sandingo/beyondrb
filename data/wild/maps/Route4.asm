Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
	db 10, RATTATA
	db 10, SPEAROW
	db  8, RATTATA
IF DEF(_RED)
	db  6, EKANS
	db  8, SPEAROW
	db 10, EKANS
	db 12, RATTATA
	db 12, MANKEY
	db  8, EKANS
	db 12, EKANS
ENDC
IF DEF(_BLUE)
	db  6, SANDSHREW
	db  8, SPEAROW
	db 10, SANDSHREW
	db 12, RATTATA
	db 12, MANKEY
	db  8, SANDSHREW
	db 12, SANDSHREW
ENDC
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	db  5, MAGIKARP
	db 10, MAGIKARP
	db 15, MAGIKARP
	db 20, MAGIKARP
	db 10, MAGIKARP
	db 15, MAGIKARP
	db 20, MAGIKARP
	db 30, GOLDEEN
	db 35, GOLDEEN
	db 40, SEAKING
	end_water_wildmons
