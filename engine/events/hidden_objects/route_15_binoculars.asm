Route15GateLeftBinoculars:
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp SPRITE_FACING_UP
	ret nz
	call EnableAutoTextBoxDrawing
	tx_pre Route15UpstairsBinocularsText
	ld a, LOW(ARTICUNO)
	ld [wCurPartySpecies], a
	ld a, HIGH(ARTICUNO)
	ld [wCurPartySpecies + 1], a
	call PlayCry
	jp DisplayMonFrontSpriteInBox

Route15UpstairsBinocularsText::
	text_far _Route15UpstairsBinocularsText
	text_end
