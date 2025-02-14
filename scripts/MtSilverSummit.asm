MtSilverSummit_Script:
	call EnableAutoTextBoxDrawing
	ld hl, MtSilverSummit_ScriptPointers
	ld a, [wMtSilverSummitCurScript]
	jp CallFunctionInTable

MtSilverSummitDefaultScript:
	ret

MtSilverSummitResetScripts:
	xor a
	ld [wJoyIgnore], a
	ld [wMtSilverSummitCurScript], a
	ld [wCurMapScript], a
	ret

MtSilverSummitOakPostBattleScript:
	ld a, [wIsInBattle]
	cp $ff
	jp z, MtSilverSummitResetScripts
	ld a, D_RIGHT | D_LEFT | D_UP | D_DOWN
	ld [wJoyIgnore], a
; fallthrough
	ld a, TEXT_MTSILVERSUMMIT_OAK_POST_BATTLE
	ldh [hTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_OAK
MtSilverSummitGiveOrangeTicketScript:
	lb bc, ORANGE_TICKET, 1
	call GiveItem
	jr nc, .BagFull
	ld a, TEXT_MT_SILVERSUMMIT_RECIEVED_ORANGE_TICKET
	ldh [hTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_ORANGE_TICKET
	call GBFadeOutToBlack
	ld a, HS_MT_SILVER_SUMMIT_OAK
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_PALLET_TOWN_SCIENTIST
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_POKEMON_TOWER_7F_DOOMSDAY
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromBlack
	jr .end
.BagFull
	ld a, TEXT_MTSILVERSUMMIT_NO_ROOM
	ldh [hTextID], a
	call DisplayTextID
	.end
	jp MtSilverSummitResetScripts

MtSilverSummit_ScriptPointers:
	def_script_pointers
	dw_const MtSilverSummitDefaultScript, 				 SCRIPT_MTSILVERSUMMIT_DEFAULT
	dw_const MtSilverSummitOakPostBattleScript,			 SCRIPT_MTSILVERSUMMIT_OAK_POST_BATTLE
	dw_const MtSilverSummitGiveOrangeTicketScript,		 SCRIPT_MTSILVERSUMMIT_OAK_GIVE_ORANGE_TICKET

MtSilverSummit_TextPointers:
	def_text_pointers
	dw_const OakBattleText,		 TEXT_MTSILVERSUMMIT_OAK
	dw_const OakPostBattleText,	 TEXT_MTSILVERSUMMIT_OAK_POST_BATTLE
	dw_const OrangeTicketGet,	 TEXT_MT_SILVERSUMMIT_RECIEVED_ORANGE_TICKET
	dw_const NoRoom,			 TEXT_MTSILVERSUMMIT_NO_ROOM

OakBattleText:
	text_asm
	CheckEvent EVENT_BEAT_OAK
	jr nz, .giveOrangeTicket
	ld hl, .text
	call PrintText
	ld hl, wStatusFlags3
	set BIT_TALKED_TO_TRAINER, [hl]
	set BIT_PRINT_END_BATTLE_TEXT, [hl]
	ld hl, OakEndBattleText
	ld de, OakDefeatBattleText
	call SaveEndBattleTextPointers
	ld a, 1
	ld [wIsTrainerBattle], a
	ld a, OPP_PROF_OAK
	ld [wCurOpponent], a
	; select which team to use during the encounter
	ld a, [wRivalStarter]
	cp STARTER2
	jr nz, .NotSquirtle
	ld a, $1
	jr .done
.NotSquirtle
	cp STARTER3
	jr nz, .Charmander
	ld a, $2
	jr .done
.Charmander
	ld a, $3
.done
	ld [wTrainerNo], a
	xor a
	ldh [hJoyHeld], a
	ld a, SCRIPT_MTSILVERSUMMIT_OAK_POST_BATTLE
	ld [wMtSilverSummitCurScript], a
	ld [wCurMapScript], a
	jr .finish
.giveOrangeTicket
	ld hl, OakPostBattleText
	call PrintText
	ld a, SCRIPT_MTSILVERSUMMIT_OAK_GIVE_ORANGE_TICKET
	ld [wMtSilverSummitCurScript], a
	ld [wCurMapScript], a
.finish
	jp TextScriptEnd


.text
	text_far _OakBattleText
	text_end

OakEndBattleText:
	text_far _OakEndBattleText
	text_end

OakDefeatBattleText:
	text_far _OakDefeatBattleText
	text_end

OakAfterBattleText:
	text_far _OakAfterBattleText
	text_end

OakPostBattleText:
	text_far _OakPostBattleText
	text_end

OrangeTicketGet:
	text_far _OrangeTicketGet
	sound_get_item_1

OrangeTicketExplaination:
	text_far _OrangeTicketExplaination
	text_end

NoRoom:
	text_far _MtSilverNoRoom
	text_end