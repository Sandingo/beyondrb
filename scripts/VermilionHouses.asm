VermilionHouses_Script:
	call EnableAutoTextBoxDrawing
	ret

VermilionHouses_TextPointers:
	def_text_pointers
	dw_const VermilionTradeHouseLittleGirlText, TEXT_VERMILIONTRADEHOUSE_LITTLE_GIRL
	dw_const VermilionHousesFishingGuruText, TEXT_VERMILIONOLDRODHOUSE_FISHING_GURU
	dw_const VermilionPidgeyHouseYoungsterText, TEXT_VERMILIONPIDGEYHOUSE_YOUNGSTER
	dw_const VermilionPidgeyHousePidgeyText,    TEXT_VERMILIONPIDGEYHOUSE_PIDGEY
	dw_const VermilionPidgeyHouseLetterText,    TEXT_VERMILIONPIDGEYHOUSE_LETTER

VermilionTradeHouseLittleGirlText:
	text_asm
	ld a, TRADE_FOR_DUX
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

VermilionHousesFishingGuruText:
	text_asm
	ld a, [wStatusFlags1]
	bit BIT_GOT_OLD_ROD, a
	jr nz, .got_old_rod
	ld hl, .DoYouLikeToFishText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused
	lb bc, OLD_ROD, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, wStatusFlags1
	set BIT_GOT_OLD_ROD, [hl]
	ld hl, .TakeThisText
	jr .print_text
.bag_full
	ld hl, .NoRoomText
	jr .print_text
.refused
	ld hl, .ThatsSoDisappointingText
	jr .print_text
.got_old_rod
	ld hl, .HowAreTheFishBitingText
.print_text
	call PrintText
	jp TextScriptEnd

.DoYouLikeToFishText:
	text_far _VermilionHousesFishingGuruDoYouLikeToFishText
	text_end

.TakeThisText:
	text_far _VermilionHousesFishingGuruTakeThisText
	sound_get_item_1
	text_far _VermilionHousesFishingGuruFishingIsAWayOfLifeText
	text_end

.ThatsSoDisappointingText:
	text_far _VermilionHousesFishingGuruThatsSoDisappointingText
	text_end

.HowAreTheFishBitingText:
	text_far _VermilionHousesFishingGuruHowAreTheFishBitingText
	text_end

.NoRoomText:
	text_far _VermilionHousesFishingGuruNoRoomText
	text_end

VermilionPidgeyHouseYoungsterText:
	text_far _VermilionPidgeyHouseYoungsterText
	text_end

VermilionPidgeyHousePidgeyText:
	text_far _VermilionPidgeyHousePidgeyText
	text_asm
	ld a, PIDGEY
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

VermilionPidgeyHouseLetterText:
	text_far _VermilionPidgeyHouseLetterText
	text_end

