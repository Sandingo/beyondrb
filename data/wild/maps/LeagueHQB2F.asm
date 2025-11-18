LeagueHQB2FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db  51, ZUBAT
	db  52, ZUBAT
	db  51, MANKEY
	db  50, MANKEY
IF DEF(_RED)
	db  51, EKANS
ENDC
IF DEF(_BLUE)
	db  51, SANDSHREW
ENDC
	db  52, PARAS
	db  53, ZUBAT
	db  54, ZUBAT
	db  51, CLEFAIRY
	db  53, CLEFAIRY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
