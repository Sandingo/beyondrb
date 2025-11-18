LeagueHQB5F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, LeagueHQB5F_ScriptPointers
	ld a, [wLeagueHQB5FCurScript]
	jp CallFunctionInTable
	ret

LeagueHQB5F_ScriptPointers:
	def_script_pointers
	dw_const LeagueHQB5FDefaultScript,           SCRIPT_LEAGUEHQB5F_DEFAULT

LeagueHQB5FDefaultScript:
	ld hl, LeagueHQB5FPurifiedZoneCoords
	call ArePlayerCoordsInArray
	jr c, .in_purified_zone
	ld hl, wStatusFlags4
	res BIT_NO_BATTLES, [hl]
	ResetEvent EVENT_IN_PURIFIED_ZONE
	jp CheckFightingMapTrainers
.in_purified_zone
	CheckAndSetEvent EVENT_IN_PURIFIED_ZONE
	ret nz
	xor a
	ldh [hJoyHeld], a
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld hl, wStatusFlags4
	set BIT_NO_BATTLES, [hl]
	predef HealParty
	call GBFadeOutToWhite
	call Delay3
	call Delay3
	call GBFadeInFromWhite
	ld a, TEXT_LEAGUEHQB5F_PURIFIEDZONE
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ld [wJoyIgnore], a
	ret

LeagueHQB5FPurifiedZoneCoords:
	dbmapcoord 9,   6
	dbmapcoord 10,  6
	dbmapcoord 9,   7
	dbmapcoord 10,  7
	db -1 ; end

LeagueHQB5F_TextPointers:
	def_text_pointers
	dw_const LeagueHQB5FPurifiedZoneText, TEXT_LEAGUEHQB5F_PURIFIEDZONE

LeagueHQB5FPurifiedZoneText:
	text_far _LeagueHQB5FPurifiedZoneText
	text_end