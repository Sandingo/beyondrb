Route16Gate2F_Script:
	jp DisableAutoTextBoxDrawing

Route16Gate2F_TextPointers:
	def_text_pointers
	dw_const Route16Gate2FLittleBoyText,       TEXT_ROUTE16GATE2F_LITTLE_BOY
	dw_const Route16Gate2FLittleGirlText,      TEXT_ROUTE16GATE2F_LITTLE_GIRL
	dw_const Route16Gate2FOaksAideText,		   TEXT_ROUTE16GATE2F_AIDE
	dw_const Route16Gate2FLeftBinocularsText,  TEXT_ROUTE16GATE2F_LEFT_BINOCULARS
	dw_const Route16Gate2FRightBinocularsText, TEXT_ROUTE16GATE2F_RIGHT_BINOCULARS

Route16Gate2FLittleBoyText:
	text_asm
	ld hl, .Text
	call PrintText
	jp TextScriptEnd

.Text:
	text_far _Route16Gate2FLittleBoyText
	text_end

Route16Gate2FLittleGirlText:
	text_asm
	ld hl, .Text
	call PrintText
	jp TextScriptEnd

.Text:
	text_far _Route16Gate2FLittleGirlText
	text_end

Route16Gate2FLeftBinocularsText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _Route16Gate2FLeftBinocularsText
	text_end

Route16Gate2FRightBinocularsText:
	text_asm
	ld hl, .Text
	jp GateUpstairsScript_PrintIfFacingUp

.Text:
	text_far _Route16Gate2FRightBinocularsText
	text_end

Route16Gate2FOaksAideText:
	text_asm
	CheckEvent EVENT_GOT_AMULET_COIN
	jr nz, .got_item
	ld a, 40
	ldh [hOaksAideRequirement], a
	ld a, AMULET_COIN
	ldh [hOaksAideRewardItem], a
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, wNameBuffer
	ld de, wOaksAideRewardItemName
	ld bc, ITEM_NAME_LENGTH
	call CopyData
	predef OaksAideScript
	ldh a, [hOaksAideResult]
	cp OAKS_AIDE_GOT_ITEM
	jr nz, .no_item
	SetEvent EVENT_GOT_AMULET_COIN
.got_item
	ld hl, .AmuletCoinExplanationText
	call PrintText
.no_item
	jp TextScriptEnd

.AmuletCoinExplanationText:
	text_far _Route16Gate2FAmuletCoin
	text_end