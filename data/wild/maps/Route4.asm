Route4WildMons:
	def_grass_wildmons 20 ; encounter rate
	dbw 10, RATTATA
	dbw 10, SPEAROW
	dbw  8, RATTATA
IF DEF(_RED)
	dbw  6, EKANS
	dbw  8, SPEAROW
	dbw 10, EKANS
	dbw 12, RATTATA
	dbw 12, KOLTA
	dbw  8, EKANS
	dbw 12, EKANS
ENDC
IF DEF(_BLUE)
	dbw  6, SANDSHREW
	dbw  8, SPEAROW
	dbw 10, SANDSHREW
	dbw 12, RATTATA
	dbw 12, KOLTA
	dbw  8, SANDSHREW
	dbw 12, SANDSHREW
ENDC
	end_grass_wildmons

	def_water_wildmons 5 ; encounter rate
	dbw  5, MAGIKARP
	dbw 10, MAGIKARP
	dbw 15, MAGIKARP
	dbw 20, MAGIKARP
	dbw 10, MAGIKARP
	dbw 15, MAGIKARP
	dbw 20, MAGIKARP
	dbw 30, GOLDEEN
	dbw 35, GOLDEEN
	dbw 40, SEAKING
	end_water_wildmons
