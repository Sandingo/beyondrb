CeladonMansion2F_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonMansion2F_TextScriptEndingText:
	text_end

CeladonMansion2F_TextPointers:
	def_text_pointers
	dw_const CeladonMansion2FTradeGuyText,        TEXT_CELADONMANSION2F_TRADEGUY
	dw_const CeladonMansion2FMeetingRoomSignText, TEXT_CELADONMANSION2F_MEETING_ROOM_SIGN

CeladonMansion2FTradeGuyText:
	text_asm
	ld a, TRADE_FOR_STINKUMS_SPOOKIT
	ld [wWhichTrade], a
	predef DoInGameTradeDialogue
	jp TextScriptEnd

CeladonMansion2FMeetingRoomSignText:
	text_far _CeladonMansion2FMeetingRoomSignText
	text_end
