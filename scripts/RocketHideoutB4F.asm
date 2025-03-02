RocketHideoutB4F_Script:
	call RocketHideoutB4FDoorCallbackScript
	call EnableAutoTextBoxDrawing
	ld hl, RocketHideout4TrainerHeaders
	ld de, RocketHideoutB4F_ScriptPointers
	ld a, [wRocketHideoutB4FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wRocketHideoutB4FCurScript], a
	ret

RocketHideoutB4FDoorCallbackScript:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	ret z
	CheckEvent EVENT_ROCKET_HIDEOUT_4_DOOR_UNLOCKED
	jr nz, .door_already_unlocked
	CheckBothEventsSet EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_0, EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_1, 1
	jr z, .unlock_door
	ld a, $2d ; Door block
	jr .set_block
.unlock_door
	ld a, SFX_GO_INSIDE
	call PlaySound
	SetEvent EVENT_ROCKET_HIDEOUT_4_DOOR_UNLOCKED
.door_already_unlocked
	ld a, $e ; Floor block
.set_block
	ld [wNewTileBlockID], a
	lb bc, 5, 12
	predef_jump ReplaceTileBlock

RocketHideoutB4FSetDefaultScript:
	xor a
	ld [wJoyIgnore], a
	ld [wRocketHideoutB4FCurScript], a
	ld [wCurMapScript], a
	ret

RocketHideoutArcherEvent:
IF DEF(_DEBUG)
	call DebugPressedOrHeldB
	ret nz
ENDC
	jp nz, CheckFightingMapTrainers
	CheckEvent EVENT_BEAT_ROCKET_HIDEOUT_4_ARCHER
	ret nz
	ld hl, RocketHideoutCoords
	call ArePlayerCoordsInArray
	jp nc, CheckFightingMapTrainers
	xor a
	ldh [hJoyHeld], a
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wXCoord]
	cp 25; is the player standing on the right side of the door
	jr z, .playerOnRightSideOfDoor
	ld a, ROCKETHIDEOUTB4F_ARCHER
	ldh [hSpriteIndex], a
	ld a, SPRITESTATEDATA2_MAPX
	ldh [hSpriteDataOffset], a
	call GetPointerWithinSpriteStateData2
	ld [hl], 28
.playerOnRightSideOfDoor
	ld de, RocketHideoutMovement
	ld a, ROCKETHIDEOUTB4F_ARCHER
	ldh [hSpriteIndex], a
	call MoveSprite
	ld a, SCRIPT_ROCKETHIDEOUT_ARCHER_BATTLE
	ld [wRocketHideoutB4FCurScript], a
	ld [wCurMapScript], a
	ret

RocketHideoutCoords:
	dbmapcoord 24,  10
	dbmapcoord 25,  10
	db -1 ; end

RocketHideoutMovement:
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db NPC_MOVEMENT_DOWN
	db -1 ; end

RocketHideoutB4FFightArcherScript:
	ld a, [wStatusFlags5]
	bit BIT_SCRIPTED_NPC_MOVEMENT, a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ld a, TEXT_ROCKETHIDEOUTB4F_ARCHER
	ldh [hTextID], a
	call DisplayTextID
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, RocketHideoutArcherDefeatedText
	ld de, RocketHideoutArcherVictoryText
	call SaveEndBattleTextPointers
	ld a, OPP_ARCHER
	ld [wCurOpponent], a
	ld a, $1
.done
	ld [wTrainerNo], a
	ld a, 1
	ld [wIsTrainerBattle], a
	xor a
	ldh [hJoyHeld], a
	ld hl, wCurrentMapScriptFlags
	set BIT_CUR_MAP_LOADED_1, [hl]
	ld a, SCRIPT_ROCKETHIDEOUT_ARCHER_DEFEAT
	ld [wRocketHideoutB4FCurScript], a
	ld [wCurMapScript], a
	ret

RocketHideoutB4FDefeatArcherScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, RocketHideoutB4FSetDefaultScript
	call UpdateSprites
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_ROCKET_HIDEOUT_4_ARCHER
	ld a, TEXT_ROCKETHIDEOUTB4F_ARCHER
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ld [wJoyIgnore], a
	ld hl, wCurrentMapScriptFlags
	set BIT_CUR_MAP_LOADED_1, [hl]
	ld a, SCRIPT_ROCKETHIDEOUTB4F_DEFAULT
	ld [wRocketHideoutB4FCurScript], a
	ld [wCurMapScript], a
	ret

