PewterPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

PewterPokecenter_TextPointers:
	def_text_pointers
	dw_const PewterPokecenterNurseText,            TEXT_PEWTERPOKECENTER_NURSE
	dw_const PewterPokecenterGentlemanText,        TEXT_PEWTERPOKECENTER_GENTLEMAN
	dw_const PewterPokecenterJigglypuffText,       TEXT_PEWTERPOKECENTER_JIGGLYPUFF
	dw_const PewterPokecenterLinkReceptionistText, TEXT_PEWTERPOKECENTER_LINK_RECEPTIONIST
	dw_const PewterPokecenterChanseyText,		   TEXT_PEWTERPOKECENTER_CHANSEY
	dw_const PewterPokecenterCrunchiesGuyText,     TEXT_PEWTERPOKECENTER_CRUNCHIES_GUY

PewterPokecenterNurseText:
	script_pokecenter_nurse

PewterPokecenterGentlemanText:
	text_far _PewterPokecenterGentlemanText
	text_end
	
PewterPokecenterCrunchiesGuyText:
	text_asm
	ld hl, PewterPokecenterCrunchiesSellingText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .exit
	xor a
	;charge 500 money
	ld [hMoney], a	
	ld [hMoney + 2], a	
	ld a, $5
	ld [hMoney + 1], a  
	call HasEnoughMoney
	jr nc, .enoughMoney
	; not enough money
	ld hl, PewterPokecenterCrunchiesNoMoneyText
	call PrintText
	jp TextScriptEnd
.enoughMoney
	lb bc, PEWTERCRUNCH, 1
	call GiveItem
	jr nc, .BagFull
	xor a
	ld [wPriceTemp], a
	ld [wPriceTemp + 2], a	
	ld a, $5
	ld [wPriceTemp + 1], a	
	ld hl, wPriceTemp + 2
	ld de, wPlayerMoney + 2
	ld c, $3
	predef SubBCDPredef
	ld hl, PewterPokecenterCrunchiesBoughtText
	call PrintText
	call WaitForTextScrollButtonPress
	ld hl, PewterPokecenterCrunchiesGotText
	call PrintText
	ld a, MONEY_BOX
	ld [wTextBoxID], a
	jp DisplayTextBoxID
	jp .end
.BagFull
	ld hl, PewterPokecenterCrunchiesNoRoomText
	jp PrintText
	jp .end
.exit
	ld hl, PewterPokecenterCrunchiesNevermindText
	call PrintText
.end
	jp TextScriptEnd

PewterPokecenterCrunchiesSellingText:
	text_far _PewterPokecenterCrunchiesSellingText
	text_end

PewterPokecenterCrunchiesNoMoneyText:
	text_far _PewterPokecenterCrunchiesNoMoneyText
	text_end

PewterPokecenterCrunchiesBoughtText:
	text_far _PewterPokecenterCrunchiesBoughtText
	text_end

PewterPokecenterCrunchiesGotText:
	text_far _PewterPokecenterCrunchiesGotText
	sound_get_item_1
	text_end

PewterPokecenterCrunchiesNoRoomText:
	text_far _PewterPokecenterCrunchiesNoRoomText
	text_end

PewterPokecenterCrunchiesNevermindText:
	text_far _PewterPokecenterCrunchiesNevermindText
	text_end

PewterPokecenterJigglypuffText:
	text_asm
	ld a, TRUE
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .Text
	call PrintText

	ld a, SFX_STOP_ALL_MUSIC
	call PlaySound
	ld c, 32
	call DelayFrames

	ld hl, .FacingDirections
	ld de, wJigglypuffFacingDirections
	ld bc, .FacingDirectionsEnd - .FacingDirections
	call CopyData

	ld a, [wSprite03StateData1ImageIndex]
	ld hl, wJigglypuffFacingDirections
.findMatchingFacingDirectionLoop
	cp [hl]
	inc hl
	jr nz, .findMatchingFacingDirectionLoop
	dec hl

	push hl
	ld c, BANK(Music_JigglypuffSong)
	ld a, MUSIC_JIGGLYPUFF_SONG
	call PlayMusic
	pop hl

.spinMovementLoop
	ld a, [hl]
	ld [wSprite03StateData1ImageIndex], a
; rotate the array
	push hl
	ld hl, wJigglypuffFacingDirections
	ld de, wJigglypuffFacingDirections - 1
	ld bc, .FacingDirectionsEnd - .FacingDirections
	call CopyData
	ld a, [wJigglypuffFacingDirections - 1]
	ld [wJigglypuffFacingDirections + 3], a
	pop hl
	ld c, 24
	call DelayFrames
	ld a, [wChannelSoundIDs]
	ld b, a
	ld a, [wChannelSoundIDs + CHAN2]
	or b
	jr nz, .spinMovementLoop

	ld c, 48
	call DelayFrames
	call PlayDefaultMusic
	jp TextScriptEnd

.Text:
	text_far _PewterPokecenterJigglypuffText
	text_end

.FacingDirections:
	db $30 | SPRITE_FACING_DOWN
	db $30 | SPRITE_FACING_LEFT
	db $30 | SPRITE_FACING_UP
	db $30 | SPRITE_FACING_RIGHT
.FacingDirectionsEnd:

PewterPokecenterLinkReceptionistText:
	script_cable_club_receptionist

PewterPokecenterChanseyText:
	text_asm
	ld hl, .Text
	call PrintText
	ld a, CHANSEY
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

.Text:
	text_far _PewterPokecenterChanseyText
	text_end