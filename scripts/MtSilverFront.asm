MtSilverFront_Script:
	jp EnableAutoTextBoxDrawing

MtSilverFront_TextPointers:
	def_text_pointers
	dw_const MtSilverFrontSignText,      TEXT_MTSILVERFRONT_SIGN
	dw_const PokeCenterSignText,         TEXT_MTSILVERFRONT_POKECENTER_SIGN
	
MtSilverFrontSignText:
	text_far _MtSilverFrontSignText
	text_end