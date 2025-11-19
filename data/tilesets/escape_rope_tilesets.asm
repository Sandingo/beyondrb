EscapeRopeTilesets:
	db FOREST
	db CEMETERY
	db CAVERN
	db FACILITY
	db INTERIOR
	db -1 ; end

NotAllowedEscapeMaps:: ; New, gets checked to make sure the player cannot use the Escape Rope/Dig move in certain maps
	db AGATHAS_ROOM,
	db LEAGUE_HQ_B1F,
	db LEAGUE_HQ_B2F,
	db LEAGUE_HQ_B5F,
	db LEAGUE_HQ_B6F,
	db LEAGUE_HQ_B7F,
	db LEAGUE_HQ_B8F
	db -1 ; end
