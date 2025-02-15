SafariZoneCheck::
	CheckEventHL EVENT_IN_SAFARI_ZONE ; if we are not in the Safari Zone,
	jr z, SafariZoneGameStillGoing ; don't bother printing game over text
	ld a, [wNumSafariBalls]
	and a
	jr z, SafariZoneGameOver
	jr SafariZoneGameStillGoing

SafariZoneCheckSteps::
IF DEF(_DEBUG)
	call DebugPressedOrHeldB
	ret nz
ENDC
; Ugly code to make Rest Houses not take away from your steps counter
	ld a, [wCurMap]
	cp SAFARI_ZONE_CENTER_REST_HOUSE
	ret z ;In a rest house!
	ld a, [wCurMap]
	cp SAFARI_ZONE_SECRET_HOUSE
	ret z ;In a rest house!
	ld a, [wCurMap]
	cp SAFARI_ZONE_WEST_REST_HOUSE
	ret z ;In a rest house!
	ld a, [wCurMap]
	cp SAFARI_ZONE_EAST_REST_HOUSE
	ret z ;In a rest house!
	ld a, [wCurMap]
	cp SAFARI_ZONE_NORTH_REST_HOUSE
	ret z ;In a rest house!
; end of ugly code!!
	ld a, [wSafariSteps]
	ld b, a
	ld a, [wSafariSteps + 1]
	ld c, a
	or b
	jr z, SafariZoneGameOver
	dec bc
	ld a, b
	ld [wSafariSteps], a
	ld a, c
	ld [wSafariSteps + 1], a
SafariZoneGameStillGoing:
	xor a
	ld [wSafariZoneGameOver], a
	ret

SafariZoneGameOver:
	call EnableAutoTextBoxDrawing
	xor a
	ld [wAudioFadeOutControl], a
	dec a ; SFX_STOP_ALL_MUSIC
	call PlaySound
	ld c, BANK(SFX_Safari_Zone_PA)
	ld a, SFX_SAFARI_ZONE_PA
	call PlayMusic
.waitForMusicToPlay
	ld a, [wChannelSoundIDs + CHAN5]
	cp SFX_SAFARI_ZONE_PA
	jr nz, .waitForMusicToPlay
	ld a, TEXT_SAFARI_GAME_OVER
	ldh [hTextID], a
	call DisplayTextID
	xor a
	ld [wPlayerMovingDirection], a
	ld a, SAFARI_ZONE_GATE
	ldh [hWarpDestinationMap], a
	ld a, $3
	ld [wDestinationWarpID], a
	ld a, SCRIPT_SAFARIZONEGATE_LEAVING_SAFARI
	ld [wSafariZoneGateCurScript], a
	SetEvent EVENT_SAFARI_GAME_OVER
	ld a, 1
	ld [wSafariZoneGameOver], a
	ret

PrintSafariGameOverText::
	xor a
	ld [wJoyIgnore], a
	ld hl, SafariGameOverText
	jp PrintText

SafariGameOverText:
	text_asm
	ld a, [wNumSafariBalls]
	and a
	jr z, .noMoreSafariBalls
	ld hl, TimesUpText
	call PrintText
.noMoreSafariBalls
	ld hl, GameOverText
	call PrintText
	jp TextScriptEnd

TimesUpText:
	text_far _TimesUpText
	text_end

GameOverText:
	text_far _GameOverText
	text_end
