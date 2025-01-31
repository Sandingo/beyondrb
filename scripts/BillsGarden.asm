BillsGarden_Script:
	jp EnableAutoTextBoxDrawing

BillsGarden_TextPointers:
	def_text_pointers
	dw_const BillsGardenSignText,      TEXT_BILLSGARDEN_SIGN
	
BillsGardenSignText:
	text_far _BillsGardenSignText
	text_end