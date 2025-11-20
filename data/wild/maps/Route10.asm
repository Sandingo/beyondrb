Route10WildMons:
	def_grass_wildmons 15 ; encounter rate
	db 16, VOLTORB
	db 16, SPEAROW
	db 14, VOLTORB
IF DEF(_RED)
	db 11, SPEAROW
	db 13, SPEAROW
	db 15, EKANS
	db 14, KOTORA
	db 17, KOTORA
	db 13, CACTORMUS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SPEAROW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 14, KOTORA
	db 17, KOTORA
	db 13, CACTORMUS
	db 17, SANDSHREW
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
