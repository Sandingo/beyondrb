LeagueHQB2FWildMons:
	def_grass_wildmons 10 ; encounter rate
	dbw  51, ZUBAT
	dbw  52, ZUBAT
	dbw  51, MANKEY
	dbw  50, MANKEY
IF DEF(_RED)
	dbw  51, EKANS
ENDC
IF DEF(_BLUE)
	dbw  51, SANDSHREW
ENDC
	dbw  52, PARAS
	dbw  53, ZUBAT
	dbw  54, ZUBAT
	dbw  51, CLEFAIRY
	dbw  53, CLEFAIRY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
