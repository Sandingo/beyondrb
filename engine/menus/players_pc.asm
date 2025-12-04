PlayerPC::
	ld hl, wStatusFlags5
	set BIT_NO_TEXT_DELAY, [hl]
	ld a, ITEM_NAME
	ld [wNameListType], a
	call SaveScreenTilesToBuffer1
	xor a
	ld [wBagSavedMenuItem], a
	ld [wParentMenuItem], a
	ld a, [wMiscFlags]
	bit BIT_USING_GENERIC_PC, a
	jr nz, PlayerPCMenu
; accessing it directly
	ld a, SFX_TURN_ON_PC
	call PlaySound
	ld hl, TurnedOnPC2Text
	call PrintText

PlayerPCMenu:
	ld a, [wParentMenuItem]
	ld [wCurrentMenuItem], a
	ld hl, wMiscFlags
	set BIT_NO_MENU_BUTTON_SOUND, [hl]
	call LoadScreenTilesFromBuffer2
	hlcoord 0, 0
	ld b, $8
	ld c, $e
	call TextBoxBorder
	call UpdateSprites
	hlcoord 2, 2
	ld de, PlayersPCMenuEntries
	call PlaceString
	ld hl, wTopMenuItemY
	ld a, 2
	ld [hli], a ; wTopMenuItemY
	dec a
	ld [hli], a ; wTopMenuItemX
	inc hl
	inc hl
	ld a, 3
	ld [hli], a ; wMaxMenuItem
	ld a, A_BUTTON | B_BUTTON
	ld [hli], a ; wMenuWatchedKeys
	xor a
	ld [hl], a
	ld hl, wListScrollOffset
	ld [hli], a ; wListScrollOffset
	ld [hl], a ; wMenuWatchMovingOutOfBounds
	ld [wPlayerMonNumber], a
	ld hl, WhatDoYouWantText
	call PrintText
	call HandleMenuInput
	bit BIT_B_BUTTON, a
	jp nz, ExitPlayerPC
	call PlaceUnfilledArrowMenuCursor
	ld a, [wCurrentMenuItem]
	ld [wParentMenuItem], a
	and a
	jp z, PlayerPCWithdraw
	dec a
	jp z, PlayerPCDeposit
	dec a
	jp z, PlayerPCToss

ExitPlayerPC:
	ld a, [wMiscFlags]
	bit BIT_USING_GENERIC_PC, a
	jr nz, .next
; accessing it directly
	ld a, SFX_TURN_OFF_PC
	call PlaySound
	call WaitForSoundToFinish
.next
	ld hl, wMiscFlags
	res BIT_NO_MENU_BUTTON_SOUND, [hl]
	call LoadScreenTilesFromBuffer2
	xor a
	ld [wListScrollOffset], a
	ld [wBagSavedMenuItem], a
	ld hl, wStatusFlags5
	res BIT_NO_TEXT_DELAY, [hl]
	xor a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ret

PlayerPCDeposit:
	xor a
	ld [wCurrentMenuItem], a
	ld [wListScrollOffset], a
	ld a, [wNumBagItems]
	and a
	jr nz, .loop
	ld hl, NothingToDepositText
	call PrintText
	jp PlayerPCMenu
.loop
	ld hl, wStatusFlags5
	set BIT_NO_TEXT_DELAY, [hl]
	ld hl, WhatToDepositText
	call PrintText
	callfar DrawItemCountBox
	ld hl, wNumBagItems
	ld a, l
	ld [wListPointer], a
	ld a, h
	ld [wListPointer + 1], a
	xor a
	ld [wPrintItemPrices], a
	ld a, ITEMLISTMENU
	ld [wListMenuID], a
	call DisplayListMenuID
	jp c, PlayerPCMenu
	call IsKeyItem
	ld a, 1
	ld [wItemQuantity], a
	ld a, [wIsKeyItem]
	and a
	jr nz, .next
; if it's not a key item, there can be more than one of the item
	ld hl, DepositHowManyText
	call PrintText
	call DisplayChooseQuantityMenu
	cp $ff
	jp z, .loop
.next
	ld hl, wNumBoxItems
	call AddItemToInventory
	jr c, .roomAvailable
	ld hl, NoRoomToStoreText
	call PrintText
	jp .loop
.roomAvailable
	ld hl, wNumBagItems
	call RemoveItemFromInventory
	call WaitForSoundToFinish
	ld a, SFX_WITHDRAW_DEPOSIT
	call PlaySound
	call WaitForSoundToFinish
