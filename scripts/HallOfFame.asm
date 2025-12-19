HallOfFame_Script:
	call EnableAutoTextBoxDrawing
	ld hl, HallOfFame_ScriptPointers
	ld a, [wHallOfFameCurScript]
	jp CallFunctionInTable

HallofFameRoomClearScripts: ; unreferenced
	xor a
	ld [wJoyIgnore], a
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_ScriptPointers:
	def_script_pointers
	dw_const HallOfFameDefaultScript,            SCRIPT_HALLOFFAME_DEFAULT
	dw_const HallOfFameOakCongratulationsScript, SCRIPT_HALLOFFAME_OAK_CONGRATULATIONS
	dw_const HallOfFameResetEventsAndSaveScript, SCRIPT_HALLOFFAME_RESET_EVENTS_AND_SAVE
	dw_const HallOfFameNoopScript,               SCRIPT_HALLOFFAME_NOOP

HallOfFameNoopScript:
	ret

HallOfFameResetEventsAndSaveScript:
	ld a, 1
	ld [wGameStage], a
	call Delay3
	ld a, [wLetterPrintingDelayFlags]
	push af
	xor a
	ld [wJoyIgnore], a
	predef HallOfFamePC
	pop af
	ld [wLetterPrintingDelayFlags], a
	ld hl, wStatusFlags7
	res BIT_NO_MAP_MUSIC, [hl]
	assert wStatusFlags7 + 1 == wElite4Flags
	inc hl
	set BIT_UNUSED_BEAT_ELITE_4, [hl] ; debug, unused?
	xor a ; SCRIPT_*_DEFAULT
	ld hl, wLoreleisRoomCurScript
	ld [hli], a ; wLoreleisRoomCurScript
	ld [hli], a ; wBrunosRoomCurScript
	ld [hl], a ; wAgathasRoomCurScript
	ld [wLancesRoomCurScript], a
	ld [wHallOfFameCurScript], a
	; Elite 4 events
	ResetEventRange REMATCHES_START, REMATCHES_END, 1
	ResetEventRange LEAGUEHQTRAINERS_START, LEAGUEHQTRAINERS_END, 1
	ResetEventRange INDIGO_PLATEAU_EVENTS_START, INDIGO_PLATEAU_EVENTS_END, 1
	call RespawnItems
	xor a
	ld [wHallOfFameCurScript], a
	ld a, PALLET_TOWN
	ld [wLastBlackoutMap], a
	farcall SaveSAVtoSRAM
	ld b, 5
.delayLoop
	ld c, 600 / 5
	call DelayFrames
	dec b
	jr nz, .delayLoop
	call WaitForTextScrollButtonPress
	jp Init

RespawnItems: ; This is for items that can be obtained multiple times.
	ld a, HS_MT_MOON_B1F_ITEM_1 ; Tiny Mushrooms in Mt. Moon respawn
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_MT_MOON_B1F_ITEM_2
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_MT_MOON_B1F_ITEM_3
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_MT_MOON_B1F_ITEM_4
	ld [wMissableObjectIndex], a
	predef ShowObject
	ret

HallOfFameDefaultScript:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld hl, wSimulatedJoypadStatesEnd
	ld de, HallOfFameEntryMovement
	call DecodeRLEList
	dec a
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_HALLOFFAME_OAK_CONGRATULATIONS
	ld [wHallOfFameCurScript], a
	ret

HallOfFameEntryMovement:
	db D_UP, 5
	db -1 ; end

HallOfFameOakCongratulationsScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, HALLOFFAME_OAK
	ldh [hSpriteIndex], a
	call SetSpriteMovementBytesToFF
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	call Delay3
	xor a
	ld [wJoyIgnore], a
	inc a ; PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, TEXT_HALLOFFAME_OAK
	ldh [hTextID], a
	call DisplayTextID
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, [wGameStage] ; Check if player has already beaten the game
	and a
	jr nz, .skipPostGameNPCPlacements
.PostgameNPCLocations
	ld a, HS_CERULEAN_CAVE_GUY ; Mewtwo is available
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_SAFARI_ZONE_NORTH_WORKER_1 ; Allow access to Safari Zone Expansion
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_SAFARI_ZONE_NORTH_WORKER_2
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_ROUTE_22_SILVERGUARD_1 ; Allow access to Mt. Silver
	ld [wMissableObjectIndex], a
	predef HideExtraObject
	ld a, HS_ROUTE_22_SILVERGUARD_2
	ld [wMissableObjectIndex], a
	predef HideExtraObject
	ld a, HS_CELADONMART2F_CLERK3 ; Allow repurchasable good TMs
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_CELADONMART4F_CLERK2 ; Allow rare evolution items to be sold
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_VIRIDIAN_GYM_GIOVANNI ; Make sure Giovanni is gone, even if the player didn't interact with him again.
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_VIRIDIAN_SCHOOL_KYLE
	ld [wMissableObjectIndex], a
	predef HideObject	
	ld a, HS_VIRIDIAN_GYM_KYLE ; Kyle becomes the new Viridian Gym Leader
	ld [wMissableObjectIndex], a
	predef ShowObject	
	ld a, HS_PALLET_TOWN_SCIENTIST ; Block Oak's Lab to start the Mt. Silver quest
	ld [wMissableObjectIndex], a
	predef ShowObject
	ld a, HS_INDIGO_LEAGUE_LOBBY_ABRA ; Let players rematch the Elite Four directly
	ld [wMissableObjectIndex], a
	predef ShowObject
.skipPostGameNPCPlacements
; End of Post Game Location checks
	ld a, SCRIPT_HALLOFFAME_RESET_EVENTS_AND_SAVE
	ld [wHallOfFameCurScript], a
	ret

HallOfFame_TextPointers:
	def_text_pointers
	dw_const HallOfFameOakText, TEXT_HALLOFFAME_OAK

HallOfFameOakText:
	text_far _HallOfFameOakText
	text_end