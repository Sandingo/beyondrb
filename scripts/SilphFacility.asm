SilphFacility_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SilphFacility_ScriptPointers
	ld a, [wSilphFacilityCurScript]
	jp CallFunctionInTable

SilphFacilityDefaultScript:
	ret

SilphFacilityResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wSilphFacilityCurScript], a
	ld [wCurMapScript], a
	ret

SilphFacilityStreakScript:
ld a, [wIsInBattle]
	cp $ff
	jp z, SilphFacilityResetScripts
;ld a, PAD_RIGHT | PAD_LEFT | PAD_UP | PAD_DOWN
;	ld [wJoyIgnore], a
	ld a, TEXT_SILPHFACILITY_STREAK_CONT
	ldh [hTextID], a
	call DisplayTextID
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .decline
	ld a, TEXT_SILPHFACILITY_STREAK_NEW
	ldh [hTextID], a
	call DisplayTextID
	call Delay3
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, JackDefeatedText
	ld de, JackVictoryText
	call SaveEndBattleTextPointers
	ld [wIsTrainerBattle], a; Battle Start!
	ld a, OPP_HITECH_JACK
	ld [wCurOpponent], a
	ld a, 2
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_SILPHFACILITY_STREAK
	ld [wSilphFacilityCurScript], a
	ld [wCurMapScript], a
	jr .done2
.decline
	ld a, TEXT_SILPHFACILITY_STREAK_END
	ldh [hTextID], a
	call DisplayTextID
	jr .done
.done
jp SilphFacilityResetScripts
.done2
	jp TextScriptEnd

SilphFacility_ScriptPointers:
	def_script_pointers
	dw_const SilphFacilityDefaultScript, 				 SCRIPT_SILPHFACILITY_DEFAULT
	dw_const SilphFacilityStreakScript,		   			SCRIPT_SILPHFACILITY_STREAK
	

SilphFacility_TextPointers:
	def_text_pointers
	dw_const SilphFacilityScientistText, 		TEXT_SILPHFACILITY_SCIENTIST
	dw_const SilphFacilityJack,       				 TEXT_SILPHFACILITY_JACK
	dw_const SilphFacilityStreakContText, 		TEXT_SILPHFACILITY_STREAK_CONT
	dw_const SilphFacilityStreakDeclineText,		 TEXT_SILPHFACILITY_STREAK_END
	dw_const SilphBattleStreakAcceptText, 		TEXT_SILPHFACILITY_STREAK_NEW

SilphFacilityScientistText:
	text_asm
	ld hl, .SilphBattleQuestion
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .decline
	predef HealParty
	ld hl, .SilphBattleAccept
	call PrintText
	call Delay3
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, JackDefeatedText
	ld de, JackVictoryText
	call SaveEndBattleTextPointers
	ld [wIsTrainerBattle], a; Battle Start!
	ld a, OPP_HITECH_JACK
	ld [wCurOpponent], a
	ld a, 2
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_SILPHFACILITY_STREAK
	ld [wSilphFacilityCurScript], a
	ld [wCurMapScript], a
	jr .done
.decline
	ld hl, .SilphBattleDecline
	call PrintText
	jr .done
.done
	jp TextScriptEnd
	
.SilphBattleQuestion:
	text_far _SilphFacilityScientistQuestionText
	text_end

.SilphBattleAccept:
	text_far _SilphFacilityScientistAcceptText
	text_end

.SilphBattleDecline:
	text_far _SilphFacilityScientistDeclineText
	text_end

JackDefeatedText:
	text_far _JackDefeatedText
	text_end

JackVictoryText:
	text_far _JackVictoryText
	text_end

SilphFacilityJack:
	text_far _SilphFacilityJack
	text_end


SilphFacilityStreakContText:
	text_asm
	predef HealParty
	ld hl, .text
	call PrintText
	call YesNoChoice
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd

.text
	text_far _SilphFacilityScientistContinueStreakText
	text_end

SilphFacilityStreakDeclineText:
	text_far _SilphFacilityScientistContDeclineText
	text_end

SilphBattleStreakAcceptText:
	text_far _SilphFacilityScientistContAcceptText
	text_end
