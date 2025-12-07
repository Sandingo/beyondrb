PrintRedSNESText:
	call EnableAutoTextBoxDrawing
	tx_pre_jump RedBedroomSNESText

RedBedroomSNESText::
	text_far _RedBedroomSNESText
	text_end

OpenRedsPC:
	call EnableAutoTextBoxDrawing
	tx_pre_jump RedBedroomPCText

RedBedroomPCText::
	script_players_pc

PrintSinkText:
	call EnableAutoTextBoxDrawing
	tx_pre_jump RedsMomSinkText

RedsMomSinkText::
	text_far _RedsMomSinkText
	text_end