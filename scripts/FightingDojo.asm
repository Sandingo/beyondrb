FightingDojo_Script:
	call EnableAutoTextBoxDrawing
	ld hl, FightingDojoTrainerHeaders
	ld de, FightingDojo_ScriptPointers
	ld a, [wFightingDojoCurScript]
	call ExecuteCurMapScriptInTable
	ld [wFightingDojoCurScript], a
	ret

FightingDojoResetScripts:
	xor a ; SCRIPT_FIGHTINGDOJO_DEFAULT
	ld [wJoyIgnore], a
	ld [wFightingDojoCurScript], a
	ld [wCurMapScript], a
	ret

FightingDojo_ScriptPointers:
	def_script_pointers
	dw_const FightingDojoDefaultScript,                SCRIPT_FIGHTINGDOJO_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle,    SCRIPT_FIGHTINGDOJO_START_BATTLE
	dw_const EndTrainerBattle,                         SCRIPT_FIGHTINGDOJO_END_BATTLE
	dw_const FightingDojoKarateMasterPostBattleScript, SCRIPT_FIGHTINGDOJO_KARATE_MASTER_POST_BATTLE

FightingDojoDefaultScript:
	CheckEvent EVENT_DEFEATED_FIGHTING_DOJO
	ret nz
	call CheckFightingMapTrainers
	ld a, [wTrainerHeaderFlagBit]
	and a
	ret nz
	CheckEvent EVENT_BEAT_KARATE_MASTER
	ret nz
	xor a
	ldh [hJoyHeld], a
	ld [wSavedCoordIndex], a
	ld a, [wYCoord]
	cp 3
	ret nz
	ld a, [wXCoord]
	cp 4
	ld a, [wYCoord]
	jp z, .InCoords
	ld a, [wXCoord] ; Fixed for the new room size
	cp 5
	ret nz
.InCoords
	ld a, 1
	ld [wSavedCoordIndex], a
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, FIGHTINGDOJO_KARATE_MASTER
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, TEXT_FIGHTINGDOJO_KARATE_MASTER
	ldh [hTextID], a
	call DisplayTextID
	ret

FightingDojoKarateMasterPostBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, FightingDojoResetScripts
	CheckEvent EVENT_DEFEATED_FIGHTING_DOJO
	jp nz, .thisIsTheRematch
	ld a, [wSavedCoordIndex]
	and a ; nz if the player was at (4, 3), left of the Karate Master
	jr z, .already_facing
	ld a, PLAYER_DIR_RIGHT
	ld [wPlayerMovingDirection], a
	ld a, FIGHTINGDOJO_KARATE_MASTER
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
.already_facing
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
	SetEventRange EVENT_BEAT_KARATE_MASTER, EVENT_BEAT_FIGHTING_DOJO_TRAINER_3
	ld a, TEXT_FIGHTINGDOJO_KARATE_MASTER_I_WILL_GIVE_YOU_A_POKEMON
	jp .finish
.thisIsTheRematch
	CheckEvent EVENT_GET_REST_FIGHTING_DOJO_MONS
	jp nz, .alreadyGotMons
	SetEvent EVENT_GET_REST_FIGHTING_DOJO_MONS
	ld a, TEXT_FIGHTINGDOJO_OFFER_REMAINING
	jp .finish
.alreadyGotMons
	ld a, TEXT_FIGHTINGDOJO_KARATE_MASTER_REMATCH_AFTER_TEXT
	jp .finish
.finish
	ldh [hTextID], a
	call DisplayTextID
	xor a ; SCRIPT_FIGHTINGDOJO_DEFAULT
	ld [wJoyIgnore], a
	ld [wFightingDojoCurScript], a
	ld [wCurMapScript], a
	SetEvent EVENT_BEAT_KOICHI_REMATCH ; Set here in case the player never fought Koichi, they'll have to go through the E4 again
	ret

FightingDojo_TextPointers:
	def_text_pointers
	dw_const FightingDojoKarateMasterText,                          TEXT_FIGHTINGDOJO_KARATE_MASTER
	dw_const FightingDojoBlackbelt1Text,                            TEXT_FIGHTINGDOJO_BLACKBELT1
	dw_const FightingDojoBlackbelt2Text,                            TEXT_FIGHTINGDOJO_BLACKBELT2
	dw_const FightingDojoBlackbelt3Text,                            TEXT_FIGHTINGDOJO_BLACKBELT3
	dw_const FightingDojoBlackbelt4Text,                            TEXT_FIGHTINGDOJO_BLACKBELT4
	dw_const FightingDojoHitmonleePokeBallText,                     TEXT_FIGHTINGDOJO_HITMONLEE_POKE_BALL
	dw_const FightingDojoHitmonchanPokeBallText,                    TEXT_FIGHTINGDOJO_HITMONCHAN_POKE_BALL
	dw_const FightingDojoHitmontopPokeBallText,                     TEXT_FIGHTINGDOJO_HITMONTOP_POKE_BALL
	dw_const FightingDojoKarateMasterText.IWillGiveYouAPokemonText, TEXT_FIGHTINGDOJO_KARATE_MASTER_I_WILL_GIVE_YOU_A_POKEMON
	dw_const FightingDojoKarateMasterText.RematchAfterText, TEXT_FIGHTINGDOJO_KARATE_MASTER_REMATCH_AFTER_TEXT
	dw_const FightingDojoKarateMasterOfferRemaining,  TEXT_FIGHTINGDOJO_OFFER_REMAINING

