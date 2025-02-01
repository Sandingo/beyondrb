VermilionCity_Script:
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_2, [hl]
	res BIT_CUR_MAP_LOADED_2, [hl]
	push hl
	call nz, VermilionCityLeftSSAnneCallbackScript
	pop hl
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	call nz, .setFirstLockTrashCanIndex
	ld hl, VermilionCity_ScriptPointers
	ld a, [wVermilionCityCurScript]
	jp CallFunctionInTable

.setFirstLockTrashCanIndex
	call Random
	ldh a, [hRandomSub]
	and $e
	ld [wFirstLockTrashCanIndex], a
	ret

VermilionCityLeftSSAnneCallbackScript:
	CheckEventHL EVENT_SS_ANNE_LEFT
	ret z
	CheckEventReuseHL EVENT_WALKED_PAST_GUARD_AFTER_SS_ANNE_LEFT
	SetEventReuseHL EVENT_WALKED_PAST_GUARD_AFTER_SS_ANNE_LEFT
	ret nz
	ld a, SCRIPT_VERMILIONCITY_PLAYER_EXIT_SHIP
	ld [wVermilionCityCurScript], a
	ret
	
VermilionCityResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wVermilionCityCurScript], a
	ld [wCurMapScript], a
	ret
	
VermilionCityMinaPostBattleScript:
ld a, [wIsInBattle]
	cp $ff
	jp z, VermilionCityResetScripts
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, TEXT_VERMILIONCITY_MINA_POST_BATTLE
	ldh [hTextID], a
	call DisplayTextID
	lb bc, BOTTLE_CAP, 1
	call GiveItem
	jr nc, .BagFull
	ld a, TEXT_VERMILIONCITY_RECEIVED_BOTTLECAP
	ldh [hTextID], a
	call DisplayTextID
	jr .done
.BagFull
	ld a, TEXT_VERMILIONCITY_NOROOM
	ldh [hTextID], a
	call DisplayTextID
.done
	ld a, [wGameStage] ; Check if player has beat the game
	and a
	jr z, .done2 ; If not, don't tag beaten the rematch
	SetEvent EVENT_BEAT_MINA_REMATCH
.done2
	SetEvent EVENT_BEAT_MINA
jp VermilionCityResetScripts

VermilionCity_ScriptPointers:
	def_script_pointers
	dw_const VermilionCityDefaultScript,             SCRIPT_VERMILIONCITY_DEFAULT
	dw_const VermilionCityPlayerMovingUp1Script,     SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP1
	dw_const VermilionCityPlayerExitShipScript,      SCRIPT_VERMILIONCITY_PLAYER_EXIT_SHIP
	dw_const VermilionCityPlayerMovingUp2Script,     SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP2
	dw_const VermilionCityPlayerAllowedToPassScript, SCRIPT_VERMILIONCITY_PLAYER_ALLOWED_TO_PASS
	dw_const VermilionCityMinaPostBattleScript,		 SCRIPT_VERMILIONCITY_MINA_POST_BATTLE

VermilionCityDefaultScript:
	ld a, [wSpritePlayerStateData1FacingDirection]
	and a ; cp SPRITE_FACING_DOWN
	ret nz
	ld hl, SSAnneTicketCheckCoords
	call ArePlayerCoordsInArray
	ret nc
	CheckEvent EVENT_SS_ANNE_LEFT
	jr nz, .ship_departed
	xor a
	ldh [hJoyHeld], a
	ld [wSavedCoordIndex], a ; unnecessary
	ld a, TEXT_VERMILIONCITY_SAILOR1
	ldh [hTextID], a
	call DisplayTextID
	ld b, S_S_TICKET
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	ret nz
.ship_departed
;	ld a, D_UP
;	ld [wSimulatedJoypadStatesEnd], a
;	ld a, $1
;	ld [wSimulatedJoypadStatesIndex], a
;	call StartSimulatingJoypadStates
;	ld a, SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP1
;	ld [wVermilionCityCurScript], a
	ret

SSAnneTicketCheckCoords:
	dbmapcoord 18, 30
	db -1 ; end

VermilionCityPlayerAllowedToPassScript:
	ld hl, SSAnneTicketCheckCoords
	call ArePlayerCoordsInArray
	ret c
	ld a, SCRIPT_VERMILIONCITY_DEFAULT
	ld [wVermilionCityCurScript], a
	ret

VermilionCityPlayerExitShipScript:
	ld a, A_BUTTON | B_BUTTON | SELECT | START | D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	ld a, D_UP
	ld [wSimulatedJoypadStatesEnd], a
	ld [wSimulatedJoypadStatesEnd + 1], a
	ld a, 2
	ld [wSimulatedJoypadStatesIndex], a
	call StartSimulatingJoypadStates
	ld a, SCRIPT_VERMILIONCITY_PLAYER_MOVING_UP2
	ld [wVermilionCityCurScript], a
	ret

VermilionCityPlayerMovingUp2Script:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	xor a
	ld [wJoyIgnore], a
	ldh [hJoyHeld], a
	ld a, SCRIPT_VERMILIONCITY_DEFAULT
	ld [wVermilionCityCurScript], a
	ret

