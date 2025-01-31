MtMoonSquare_Script:
	jp EnableAutoTextBoxDrawing

MtMoonSquare_TextPointers:
	def_text_pointers
	dw_const MtMoonSquareClefairyText,  TEXT_MTMOONSQUARE_CLEFAIRY
	dw_const MtMoonSquareSignText,      TEXT_MTMOONSQUARE_SIGN
	
	
MtMoonSquareClefairyText:
	text_asm
	CheckEvent EVENT_MTMOONSQUARE_MOON_STONE
	jr nz, .already_got
	ld hl, .MtMoonSquareClefairyCry
	call PrintText
	ld a, CLEFAIRY
	call PlayCry
	call WaitForSoundToFinish
	call WaitForTextScrollButtonPress
	ld hl, .MtMoonSquareHmText
	call PrintText
	call WaitForTextScrollButtonPress
	lb bc, MOON_STONE, 1
	call GiveItem
	jr nc, .BagFull
	SetEvent EVENT_MTMOONSQUARE_MOON_STONE
	ld hl, .MtMoonSquareGotMoonStone
	call PrintText
	jr .done
.already_got
	ld hl, .MtMoonSquareClefairyCry2
	call PrintText
	ld a, CLEFAIRY
	call PlayCry
	call WaitForSoundToFinish
	jr .done
.BagFull
	ld hl, .MtMoonSquareBagFull
	call PrintText
.done
	jp TextScriptEnd

.MtMoonSquareClefairyCry:
	text_far _MtMoonSquareClefairyCry
	text_end
	
.MtMoonSquareClefairyCry2:
	text_far _MtMoonSquareClefairyCry2
	text_end

.MtMoonSquareHmText
	text_far _MtMoonSquareHmText
	text_end

.MtMoonSquareGotMoonStone:
	text_far _MtMoonSquareGotMoonStone
	sound_get_item_1
	text_end

.MtMoonSquareBagFull:
	text_far _MtMoonSquareBagFull
	text_end

MtMoonSquareSignText:
	text_far _MtMoonSquareSignText
	text_end
	
