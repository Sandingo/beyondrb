AerodactylFossil:
	ld a, LOW(FOSSIL_AERODACTYL)
	ld [wCurPartySpecies], a
	ld a, HIGH(FOSSIL_AERODACTYL)
	ld [wCurPartySpecies + 1], a
	call DisplayMonFrontSpriteInBox
	call EnableAutoTextBoxDrawing
	tx_pre AerodactylFossilText
	ret

AerodactylFossilText::
	text_far _AerodactylFossilText
	text_end

KabutopsFossil:
	ld a, LOW(FOSSIL_KABUTOPS)
	ld [wCurPartySpecies], a
	ld a, HIGH(FOSSIL_KABUTOPS)
	ld [wCurPartySpecies + 1], a
	call DisplayMonFrontSpriteInBox
	call EnableAutoTextBoxDrawing
	tx_pre KabutopsFossilText
	ret

KabutopsFossilText::
	text_far _KabutopsFossilText
	text_end

DisplayMonFrontSpriteInBox:
; Displays a pokemon's front sprite in a pop-up window.
	ld a, 1
	ldh [hAutoBGTransferEnabled], a
	call Delay3
	xor a
	ldh [hWY], a
	call SaveScreenTilesToBuffer1
	ld a, MON_SPRITE_POPUP
	ld [wTextBoxID], a
	call DisplayTextBoxID
	call UpdateSprites
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	ld a, [wCurPartySpecies + 1]
	ld [wCurSpecies + 1], a
	call GetMonHeader
	ld de, vChars1 tile $31
	call LoadMonFrontSprite
	ld a, $80
	ldh [hStartTileID], a
	hlcoord 10, 11
	predef AnimateSendingOutMon
	call WaitForTextScrollButtonPress
	call LoadScreenTilesFromBuffer1
	call Delay3
	ld a, $90
	ldh [hWY], a
	ret
