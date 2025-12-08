FuchsiaMeetingRoom_Script:
	call EnableAutoTextBoxDrawing
	ret

FuchsiaMeetingRoom_TextPointers:
	def_text_pointers
	dw_const FuchsiaMeetingRoomSafariZoneWorker1, TEXT_FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER1
	dw_const FuchsiaMeetingRoomSafariZoneWorker2, TEXT_FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER2
	dw_const FuchsiaMeetingRoomSafariZoneWorker3, TEXT_FUCHSIAMEETINGROOM_SAFARI_ZONE_WORKER3
	dw_const FuchsiaMeetingRoomMysteryBoxWorker, TEXT_FUCHSIAMEETINGROOM_MYSTERY_BOX_WORKER

FuchsiaMeetingRoomSafariZoneWorker1:
	text_far _FuchsiaMeetingRoomSafariZoneWorker1
	text_end

FuchsiaMeetingRoomSafariZoneWorker2:
	text_far _FuchsiaMeetingRoomSafariZoneWorker2
	text_end

FuchsiaMeetingRoomSafariZoneWorker3:
	text_far _FuchsiaMeetingRoomSafariZoneWorker3
	text_end

FuchsiaMeetingRoomMysteryBoxWorker:
	text_asm
	CheckEvent EVENT_GOT_MYSTERY_BOX
	jr z, .hasntGottenBox
	ld hl, .postBoxText
	jr .done
.hasntGottenBox
	ld hl, .preBoxText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .refused
	lb bc, MYSTERY_BOX, 1
	call GiveItem
	jr nc, .bag_full
	SetEvent EVENT_GOT_MYSTERY_BOX
	ld hl, .receivedMysteryBoxText
	jr .done
.bag_full 
	ld hl, .NoRoomText
	jr .done
.refused
	ld hl, .refusedText
.done
	call PrintText
	jp TextScriptEnd

.postBoxText:
	text_far _FuchsiaMeetingRoomSafariZoneWorker4PostBox
	text_end

.preBoxText:
	text_far _FuchsiaMeetingRoomSafariZoneWorker4PreBox
	text_end

.refusedText:
	text_far _FuchsiaMeetingRoomSafariZoneWorker4Refused
	text_end

.receivedMysteryBoxText:
	text_far _FuchsiaMeetingRoomRecievedMysteryBox
	sound_get_item_1
	text_end

.NoRoomText:
	text_far _FuchsiaMeetingRoomNoRoom
	text_end