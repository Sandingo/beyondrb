LeagueHQB5FWildMons:
	def_grass_wildmons 10 ; encounter rate
	dbw  52, GASTLY
	dbw  50, HAUNTER
IF DEF(_RED)
	dbw  53, GROWLITHE
ENDC
IF DEF(_BLUE)
	dbw  53, VULPIX
ENDC
	dbw  49, CUBONE
	dbw  51, HAUNTER
	dbw  51, GASTLY
	dbw  50, CUBONE
	dbw  52, HAUNTER
	dbw  53, GASTLY
	dbw  54, GASTLY
	end_grass_wildmons

	def_water_wildmons 0 ; encounter rate
	end_water_wildmons