; Attempt to fix desync visual bug
	ld a, [wCurItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	call CopyToStringBuffer
	ld a, [wCurItem]
	ld a, [wCurrentMenuItem]
; Vanilla
	ld hl, ItemWasStoredText
	call PrintText
	jp .loop

PlayerPCWithdraw:
	xor a
	ld [wCurrentMenuItem], a
	ld [wListScrollOffset], a
	ld a, [wNumBoxItems]
	and a
	jr nz, .loop
	ld hl, NothingStoredText
	call PrintText
	jp PlayerPCMenu
.loop
	ld hl, wStatusFlags5
	set BIT_NO_TEXT_DELAY, [hl]
	ld hl, WhatToWithdrawText
	call PrintText
	call DrawStoredItemCountBox
	ld hl, wNumBoxItems
	ld a, l
	ld [wListPointer], a
	ld a, h
	ld [wListPointer + 1], a
	xor a
	ld [wPrintItemPrices], a
	ld a, ITEMLISTMENU
	ld [wListMenuID], a
	call DisplayListMenuID
	jp c, PlayerPCMenu
	call IsKeyItem
	ld a, 1
	ld [wItemQuantity], a
	ld a, [wIsKeyItem]
	and a
	jr nz, .next
; if it's not a key item, there can be more than one of the item
	ld hl, WithdrawHowManyText
	call PrintText
	call DisplayChooseQuantityMenu
	cp $ff
	jp z, .loop
.next
	ld hl, wNumBagItems
	call AddItemToInventory
	jr c, .roomAvailable
	ld hl, CantCarryMoreText
	call PrintText
	jp .loop
.roomAvailable
	ld hl, wNumBoxItems
	call RemoveItemFromInventory
	call WaitForSoundToFinish
	ld a, SFX_WITHDRAW_DEPOSIT
	call PlaySound
	call WaitForSoundToFinish
	ld hl, WithdrewItemText
	call PrintText
	jp .loop

DrawStoredItemCountBox:: ; Literally just copying what I did for the PC count
	hlcoord 13, 0
	ld b, 2
	ld c, 5
	call TextBoxBorder
	ld a, [wNumBoxItems]
	and $7f
	cp 10
	jr c, .singleDigitCount
; two digit number
	cp 50
	jr c, .sub40DigitCount
	sub 50
	hlcoord 14, 1
	ld [hl], "5"
	add "0"
	jr .next2
.sub40DigitCount
	cp 40
	jr c, .sub30DigitCount
	sub 40
	hlcoord 14, 1
	ld [hl], "4"
	add "0"
	jr .next2
.sub30DigitCount
	cp 30
	jr c, .sub20DigitCount
	sub 30
	hlcoord 14, 1
	ld [hl], "3"
	add "0"
	jr .next2
.sub20DigitCount
	cp 20
	jr c, .sub10DigitCount
	sub 20
	hlcoord 14, 1
	ld [hl], "2"
	add "0"
	jr .next2
.sub10DigitCount
	sub 10
	hlcoord 14, 1
	ld [hl], "1"
	add "0"
	jr .next2
.singleDigitCount
	dec a
	add "1"
.next2
	ldcoord_a 15, 1
	hlcoord 16, 1
	ld de, NumStoredItemsText
	call PlaceString
	ret

NumStoredItemsText:
	db "/50@"

PlayerPCToss:
	xor a
	ld [wCurrentMenuItem], a
	ld [wListScrollOffset], a
	ld a, [wNumBoxItems]
	and a
	jr nz, .loop
	ld hl, NothingStoredText
	call PrintText
	jp PlayerPCMenu
.loop
	ld hl, wStatusFlags5
	set BIT_NO_TEXT_DELAY, [hl]
	ld hl, WhatToTossText
	call PrintText
	call DrawStoredItemCountBox
	ld hl, wNumBoxItems
	ld a, l
	ld [wListPointer], a
	ld a, h
	ld [wListPointer + 1], a
	xor a
	ld [wPrintItemPrices], a
	ld a, ITEMLISTMENU
	ld [wListMenuID], a
	push hl
	call DisplayListMenuID
	pop hl
	jp c, PlayerPCMenu
	push hl
	call IsKeyItem
	pop hl
	ld a, 1
	ld [wItemQuantity], a
	ld a, [wIsKeyItem]
	and a
	jr nz, .next
	ld a, [wCurItem]
	call IsItemHM
	jr c, .next
; if it's not a key item, there can be more than one of the item
	push hl
	ld hl, TossHowManyText
	call PrintText
	call DisplayChooseQuantityMenu
	pop hl
	cp $ff
	jp z, .loop
.next
	call TossItem ; disallows tossing key items
	jp .loop

PlayersPCMenuEntries:
	db   "WITHDRAW ITEM"
	next "DEPOSIT ITEM"
	next "TOSS ITEM"
	next "LOG OFF@"

TurnedOnPC2Text:
	text_far _TurnedOnPC2Text
	text_end

WhatDoYouWantText:
	text_far _WhatDoYouWantText
	text_end

WhatToDepositText:
	text_far _WhatToDepositText
	text_end

DepositHowManyText:
	text_far _DepositHowManyText
	text_end

ItemWasStoredText:
	text_far _ItemWasStoredText
	text_end

NothingToDepositText:
	text_far _NothingToDepositText
	text_end

NoRoomToStoreText:
	text_far _NoRoomToStoreText
	text_end

WhatToWithdrawText:
	text_far _WhatToWithdrawText
	text_end

WithdrawHowManyText:
	text_far _WithdrawHowManyText
	text_end

WithdrewItemText:
	text_far _WithdrewItemText
	text_end

NothingStoredText:
	text_far _NothingStoredText
	text_end

CantCarryMoreText:
	text_far _CantCarryMoreText
	text_end

WhatToTossText:
	text_far _WhatToTossText
	text_end

TossHowManyText:
	text_far _TossHowManyText
	text_end
