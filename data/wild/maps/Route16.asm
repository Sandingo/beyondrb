Route16WildMons:
	def_grass_wildmons 25 ; encounter rate
	db 20, SPEAROW
	db 22, RATTATA
	db 18, DODUO
	db 20, DODUO
	db 20, RATTATA
IF DEF(_RED)
	db 25, RATICATE
	db 24, MURKROW
	db 24, MURKROW
	db 23, SLUGMA
	db 18, SLUGMA
ENDC
IF DEF(_BLUE)
	db 25, RATICATE
	db 24, MURKROW
	db 24, MURKROW
	db 23, SLUGMA
	db 18, SLUGMA
ENDC
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