VermilionCityPlayerMovingUp1Script:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld c, 10
	call DelayFrames
	ld a, SCRIPT_VERMILIONCITY_DEFAULT
	ld [wVermilionCityCurScript], a
	ret

VermilionCity_TextPointers:
	def_text_pointers
	dw_const VermilionCityBeautyText,             TEXT_VERMILIONCITY_BEAUTY
	dw_const VermilionCityGambler1Text,           TEXT_VERMILIONCITY_GAMBLER1
	dw_const VermilionCitySailor1Text,            TEXT_VERMILIONCITY_SAILOR1
	dw_const VermilionCityGambler2Text,           TEXT_VERMILIONCITY_GAMBLER2
	dw_const VermilionCityMachopText,             TEXT_VERMILIONCITY_MACHOP
	dw_const VermilionCitySailor2Text,            TEXT_VERMILIONCITY_SAILOR2
	dw_const VermilionCityOfficerJennyText,       TEXT_VERMILIONCITY_OFFICER_JENNY
	dw_const VermilionCityMinaText,		          TEXT_VERMILIONCITY_MINA
	dw_const VermilionCityMinaPostBattleText,     TEXT_VERMILIONCITY_MINA_POST_BATTLE
	dw_const VermilionCityRecieveBottlecap,       TEXT_VERMILIONCITY_RECEIVED_BOTTLECAP
	dw_const VermilionCityNoRoomText,             TEXT_VERMILIONCITY_NOROOM
	dw_const VermilionCitySignText,               TEXT_VERMILIONCITY_SIGN
	dw_const VermilionCityNoticeSignText,         TEXT_VERMILIONCITY_NOTICE_SIGN
	dw_const MartSignText,                        TEXT_VERMILIONCITY_MART_SIGN
	dw_const PokeCenterSignText,                  TEXT_VERMILIONCITY_POKECENTER_SIGN
	dw_const VermilionCityPokemonFanClubSignText, TEXT_VERMILIONCITY_POKEMON_FAN_CLUB_SIGN
	dw_const VermilionCityGymSignText,            TEXT_VERMILIONCITY_GYM_SIGN
	dw_const VermilionCityHarborSignText,         TEXT_VERMILIONCITY_HARBOR_SIGN

VermilionCityBeautyText:
	text_far _VermilionCityBeautyText
	text_end

VermilionCityGambler1Text:
	text_asm
	CheckEvent EVENT_SS_ANNE_LEFT
	jr nz, .ship_departed
	ld hl, .DidYouSeeText
	call PrintText
	jr .text_script_end
.ship_departed
	ld hl, .SSAnneDepartedText
	call PrintText
.text_script_end
	jp TextScriptEnd

.DidYouSeeText:
	text_far _VermilionCityGambler1DidYouSeeText
	text_end

.SSAnneDepartedText:
	text_far _VermilionCityGambler1SSAnneDepartedText
	text_end

VermilionCitySailor1Text:
	text_asm
	CheckEvent EVENT_SS_ANNE_LEFT
	jr nz, .ship_departed
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_RIGHT
	jr z, .greet_player
	ld hl, .inFrontOfOrBehindGuardCoords
	call ArePlayerCoordsInArray
	jr nc, .greet_player_and_check_ticket
.greet_player
	ld hl, .WelcomeToSSAnneText
	call PrintText
	jr .end
.greet_player_and_check_ticket
	ld hl, .DoYouHaveATicketText
	call PrintText
	ld b, S_S_TICKET
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	jr nz, .player_has_ticket
	ld hl, .YouNeedATicketText
	call PrintText
	jr .end
.player_has_ticket
	ld hl, .FlashedTicketText
	call PrintText
	ld a, SCRIPT_VERMILIONCITY_PLAYER_ALLOWED_TO_PASS
	ld [wVermilionCityCurScript], a
	jr .end
.ship_departed
	ld hl, .ShipSetSailText
	call PrintText
.end
	jp TextScriptEnd

.inFrontOfOrBehindGuardCoords
	dbmapcoord 19, 29 ; in front of guard
	dbmapcoord 19, 31 ; behind guard
	db -1 ; end

.WelcomeToSSAnneText:
	text_far _VermilionCitySailor1WelcomeToSSAnneText
	text_end

.DoYouHaveATicketText:
	text_far _VermilionCitySailor1DoYouHaveATicketText
	text_end

.FlashedTicketText:
	text_far _VermilionCitySailor1FlashedTicketText
	text_end

.YouNeedATicketText:
	text_far _VermilionCitySailor1YouNeedATicketText
	text_end

.ShipSetSailText:
	text_far _VermilionCitySailor1ShipSetSailText
	text_end

VermilionCityGambler2Text:
	text_far _VermilionCityGambler2Text
	text_end

VermilionCityMachopText:
	text_far _VermilionCityMachopText
	text_asm
	ld a, MACHOP
	call PlayCry
	call WaitForSoundToFinish
	ld hl, .StompingTheLandFlatText
	ret

