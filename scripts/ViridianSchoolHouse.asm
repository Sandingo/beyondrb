ViridianSchoolHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianSchoolHouse_ScriptPointers
	ld a, [wViridianSchoolHouseCurScript]
	jp CallFunctionInTable

ViridianSchoolHouseDefaultScript:
	ret

ViridianSchoolHouseResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wViridianSchoolHouseCurScript], a
	ld [wCurMapScript], a
	ret
	
ViridianSchoolHouseKylePostBattleScript:
ld a, [wIsInBattle]
	cp $ff
	jp z, ViridianSchoolHouseResetScripts
	ld a, PAD_RIGHT | PAD_LEFT | PAD_UP | PAD_DOWN
	ld [wJoyIgnore], a
	ld a, TEXT_VIRIDIANSCHOOLHOUSE_KYLE_POST_BATTLE
	ldh [hTextID], a
	call DisplayTextID
	lb bc, TM_TAKE_DOWN, 1
	call GiveItem
	jr nc, .BagFull
	ld a, TEXT_VIRIDIANSCHOOLHOUSE_RECEIVED_TM_TAKEDOWN
	ldh [hTextID], a
	call DisplayTextID
	jr .done
.BagFull
	ld a, TEXT_VIRIDIANSCHOOLHOUSE_NOROOM
	ldh [hTextID], a
	call DisplayTextID
.done
	SetEvent EVENT_BEAT_KYLE
jp ViridianSchoolHouseResetScripts

ViridianSchoolHouse_ScriptPointers:
	def_script_pointers
	dw_const ViridianSchoolHouseDefaultScript, 				 SCRIPT_VIRIDIANSCHOOLHOUSE_DEFAULT
	dw_const ViridianSchoolHouseKylePostBattleScript,		 SCRIPT_VIRIDIANSCHOOLHOUSE_KYLE_POST_BATTLE

ViridianSchoolHouse_TextPointers:
	def_text_pointers
	dw_const ViridianSchoolHouseBrunetteGirlText, TEXT_VIRIDIANSCHOOLHOUSE_BRUNETTE_GIRL
	dw_const ViridianSchoolHouseCooltrainerFText, TEXT_VIRIDIANSCHOOLHOUSE_COOLTRAINER_F
	dw_const ViridianSchoolHouseKyleText,		  TEXT_VIRIDIANSCHOOLHOUSE_KYLE
	dw_const ViridianSchoolKylePostBattle,		  TEXT_VIRIDIANSCHOOLHOUSE_KYLE_POST_BATTLE
	dw_const ViridianSchoolHouseRecievedTMTakeDown, TEXT_VIRIDIANSCHOOLHOUSE_RECEIVED_TM_TAKEDOWN
	dw_const ViridianSchoolHouseNoRoom,			  TEXT_VIRIDIANSCHOOLHOUSE_NOROOM

ViridianSchoolHouseBrunetteGirlText:
	text_far _ViridianSchoolHouseBrunetteGirlText
	text_end

ViridianSchoolHouseCooltrainerFText:
	text_far _ViridianSchoolHouseCooltrainerFText
	text_end

ViridianSchoolHouseKyleText:
	text_asm
	CheckEvent EVENT_BEAT_KYLE
	jp nz, .already_fought
	ld hl, .KyleBoasting
	call PrintText
	call WaitForTextScrollButtonPress
	ld a, [wBeatGymFlags]
	bit BIT_BOULDERBADGE, a
	jp z, .needBoulderBadge
	ld hl, .KyleBeatenBrock
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .decline_battle
	ld hl, .KyleAccept
	call PrintText
	call Delay3
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, .KyleDefeatedText
	ld de, .KyleVictoryText
	call SaveEndBattleTextPointers
	ld [wIsTrainerBattle], a; Battle Start!
	ld a, OPP_KYLE
	ld [wCurOpponent], a
	ld a, 1
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_VIRIDIANSCHOOLHOUSE_KYLE_POST_BATTLE
	ld [wViridianSchoolHouseCurScript], a
	ld [wCurMapScript], a
	jr .done
.decline_battle
	ld hl, .KyleDecline
	call PrintText
	jr .done
.already_fought
	ld hl, .KyleAfterBattle
	call PrintText
	jr .done
.needBoulderBadge
	ld hl, .KyleNeedBrock
	call PrintText
.done
	jp TextScriptEnd

.KyleBoasting:
	text_far _ViridianSchoolHouseKyleBoastText
	text_end

.KyleNeedBrock:
	text_far _ViridianSchoolHouseKylePreBrockText
	text_end

.KyleBeatenBrock:
	text_far _ViridianSchoolHouseKylePostBrockText
	text_end

.KyleDecline
	text_far _ViridianSchoolHouseKyleSayNoText
	text_end

.KyleAccept
	text_far _ViridianSchoolHouseKylePreBattleText
	text_end

.KyleDefeatedText
	text_far _ViridianSchoolHouseKyleDefeatedText
	text_end
	
.KyleVictoryText
	text_far _ViridianSchoolHouseKyleVictoryText
	text_end

.KyleAfterBattle:
	text_far _ViridianSchoolHouseKyleAfterBeat
	text_end
	
ViridianSchoolKylePostBattle:
	text_far _ViridianSchoolKylePostBattle
	text_end

ViridianSchoolHouseRecievedTMTakeDown:
	text_far _ViridianSchoolHouseRecievedTMTakeDown
	sound_get_key_item
	text_end

ViridianSchoolHouseNoRoom:
	text_far _ViridianSchoolHouseNoRoom
	text_end