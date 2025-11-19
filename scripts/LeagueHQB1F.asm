LeagueHQB1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, LeagueHQB1FTrainerHeaders
	ld de, LeagueHQB1F_ScriptPointers
	ld a, [wLeagueHQB1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wLeagueHQB1FCurScript], a
	ret

LeagueHQB1F_ScriptPointers:
	def_script_pointers
	dw_const LeagueHQB1FDefaultScript,             SCRIPT_LEAGUEHQB1F_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_LEAGUEHQB1F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_LEAGUEHQB1F_END_BATTLE
	dw_const LeagueHQB1FCheckCoords,			   SCRIPT_LEAGUEHQB1F_CHECK_COORDS
	dw_const LeagueHQB1FPlayerMoveDownScript, 	   SCRIPT_LEAGUEHQB1F_MOVE_DOWN
	dw_const LeagueHQB1FScriptWalkIntoRoom,		  SCRIPT_LEAGUEHQB1F_WALK_IN_ROOM
	dw_const LeagueHQB1FPlayerIsMovingScript, 	  SCRIPT_LEAGUEHQB1F_PLAYER_IS_MOVING

LeagueHQB1FDefaultScript:
	call LeagueHQB1FCheckCoords
	jp CheckFightingMapTrainers
	ret

LeagueHQB1FCheckCoords:
	ld hl, LeagueHQB1FEntranceCoords
	call ArePlayerCoordsInArray
	ret nz
	CheckAndSetEvent EVENT_AUTOWALKED_INTO_LEAGUEHQB1F_ROOM
	jr z, LeagueHQB1FScriptWalkIntoRoom
	ld a, TEXT_LEAGUEHQB1F_DONT_RUN_AWAY
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ldh [hJoyHeld], a
	call LeagueHQB1FPlayerMoveDownScript
	ld a, SCRIPT_LEAGUEHQB1F_MOVE_DOWN
	ld [wLeagueHQB1FCurScript], a
	ret

LeagueHQB1FEntranceCoords:
	dbmapcoord  14, 0
	dbmapcoord  14, 1
	dbmapcoord  15, 0
	dbmapcoord  15, 1
	db -1 ; end
	
LeagueHQB1FPlayerMoveDownScript:
	call StartSimulatingJoypadStates
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	xor a
	ld [wSpritePlayerStateData1FacingDirection], a
	ld [wJoyIgnore], a
	ret

LeagueHQB1FScriptWalkIntoRoom:
; Set started E4 Flag
	ld hl, wElite4Flags
	set BIT_STARTED_ELITE_4, [hl]
; Walk 2 steps downward.
	ld hl, wSimulatedJoypadStatesEnd
	ld a, D_DOWN
	ld [hli], a
	ld [hli], a
	ld a, $6
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_LEAGUEHQB1F_PLAYER_IS_MOVING
	ld [wLeagueHQB1FCurScript], a
	ld [wCurMapScript], a
	ret

LeagueHQB1FPlayerIsMovingScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	call Delay3
	xor a
	ld [wJoyIgnore], a
	ld [wLeagueHQB1FCurScript], a
	ld [wCurMapScript], a
	ret

LeagueHQB1F_TextPointers:
	def_text_pointers
	dw_const LeagueHQB1FText1,						TEXT_LEAGUEHQB1F_TRAINER_0
	dw_const LeagueHQB1FText2,						TEXT_LEAGUEHQB1F_TRAINER_1
	dw_const PickUpItemText,						TEXT_LEAGUEHQB1F_ITEM_0
	dw_const LeagueHQB1FDontRunAwayText, 		   TEXT_LEAGUEHQB1F_DONT_RUN_AWAY

LeagueHQB1FTrainerHeaders:
	def_trainers
LeagueHQB1FTrainerHeader0:
	trainer EVENT_BEAT_LEAGUE_HQ_B1F_TRAINER_0, 4, LeagueHQB1FCoolTrainerMBattleText, LeagueHQB1FCoolTrainerMEndBattleText, LeagueHQB1FCoolTrainerMAfterBattleText
LeagueHQB1FTrainerHeader1:
	trainer EVENT_BEAT_LEAGUE_HQ_B1F_TRAINER_1, 2, LeagueHQB1FCoolTrainerFBattleText, LeagueHQB1FCoolTrainerFEndBattleText, LeagueHQB1FCoolTrainerFAfterBattleText
	db -1 ; end

LeagueHQB1FText1:
	text_asm
	ld hl, LeagueHQB1FTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

LeagueHQB1FCoolTrainerMBattleText:
	text_far _LeagueHQB1FCoolTrainerMBattleText
	text_end

LeagueHQB1FCoolTrainerMEndBattleText:
	text_far _LeagueHQB1FCoolTrainerMEndBattleText
	text_end

LeagueHQB1FCoolTrainerMAfterBattleText:
	text_far _LeagueHQB1FCoolTrainerMAfterBattleText
	text_end

LeagueHQB1FText2:
	text_asm
	ld hl, LeagueHQB1FTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

LeagueHQB1FCoolTrainerFBattleText:
	text_far _LeagueHQB1FCoolTrainerFBattleText
	text_end

LeagueHQB1FCoolTrainerFEndBattleText:
	text_far _LeagueHQB1FCoolTrainerFEndBattleText
	text_end

LeagueHQB1FCoolTrainerFAfterBattleText:
	text_far _LeagueHQB1FCoolTrainerFAfterBattleText
	text_end

LeagueHQB1FDontRunAwayText:
	text_far _SomeonesVoiceDontRunText
	text_end