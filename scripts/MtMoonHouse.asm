MtMoonHouse_Script:
	jp EnableAutoTextBoxDrawing

MtMoonHouse_TextPointers:
	def_text_pointers
	dw_const MtMoonHouseManText,      TEXT_MTMOONHOUSE_MAN
	
MtMoonHouseManText:
	text_far _MtMoonHouseManText
	text_end