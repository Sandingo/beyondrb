LeagueHQB5FWildMons:
	def_grass_wildmons 10 ; encounter rate
	db  52, GASTLY
	db  50, HAUNTER
IF DEF(_RED)
	db  53, GROWLITHE
ENDC
IF DEF(_BLUE)
	db  53, VULPIX
ENDC
	db  49, CUBONE
	db  51, HAUNTER
	db  51, GASTLY
	db  50, CUBONE
	db  52, HAUNTER
	db  53, GASTLY
	db  54, GASTLY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