FightingDojoTrainerHeaders:
	def_trainers 2
FightingDojoTrainerHeader0:
	trainer EVENT_BEAT_FIGHTING_DOJO_TRAINER_0, 4, FightingDojoBlackbelt1BattleText, FightingDojoBlackbelt1EndBattleText, FightingDojoBlackbelt1AfterBattleText
FightingDojoTrainerHeader1:
	trainer EVENT_BEAT_FIGHTING_DOJO_TRAINER_1, 4, FightingDojoBlackbelt2BattleText, FightingDojoBlackbelt2EndBattleText, FightingDojoBlackbelt2AfterBattleText
FightingDojoTrainerHeader2:
	trainer EVENT_BEAT_FIGHTING_DOJO_TRAINER_2, 3, FightingDojoBlackbelt3BattleText, FightingDojoBlackbelt3EndBattleText, FightingDojoBlackbelt3AfterBattleText
FightingDojoTrainerHeader3:
	trainer EVENT_BEAT_FIGHTING_DOJO_TRAINER_3, 3, FightingDojoBlackbelt4BattleText, FightingDojoBlackbelt4EndBattleText, FightingDojoBlackbelt4AfterBattleText
	db -1 ; end

FightingDojoKarateMasterText:
	text_asm
	CheckEvent EVENT_DEFEATED_FIGHTING_DOJO
	jp nz, .defeated_dojo
	CheckEventReuseA EVENT_BEAT_KARATE_MASTER
	jp nz, .defeated_master
	ld hl, .Text
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, .DefeatedText
	ld de, .DefeatedText
	call SaveEndBattleTextPointers
	ldh a, [hSpriteIndex]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, SCRIPT_FIGHTINGDOJO_KARATE_MASTER_POST_BATTLE
	ld [wFightingDojoCurScript], a
	ld [wCurMapScript], a
	jr .end
.defeated_dojo
    ld a, [wGameStage] ; Check if player has beat the game
	and a
	jr nz, .inPostgame
	ld hl, .StayAndTrainWithUsText
	call PrintText
	jr .end
.inPostgame
	CheckEvent EVENT_BEAT_KOICHI_REMATCH
	jp nz, .defeated_dojo2
	ld hl, .offerRematch
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused
	ld hl, .rematchAccepted
	call PrintText
	call Delay3
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, .DefeatedText
	ld de, .DefeatedText
	call SaveEndBattleTextPointers
	ld a, 1
	ld [wIsTrainerBattle], a
	ld a, OPP_KOICHI
	ld [wCurOpponent], a
	ld a, 2
	ld [wTrainerNo], a
	ld a, SCRIPT_FIGHTINGDOJO_KARATE_MASTER_POST_BATTLE
	ld [wFightingDojoCurScript], a
	ld [wCurMapScript], a
	jr .end
.refused
	ld hl, .rematchRefused
	call PrintText
	jr .end
.defeated_master
	ld hl, .IWillGiveYouAPokemonText
	call PrintText
	jr .end
.defeated_dojo2
	ld hl, FightingDojoKarateMasterText.RematchAfterText
	call PrintText
.end
	jp TextScriptEnd

.Text:
	text_far _FightingDojoKarateMasterText
	text_end

.DefeatedText:
	text_far _FightingDojoKarateMasterDefeatedText
	text_end

.IWillGiveYouAPokemonText:
	text_far _FightingDojoKarateMasterIWillGiveYouAPokemonText
	text_end

.StayAndTrainWithUsText:
	text_far _FightingDojoKarateMasterStayAndTrainWithUsText
	text_end

.offerRematch:
	text_far _FightingDojoKarateMasterRematchText
	text_end

.rematchRefused:
	text_far _FightingDojoKarateMasterRematchDeclineText
	text_end

.rematchAccepted:
	text_far _FightingDojoKarateMasterRematchAcceptText
	text_end


FightingDojoKarateMasterText.RematchAfterText:
	text_far _FightingDojoKarateMasterRematchAfterBattleText
	text_end

FightingDojoBlackbelt1Text:
	text_asm
	ld hl, FightingDojoTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBlackbelt1BattleText:
	text_far _FightingDojoBlackbelt1BattleText
	text_end

FightingDojoBlackbelt1EndBattleText:
	text_far _FightingDojoBlackbelt1EndBattleText
	text_end

FightingDojoBlackbelt1AfterBattleText:
	text_far _FightingDojoBlackbelt1AfterBattleText
	text_end

FightingDojoBlackbelt2Text:
	text_asm
	ld hl, FightingDojoTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBlackbelt2BattleText:
	text_far _FightingDojoBlackbelt2BattleText
	text_end

