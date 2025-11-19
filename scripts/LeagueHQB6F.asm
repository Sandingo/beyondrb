LeagueHQB6F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, LeagueHQB6FTrainerHeaders
	ld de, LeagueHQB6F_ScriptPointers
	ld a, [wLeagueHQB6FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wLeagueHQB6FCurScript], a
	ret

LeagueHQB6F_ScriptPointers:
	def_script_pointers
	dw_const LeagueHQB6FDefaultScript,         SCRIPT_LEAGUEHQB6F_DEFAULT
	dw_const LeagueHQB6FPlayerSpinningScript,  SCRIPT_LEAGUEHQB6F_PLAYER_SPINNING

LeagueHQB6FDefaultScript:
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
	ld hl, LeagueHQB6FArrowTilePlayerMovement
	call DecodeArrowMovementRLE
	cp $ff
	jp z, CheckFightingMapTrainers
	ld hl, wMovementFlags
	set BIT_SPINNING, [hl]
	call StartSimulatingJoypadStates
	ld a, SFX_ARROW_TILES
	call PlaySound
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, SCRIPT_LEAGUEHQB6F_PLAYER_SPINNING
	ld [wCurMapScript], a
	ret
	
LeagueHQB6FArrowTilePlayerMovement:
	map_coord_movement 19, 8, LeagueHQB6FArrowMovementDown2
	map_coord_movement 19, 10,	LeagueHQB6FArrowMovementDown4
	map_coord_movement 18, 9,	LeagueHQB6FArrowMovementUp6
	map_coord_movement 18, 11,	LeagueHQB6FArrowMovementUp2
	map_coord_movement 18, 13,	LeagueHQB6FArrowMovementLeft4
	map_coord_movement 15, 6,	LeagueHQB6FArrowMovementLeft4
	map_coord_movement 15, 7,	LeagueHQB6FArrowMovementLeft5
	map_coord_movement 14, 3,	LeagueHQB6FArrowMovementRight4
	map_coord_movement 14, 13,	LeagueHQB6FArrowMovementLeft4
	map_coord_movement 14, 15,	LeagueHQB6FArrowMovementLeft6
	map_coord_movement 13, 10,	LeagueHQB6FArrowMovementRight6
	map_coord_movement 12, 5,	LeagueHQB6FArrowMovementLeft2
	map_coord_movement 12, 11,	LeagueHQB6FArrowMovementRight6
	map_coord_movement 11, 4,	LeagueHQB6FArrowMovementDown2
	map_coord_movement 11, 6,	LeagueHQB6FArrowMovementDown2
	map_coord_movement 11, 8,	LeagueHQB6FArrowMovementLeft4
	map_coord_movement 11, 9,	LeagueHQB6FArrowMovementLeft5
	map_coord_movement 10, 3,	LeagueHQB6FArrowMovementRight4
	map_coord_movement 10, 5,	LeagueHQB6FArrowMovementUp2
	map_coord_movement 10, 7,	LeagueHQB6FArrowMovementUp2
	map_coord_movement 9, 10,	LeagueHQB6FArrowMovementRight4
	map_coord_movement 8, 6,	LeagueHQB6FArrowMovementUp3
	map_coord_movement 8, 11,	LeagueHQB6FArrowMovementUp5
	map_coord_movement 7, 5,	LeagueHQB6FArrowMovementDown3
	map_coord_movement 7, 8,	LeagueHQB6FArrowMovementDown2
	map_coord_movement 7, 10,	LeagueHQB6FArrowMovementRight2
	map_coord_movement 6, 4,	LeagueHQB6FArrowMovementRight5
	map_coord_movement 6, 9,	LeagueHQB6FArrowMovementUp5
	map_coord_movement 6, 11,	LeagueHQB6FArrowMovementUp2
	map_coord_movement 4, 3,	LeagueHQB6FArrowMovementRight4
	map_coord_movement 4, 12,	LeagueHQB6FArrowMovementUp9
	map_coord_movement 3, 8,	LeagueHQB6FArrowMovementRight4
	map_coord_movement 3, 13,	LeagueHQB6FArrowMovementUp5
	map_coord_movement 2, 6,	LeagueHQB6FArrowMovementUp2
	map_coord_movement 2, 9,    LeagueHQB6FArrowMovementUp3
	db -1 ; end

LeagueHQB6FArrowMovementDown2:
	db D_DOWN, 2
	db -1 ; end

LeagueHQB6FArrowMovementDown3:
	db D_DOWN, 3
	db -1 ; end
	
LeagueHQB6FArrowMovementDown4:
	db D_DOWN, 4
	db -1 ; end

LeagueHQB6FArrowMovementUp2:
	db D_UP, 2
	db -1 ; end

LeagueHQB6FArrowMovementUp3:
	db D_UP, 3
	db -1 ; end

LeagueHQB6FArrowMovementUp5:
	db D_UP, 5
	db -1 ; end

LeagueHQB6FArrowMovementUp6:
	db D_UP, 6
	db -1 ; end

LeagueHQB6FArrowMovementUp9:
	db D_UP, 9
	db -1 ; end

LeagueHQB6FArrowMovementLeft2:
	db D_LEFT, 2
	db -1 ; end

LeagueHQB6FArrowMovementLeft4:
	db D_LEFT, 4
	db -1 ; end

LeagueHQB6FArrowMovementLeft5:
	db D_LEFT, 5
	db -1 ; end

LeagueHQB6FArrowMovementLeft6:
	db D_LEFT, 6
	db -1 ; end

LeagueHQB6FArrowMovementRight2:
	db D_RIGHT, 2
	db -1 ; end

LeagueHQB6FArrowMovementRight4:
	db D_RIGHT, 4
	db -1 ; end

LeagueHQB6FArrowMovementRight5:
	db D_RIGHT, 5
	db -1 ; end

LeagueHQB6FArrowMovementRight6:
	db D_RIGHT, 6
	db -1 ; end

LeagueHQB6FPlayerSpinningScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	jp nz, .LeagueHQLoadSpinnerArrow
	xor a
	ld [wJoyIgnore], a
	ld hl, wMovementFlags
	res BIT_SPINNING, [hl]
	ld a, SCRIPT_LEAGUEHQB6F_DEFAULT
	ld [wCurMapScript], a
	ret
.LeagueHQLoadSpinnerArrow
	farjp LoadSpinnerArrowTiles

LeagueHQB6FTrainerHeaders:
	def_trainers
	db -1 ; end

LeagueHQB6F_TextPointers:
	dw PickUpItemText
	dw PickUpItemText

	text_end ; unused