RocketHideoutB4F_ScriptPointers:
	def_script_pointers
;	dw_const CheckFightingMapTrainers,              SCRIPT_ROCKETHIDEOUTB4F_DEFAULT
	dw_const RocketHideoutArcherEvent,			 SCRIPT_ROCKETHIDEOUTB4F_DEFAULT ; SCRIPT_ROCKETHIDEOUTB4F_ARCHER_EVENT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROCKETHIDEOUTB4F_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROCKETHIDEOUTB4F_END_BATTLE
	dw_const RocketHideoutB4FBeatGiovanniScript,    SCRIPT_ROCKETHIDEOUTB4F_BEAT_GIOVANNI
	dw_const RocketHideoutB4FFightArcherScript,	SCRIPT_ROCKETHIDEOUT_ARCHER_BATTLE
	dw_const RocketHideoutB4FDefeatArcherScript, SCRIPT_ROCKETHIDEOUT_ARCHER_DEFEAT

RocketHideoutB4FBeatGiovanniScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, RocketHideoutB4FSetDefaultScript
	call UpdateSprites
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	SetEvent EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI
	ld a, TEXT_ROCKETHIDEOUTB4F_GIOVANNI_HOPE_WE_MEET_AGAIN
	ldh [hTextID], a
	call DisplayTextID
	call GBFadeOutToBlack
	ld a, HS_ROCKET_HIDEOUT_B4F_GIOVANNI
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_ROCKET_HIDEOUT_B4F_ARCHER
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_GAME_CORNER_IMAKUNI
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_ROCKET_HIDEOUT_B4F_ITEM_4
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call GBFadeInFromBlack
	xor a
	ld [wJoyIgnore], a
	ld hl, wCurrentMapScriptFlags
	set BIT_CUR_MAP_LOADED_1, [hl]
	ld a, SCRIPT_ROCKETHIDEOUTB4F_DEFAULT
	ld [wRocketHideoutB4FCurScript], a
	ld [wCurMapScript], a
	ret

RocketHideoutB4F_TextPointers:
	def_text_pointers
	dw_const RocketHideoutB4FGiovanniText,                TEXT_ROCKETHIDEOUTB4F_GIOVANNI
	dw_const RocketHideoutB4FRocket1Text,                 TEXT_ROCKETHIDEOUTB4F_ROCKET1
	dw_const RocketHideoutB4FRocket2Text,                 TEXT_ROCKETHIDEOUTB4F_ROCKET2
	dw_const RocketHideoutB4FRocket3Text,                 TEXT_ROCKETHIDEOUTB4F_ROCKET3
	dw_const RocketHideoutB4FArcherText,			         TEXT_ROCKETHIDEOUTB4F_ARCHER
	dw_const PickUpItemText,                              TEXT_ROCKETHIDEOUTB4F_HP_UP
	dw_const PickUpItemText,                              TEXT_ROCKETHIDEOUTB4F_TM_RAZOR_WIND
	dw_const PickUpItemText,                              TEXT_ROCKETHIDEOUTB4F_IRON
	dw_const PickUpItemText,                              TEXT_ROCKETHIDEOUTB4F_SILPH_SCOPE
	dw_const PickUpItemText,                              TEXT_ROCKETHIDEOUTB4F_LIFT_KEY
	dw_const PickUpItemText,                              TEXT_ROCKETHIDEOUTB4F_UP_GRADE
	dw_const RocketHideoutB4FGiovanniHopeWeMeetAgainText, TEXT_ROCKETHIDEOUTB4F_GIOVANNI_HOPE_WE_MEET_AGAIN

RocketHideout4TrainerHeaders:
	def_trainers 2
RocketHideout4TrainerHeader0:
	trainer EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_0, 0, RocketHideoutB4FGiovanniBattleText, RocketHideoutB4FGiovanniEndBattleText, RocketHideoutB4FGiovanniAfterBattleText
RocketHideout4TrainerHeader1:
	trainer EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_1, 0, RocketHideoutB4FRocket1BattleText, RocketHideoutB4FRocket1EndBattleText, RocketHideoutB4FRocket1AfterBattleText
