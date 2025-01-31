MtSilverSummit_Script:
	call EnableAutoTextBoxDrawing
	ld hl, MtSilverSummitTrainerHeaders
	ld de, MtSilverSummit_ScriptPointers
	ld a, [wMtSilverSummitCurScript]
	call ExecuteCurMapScriptInTable
	ld [wMtSilverSummitCurScript], a
	ret

MtSilverSummit_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

MtSilverSummit_TextPointers:
	def_text_pointers
	dw_const MtSilverSummitText, TEXT_MTSILVERSUMMIT_OAK

MtSilverSummitTrainerHeaders:
	def_trainers 3
MtSilverSummitTrainerHeader0:
	trainer EVENT_BEAT_OAK, 1, OakBattleText, OakEndBattleText, OakAfterBattleText
	db -1 ; end

MtSilverSummitText:
	text_asm
	ld hl, MtSilverSummitTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

OakBattleText:
	text_far _OakBattleText
	text_end

OakEndBattleText:
	text_far _OakEndBattleText
	text_end

OakAfterBattleText:
	text_far _OakAfterBattleText
	text_end