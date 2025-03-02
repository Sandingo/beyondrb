PickUpItem:
	call EnableAutoTextBoxDrawing

	ldh a, [hSpriteIndex]
	ld b, a
	ld hl, wMissableObjectList
.missableObjectsListLoop
	ld a, [hli]
	cp $ff
	jr z, .noObject
	cp b
	jr z, .isMissable
	inc hl
	jr .missableObjectsListLoop

.isMissable
	ld a, [hl]
	ldh [hMissableObjectIndex], a

	ld hl, wMapSpriteExtraData
	ldh a, [hSpriteIndex]
	dec a
	add a
	ld d, 0
	ld e, a
	add hl, de
	ld a, [hl]
	ld b, a ; item
	ld c, 1 ; quantity
	call GiveItem
	jr nc, .BagFull

	ldh a, [hMissableObjectIndex]
	ld [wMissableObjectIndex], a
;;;;;;;;;; PureRGBnote: CHANGED: in certain maps hidable items use a different set of flags than everywhere else, needed more space for flags.
	CheckEvent EVENT_IN_EXTRA_MISSABLE_OBJECTS_MAP
	jr nz, .hideExtra
	predef HideObject
	jr .continue
.hideExtra
	predef HideExtraObject
.continue
;;;;;;;;;;
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, FoundItemText
	jr .print

.BagFull
	ld hl, NoMoreRoomForItemText
.print
	call PrintText
	ret
.noObject
	pop bc
	ret

FoundItemText:
	text_far _FoundItemText
	sound_get_item_1
	text_end

NoMoreRoomForItemText:
	text_far _NoMoreRoomForItemText
	text_end