FightingDojoBlackbelt2EndBattleText:
	text_far _FightingDojoBlackbelt2EndBattleText
	text_end

FightingDojoBlackbelt2AfterBattleText:
	text_far _FightingDojoBlackbelt2AfterBattleText
	text_end

FightingDojoBlackbelt3Text:
	text_asm
	ld hl, FightingDojoTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBlackbelt3BattleText:
	text_far _FightingDojoBlackbelt3BattleText
	text_end

FightingDojoBlackbelt3EndBattleText:
	text_far _FightingDojoBlackbelt3EndBattleText
	text_end

FightingDojoBlackbelt3AfterBattleText:
	text_far _FightingDojoBlackbelt3AfterBattleText
	text_end

FightingDojoBlackbelt4Text:
	text_asm
	ld hl, FightingDojoTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

FightingDojoBlackbelt4BattleText:
	text_far _FightingDojoBlackbelt4BattleText
	text_end

FightingDojoBlackbelt4EndBattleText:
	text_far _FightingDojoBlackbelt4EndBattleText
	text_end

FightingDojoBlackbelt4AfterBattleText:
	text_far _FightingDojoBlackbelt4AfterBattleText
	text_end

FightingDojoHitmontopPokeBallText:
	text_asm
	CheckEvent EVENT_GET_REST_FIGHTING_DOJO_MONS
	jp nz, .GetMon
	CheckEitherEventSet EVENT_GOT_HITMONLEE, EVENT_GOT_HITMONCHAN
	jr nz, .BetterNotBeGreedy
	CheckEvent EVENT_GOT_HITMONTOP
	jr z, .GetMon
.BetterNotBeGreedy
	ld hl, FightingDojoBetterNotGetGreedyText
	call PrintText
	jr .done
.GetMon
	ld a, HITMONTOP
	call DisplayPokedex
	ld hl, .Text
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .done
	ld a, [wCurPartySpecies]
	ld b, a
	ld c, 30
	call GivePokemon
	jr nc, .done

	; once Poké Ball is taken, hide sprite
	ld a, HS_FIGHTING_DOJO_GIFT_3
	ld [wMissableObjectIndex], a
	predef HideObject
	SetEvents EVENT_GOT_HITMONTOP, EVENT_DEFEATED_FIGHTING_DOJO
.done
	jp TextScriptEnd

.Text:
	text_far _FightingDojoHitmontopPokeBallText
	text_end

FightingDojoHitmonleePokeBallText:
	text_asm
	CheckEvent EVENT_GET_REST_FIGHTING_DOJO_MONS
	jp nz, .GetMon
	CheckEitherEventSet EVENT_GOT_HITMONLEE, EVENT_GOT_HITMONCHAN
	jr nz, .BetterNotBeGreedy
	CheckEvent EVENT_GOT_HITMONTOP
	jr z, .GetMon
.BetterNotBeGreedy
	ld hl, FightingDojoBetterNotGetGreedyText
	call PrintText
	jr .done
.GetMon
	ld a, HITMONLEE
	call DisplayPokedex
	ld hl, .Text
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .done
	ld a, [wCurPartySpecies]
	ld b, a
	ld c, 30
	call GivePokemon
	jr nc, .done

	; once Poké Ball is taken, hide sprite
	ld a, HS_FIGHTING_DOJO_GIFT_1
	ld [wMissableObjectIndex], a
	predef HideObject
	SetEvents EVENT_GOT_HITMONLEE, EVENT_DEFEATED_FIGHTING_DOJO
.done
	jp TextScriptEnd

.Text:
	text_far _FightingDojoHitmonleePokeBallText
	text_end

FightingDojoHitmonchanPokeBallText:
	text_asm
	CheckEvent EVENT_GET_REST_FIGHTING_DOJO_MONS
	jp nz, .GetMon
	CheckEitherEventSet EVENT_GOT_HITMONLEE, EVENT_GOT_HITMONCHAN
	jr nz, .BetterNotBeGreedy
	CheckEvent EVENT_GOT_HITMONTOP
	jr z, .GetMon
.BetterNotBeGreedy
	ld hl, FightingDojoBetterNotGetGreedyText
	call PrintText
	jr .done
.GetMon
	ld a, HITMONCHAN
	call DisplayPokedex
	ld hl, .Text
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .done
	ld a, [wCurPartySpecies]
	ld b, a
	ld c, 30
	call GivePokemon
	jr nc, .done
	SetEvents EVENT_GOT_HITMONCHAN, EVENT_DEFEATED_FIGHTING_DOJO

	; once Poké Ball is taken, hide sprite
	ld a, HS_FIGHTING_DOJO_GIFT_2
	ld [wMissableObjectIndex], a
	predef HideObject
.done
	jp TextScriptEnd

.Text:
	text_far _FightingDojoHitmonchanPokeBallText
	text_end

FightingDojoBetterNotGetGreedyText:
	text_far _FightingDojoBetterNotGetGreedyText
	text_end

FightingDojoKarateMasterOfferRemaining:
	text_far _FightingDojoKarateMasterOfferRemaining
	text_end