RocketHideout4TrainerHeader2:
	trainer EVENT_BEAT_ROCKET_HIDEOUT_4_TRAINER_2, 1, RocketHideoutB4FRocket2BattleText, RocketHideoutB4FRocket2EndBattleText, RocketHideoutB4FRocket2AfterBattleText
	db -1 ; end

RocketHideoutB4FGiovanniText:
	text_asm
	CheckEvent EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI
	jp nz, .beat_giovanni
	ld hl, .ImpressedYouGotHereText
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, .WhatCannotBeText
	ld de, .WhatCannotBeText
	call SaveEndBattleTextPointers
	ldh a, [hSpriteIndex]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_ROCKETHIDEOUTB4F_BEAT_GIOVANNI
	ld [wRocketHideoutB4FCurScript], a
	ld [wCurMapScript], a
	jr .done
.beat_giovanni
	ld hl, RocketHideoutB4FGiovanniHopeWeMeetAgainText
	call PrintText
.done
	jp TextScriptEnd

.ImpressedYouGotHereText:
	text_far _RocketHideoutB4FGiovanniImpressedYouGotHereText
	text_end

.WhatCannotBeText:
	text_far _RocketHideoutB4FGiovanniWhatCannotBeText
	text_end

RocketHideoutB4FGiovanniHopeWeMeetAgainText:
	text_far _RocketHideoutB4FGiovanniHopeWeMeetAgainText
	text_end
	
RocketHideoutB4FArcherText:
	text_asm
	CheckEvent EVENT_BEAT_ROCKET_HIDEOUT_4_ARCHER
	; do pre-battle text
	jr z, .PreBattle
	; or talk about bill
	ld hl, RocketHideoutB4FArcherAfterText
	call PrintText
	jr .end
.PreBattle
	ld hl, .PreBattleText
	call PrintText
.end
	jp TextScriptEnd

.PreBattleText:
	text_far _RocketHideoutB4FArcherIntroText
	text_end

RocketHideoutArcherDefeatedText:
	text_far _RocketHideoutArcherDefeatedText
	text_end

RocketHideoutArcherVictoryText:
	text_far _RocketHideoutArcherDefeatedText
	text_end

RocketHideoutB4FArcherAfterText:
	text_far _RocketHideoutB4FArcherAfterText
	text_end

RocketHideoutB4FRocket1Text:
	text_asm
	ld hl, RocketHideout4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

RocketHideoutB4FGiovanniBattleText:
	text_far _RocketHideoutB4FGiovanniBattleText
	text_end

RocketHideoutB4FGiovanniEndBattleText:
	text_far _RocketHideoutB4FGiovanniEndBattleText
	text_end

RocketHideoutB4FGiovanniAfterBattleText:
	text_far _RocketHideoutB4FGiovanniAfterBattleText
	text_end

RocketHideoutB4FRocket2Text:
	text_asm
	ld hl, RocketHideout4TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

RocketHideoutB4FRocket1BattleText:
	text_far _RocketHideoutB4FRocket1BattleText
	text_end

RocketHideoutB4FRocket1EndBattleText:
	text_far _RocketHideoutB4FRocket1EndBattleText
	text_end

RocketHideoutB4FRocket1AfterBattleText:
	text_far _RocketHideoutB4FRocket1AfterBattleText
	text_end

RocketHideoutB4FRocket3Text:
	text_asm
	ld hl, RocketHideout4TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

RocketHideoutB4FRocket2BattleText:
	text_far _RocketHideoutB4FRocket2BattleText
	text_end

RocketHideoutB4FRocket2EndBattleText:
	text_far _RocketHideoutB4FRocket2EndBattleText
	text_end

RocketHideoutB4FRocket2AfterBattleText:
	text_asm
	ld hl, .Text
	call PrintText
	CheckAndSetEvent EVENT_ROCKET_DROPPED_LIFT_KEY
	jr nz, .done
	ld a, HS_ROCKET_HIDEOUT_B4F_ITEM_5
	ld [wMissableObjectIndex], a
	predef ShowObject
.done
	jp TextScriptEnd

.Text:
	text_far _RocketHideoutB4FRocket2AfterBattleText
	text_end
