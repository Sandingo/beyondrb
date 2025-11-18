LeagueHQB1F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, LeagueHQB1FTrainerHeaders
	ld de, LeagueHQB1F_ScriptPointers
	ld a, [wLeagueHQB1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wLeagueHQB1FCurScript], a
	ret

LeagueHQB1F_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

LeagueHQB1F_TextPointers:
	dw LeagueHQB1FText1
	dw LeagueHQB1FText2
	dw PickUpItemText


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
