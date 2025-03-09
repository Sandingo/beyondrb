SafariZoneExpansion_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneExpansion_TextPointers:
	def_text_pointers
	dw_const SafariZoneExpansionSignText,          TEXT_SAFARIZONEEXPANSION_SIGN

SafariZoneExpansionSignText:
	text_far _SafariZoneExpansionSignText
	text_end