RocketHideoutElevator_Script:
	ld hl, wCurrentMapScriptFlags
	bit BIT_CUR_MAP_LOADED_1, [hl]
	res BIT_CUR_MAP_LOADED_1, [hl]
	push hl
	call nz, RocketHideoutElevatorStoreWarpEntriesScript
	pop hl
	bit BIT_CUR_MAP_USED_ELEVATOR, [hl]
	res BIT_CUR_MAP_USED_ELEVATOR, [hl]
	call nz, RocketHideoutElevatorShakeScript
	xor a
	ld [wAutoTextBoxDrawingControl], a
	inc a
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ret

RocketHideoutElevatorStoreWarpEntriesScript:
	ld hl, wWarpEntries
	ld a, [wWarpedFromWhichWarp]
	ld b, a
	ld a, [wWarpedFromWhichMap]
	ld c, a
	call .StoreWarpEntry
	; fallthrough
.StoreWarpEntry:
	inc hl
	inc hl
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ret

RocketHideoutElevatorScript:
	ld hl, RocketHideoutElavatorFloors
	call LoadItemList
	ld hl, RocketHideoutElevatorWarpMaps
	ld de, wElevatorWarpMaps
	ld bc, RocketHideoutElevatorWarpMaps.End - RocketHideoutElevatorWarpMaps
	call CopyData
	ret

RocketHideoutElavatorFloors:
	db 3 ; #
	db FLOOR_B1F
	db FLOOR_B2F
	db FLOOR_B4F
	db -1 ; end

; These specify where the player goes after getting out of the elevator.
RocketHideoutElevatorWarpMaps:
	; warp number, map id
	db 4, ROCKET_HIDEOUT_B1F
	db 4, ROCKET_HIDEOUT_B2F
	db 2, ROCKET_HIDEOUT_B4F
.End:

RocketHideoutElevatorShakeScript:
	call Delay3
	farcall ShakeElevator
	ret

RocketHideoutElevator_TextPointers:
	def_text_pointers
	dw_const RocketHideoutElevatorText, TEXT_ROCKETHIDEOUTELEVATOR

RocketHideoutElevatorText:
	text_asm
	CheckEvent EVENT_LIFT_KEY_USED
	jr nz, .canUseLift
	ld b, LIFT_KEY
	call IsItemInBag
	jr z, .no_key
	SetEvent EVENT_LIFT_KEY_USED
	call RocketHideoutElevator_RemoveKey
	ld hl, .InsertKeyText
	call PrintText
.canUseLift
	call RocketHideoutElevatorScript
	ld hl, RocketHideoutElevatorWarpMaps
	predef DisplayElevatorFloorMenu
	jr .text_script_end
.no_key
	ld hl, .AppearsToNeedKeyText
	call PrintText
.text_script_end
	jp TextScriptEnd

.AppearsToNeedKeyText:
	text_far _RocketHideoutElevatorAppearsToNeedKeyText
	text_waitbutton
	text_end

.InsertKeyText:
	text_far _RocketHideoutElevatorInsertKeyText
	sound_get_item_1
	text_end

RocketHideoutElevator_RemoveKey:
	ld hl, wBagItems
	ld bc, 0
.loop
	ld a, [hli]
	cp $ff
	ret z
	cp LIFT_KEY
	jr z, .foundKey
	inc hl
	inc c
	jr .loop
.foundKey
	ld hl, wNumBagItems
	ld a, c
	ld [wWhichPokemon], a
	ld a, 1
	ld [wItemQuantity], a
	jp RemoveItemFromInventory