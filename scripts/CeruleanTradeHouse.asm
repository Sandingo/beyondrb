CeruleanTradeHouse_Script:
	jp EnableAutoTextBoxDrawing

CeruleanTradeHouse_TextPointers:
	def_text_pointers
	dw_const CeruleanTradeHouseGrannyText,  TEXT_CERULEANTRADEHOUSE_GRANNY
	dw_const CeruleanTradeHouseGamblerText, TEXT_CERULEANTRADEHOUSE_GAMBLER
	dw_const CeruleanTradeHouseMelanieText, TEXT_CERULEANTRADEHOUSE_MELANIE

CeruleanTradeHouseGrannyText:
	text_far _CeruleanTradeHouseGrannyText
	text_end

CeruleanTradeHouseGamblerText:
	text_asm
	ld a, TRADE_FOR_LOLA
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

CeruleanTradeHouseMelanieText:
; Bulbasaur Gift
	text_asm
	CheckEvent EVENT_GOT_BULBASAUR
	jr nz, .got_bulbasaur
	ld hl, .give_bulbasaur
.give_bulbasaur
	ld hl, .HaveThisPokemonText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .decline_bulbasaur
	lb bc, BULBASAUR, 10
	call GivePokemon
	jr nc, .done
	ld a, [wSimulatedJoypadStatesEnd]
	and a
	call z, WaitForTextScrollButtonPress
	call EnableAutoTextBoxDrawing
	ld hl, .BulbasaurDescriptionText
	call PrintText
	SetEvent EVENT_GOT_BULBASAUR
	jr .done
.decline_bulbasaur
	ld hl, .DeclineMonText
	call PrintText
	jr .done
.got_bulbasaur
	ld hl, .GotBulbasaurText
	call PrintText
.done
	jp TextScriptEnd

.HaveThisPokemonText
	text_far _CeruleanTradeHouseMelanieHaveThisPokemonText
	text_end

.DeclineMonText
	text_far _CeruleanTradeHouseMelanieDeclineText
	text_end

.BulbasaurDescriptionText
	text_far _CeruleanTradeHouseMelanieBulbasaurDescriptionText
	text_end

.GotBulbasaurText
	text_far _CeruleanTradeHouseMelanieGotText
	text_end