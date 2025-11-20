LeagueHQB8F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, LeagueHQB8FTrainerHeaders
	ld de, LeagueHQB8F_ScriptPointers
	ld a, [wLeagueHQB8FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wLeagueHQB8FCurScript], a
	ret

LeagueHQB8F_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

LeagueHQB8FTrainerHeaders:
	def_trainers
LeagueHQB8FTrainerHeader0:
	trainer EVENT_BEAT_LEAGUE_HQ_B8F_TRAINER_0, 2, LeagueHQB8FCoolTrainerMBattleText, LeagueHQB8FCoolTrainerMEndBattleText, LeagueHQB8FCoolTrainerMAfterBattleText
LeagueHQB8FTrainerHeader1:
	trainer EVENT_BEAT_LEAGUE_HQ_B8F_TRAINER_1, 4, LeagueHQB8FCoolTrainerFBattleText, LeagueHQB8FCoolTrainerFEndBattleText, LeagueHQB8FCoolTrainerFAfterBattleText
	db -1 ; end

LeagueHQB8F_TextPointers:
	dw LeagueHQB8FText1
	dw LeagueHQB8FText2
	dw PickUpItemText
	dw PickUpItemText
	dw LeagueHQB8FNurseText
	dw LeagueHQB8FDiary1
	dw LeagueHQB8FDiary2

LeagueHQB8FText1:
	text_asm
	ld hl, LeagueHQB8FTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

LeagueHQB8FCoolTrainerMBattleText:
	text_far _LeagueHQB8FCoolTrainerMBattleText
	text_end

LeagueHQB8FCoolTrainerMEndBattleText:
	text_far _LeagueHQB8FCoolTrainerMEndBattleText
	text_end

LeagueHQB8FCoolTrainerMAfterBattleText:
	text_far _LeagueHQB8FCoolTrainerMAfterBattleText
	text_end

LeagueHQB8FText2:
	text_asm
	ld hl, LeagueHQB8FTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

LeagueHQB8FCoolTrainerFBattleText:
	text_far _LeagueHQB8FCoolTrainerFBattleText
	text_end

LeagueHQB8FCoolTrainerFEndBattleText:
	text_far _LeagueHQB8FCoolTrainerFEndBattleText
	text_end

LeagueHQB8FCoolTrainerFAfterBattleText:
	text_far _LeagueHQB8FCoolTrainerFAfterBattleText
	text_end

LeagueHQB8FDiary1:
	text_far _LeagueHQB8FDiary1
	text_end

LeagueHQB8FDiary2:
	text_far _LeagueHQB8FDiary2
	text_end

LeagueHQB8FNurseText:
	text_asm
	ld hl, .YouLookTiredText
	call PrintText
	predef HealParty
	call GBFadeOutToWhite
	call Delay3
	call GBFadeInFromWhite
	ld hl, .DontGiveUpText
	call PrintText
	jr .text_script_end
.text_script_end
	jp TextScriptEnd
	
.YouLookTiredText:
	text_far _LeagueHQB8FYouLookTiredText
	text_end

.DontGiveUpText:
	text_far _LeagueHQB8FDontGiveUpText
	text_end