LeagueHQB7F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, LeagueHQB7FTrainerHeaders
	ld de, LeagueHQB7F_ScriptPointers
	ld a, [wLeagueHQB7FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wLeagueHQB7FCurScript], a
	ret

LeagueHQB7F_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

LeagueHQB7FTrainerHeaders:
	def_trainers
LeagueHQB7FTrainerHeader0:
	trainer EVENT_BEAT_LEAGUE_HQ_B7F_TRAINER_0, 3, LeagueHQB7FCoolTrainerMBattleText, LeagueHQB7FCoolTrainerMEndBattleText, LeagueHQB7FCoolTrainerMAfterBattleText
	db -1 ; end

LeagueHQB7F_TextPointers:
	dw LeagueHQB7FText1
	dw PickUpItemText

LeagueHQB7FText1:
	text_asm
	ld hl, LeagueHQB7FTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

LeagueHQB7FCoolTrainerMBattleText:
	text_far _LeagueHQB7FCoolTrainerMBattleText
	text_end

LeagueHQB7FCoolTrainerMEndBattleText:
	text_far _LeagueHQB7FCoolTrainerMEndBattleText
	text_end

LeagueHQB7FCoolTrainerMAfterBattleText:
	text_far _LeagueHQB7FCoolTrainerMAfterBattleText
	text_end