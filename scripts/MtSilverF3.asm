MtSilverF3_Script:
	jp EnableAutoTextBoxDrawing

MtSilverF3_TextPointers:
	def_text_pointers
	dw_const PickUpItemText,	   TEXT_MTSILVERF3_MAXELIXIR
	dw_const PickUpItemText,	   TEXT_MTSILVERF3_MAXREVIVE
	dw_const PickUpItemText,	   TEXT_MTSILVERF3_PROTEIN
	dw_const PickUpItemText,	   TEXT_MTSILVERF3_CALCIUM

	text_end ; unused