.StompingTheLandFlatText:
	text_far _VermilionCityMachopStompingTheLandFlatText
	text_end

VermilionCitySailor2Text:
	text_far _VermilionCitySailor2Text
	text_end

VermilionCitySignText:
	text_far _VermilionCitySignText
	text_end

VermilionCityNoticeSignText:
	text_far _VermilionCityNoticeSignText
	text_end

VermilionCityPokemonFanClubSignText:
	text_far _VermilionCityPokemonFanClubSignText
	text_end

VermilionCityGymSignText:
	text_far _VermilionCityGymSignText
	text_end

VermilionCityHarborSignText:
	text_far _VermilionCityHarborSignText
	text_end


VermilionCityOfficerJennyText:
; Squirtle Gift
	text_asm
	CheckEvent EVENT_GOT_SQUIRTLE
	jr nz, .got_squirtle
	ld hl, .give_squirtle
.give_squirtle
	ld hl, .HaveThisPokemonText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .decline_squirtle
	lb bc, SQUIRTLE, 10
	call GivePokemon
	jr nc, .done
	ld a, [wSimulatedJoypadStatesEnd]
	and a
	call z, WaitForTextScrollButtonPress
	call EnableAutoTextBoxDrawing
	ld hl, .SquirtleDescriptionText
	call PrintText
	SetEvent EVENT_GOT_SQUIRTLE
	jr .done
.decline_squirtle
	ld hl, .DeclineMonText
	call PrintText
	jr .done
.got_squirtle
	ld hl, .GotSquirtleText
	call PrintText
.done
	jp TextScriptEnd

.HaveThisPokemonText
	text_far _VermilionCityOfficerJennyHaveThisPokemonText
	text_end

.DeclineMonText
	text_far _VermilionCityOfficerJennyDeclineText
	text_end

.SquirtleDescriptionText
	text_far _VermilionCityOfficerJennySquirtleDescriptionText
	text_end

.GotSquirtleText
	text_far _VermilionCityOfficerJennyGotText
	text_end

VermilionCityMinaText:
	text_asm
	ld a, [wGameStage] ; Check if player has beat the game
	and a
	jr nz, .postgame_check ; If yes, check rematch
	CheckEvent EVENT_BEAT_MINA
	jp nz, .already_fought
	ld hl, .MinaBattleQuestion
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .decline_battle
	ld c, BANK(Music_MeetFemaleTrainer)
	ld a, MUSIC_MEET_FEMALE_TRAINER
	call PlayMusic
	ld hl, .MinaAccept
	call PrintText
	call Delay3
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, .MinaDefeatedText
	ld de, .MinaVictoryText
	call SaveEndBattleTextPointers
	ld [wIsTrainerBattle], a; Battle Start!
	ld a, OPP_MINA
	ld [wCurOpponent], a
	ld a, 1
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_VERMILIONCITY_MINA_POST_BATTLE
	ld [wVermilionCityCurScript], a
	ld [wCurMapScript], a
	jr .done
.postgame_check
	CheckEvent EVENT_BEAT_MINA_REMATCH
	jr nz, .already_fought ; If so, the player already beat her
	ld hl, .MinaRematchQuestion
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .decline_battle
	ld c, BANK(Music_MeetFemaleTrainer)
	ld a, MUSIC_MEET_FEMALE_TRAINER
	call PlayMusic
	ld hl, .MinaAccept
	call PrintText
	call Delay3
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, .MinaDefeatedText
	ld de, .MinaVictoryText
	call SaveEndBattleTextPointers
	ld [wIsTrainerBattle], a; Battle Start!
	ld a, OPP_MINA
	ld [wCurOpponent], a
	ld a, 2
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_VERMILIONCITY_MINA_POST_BATTLE
	ld [wVermilionCityCurScript], a
	ld [wCurMapScript], a
	jr .done
.decline_battle
	ld hl, .MinaDecline
	call PrintText
	jr .done
.already_fought
	ld hl, .MinaAlreadyBeaten
	call PrintText
.done
	jp TextScriptEnd


.MinaBattleQuestion
	text_far _VermilionCityMinaQuestionText
	text_end

.MinaRematchQuestion
	text_far _VermilionCityMinaRematchQuestionText
	text_end

.MinaDecline
	text_far _VermilionCityMinaDeclineText
	text_end

.MinaAccept
	text_far _VermilionCityMinaAcceptText
	text_end
	
.MinaVictoryText
	text_far _VermilionCityMinaVictoryText
	text_end

.MinaDefeatedText
	text_far _VermilionCityMinaDefeatedText
	text_end

.MinaAlreadyBeaten
	text_far _VermilionCityMinaAlreadyBeatText
	text_end
	
VermilionCityMinaPostBattleText:
	text_far _VermilionCityMinaAfterBattleText
	text_end

VermilionCityRecieveBottlecap:
	text_far _VermilionCityBottleCapText
	sound_get_key_item
	text_end

VermilionCityNoRoomText:
	text_far _VermilionCityNoRoomText
	text_end