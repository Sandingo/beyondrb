CeladonMansionRoofHouse_Script:
	jp EnableAutoTextBoxDrawing

CeladonMansionRoofHouse_TextPointers:
	def_text_pointers
	dw_const CeladonMansionRoofHouseHikerText,         TEXT_CELADONMANSION_ROOF_HOUSE_HIKER
	dw_const CeladonMansionRoofHouseEeveePokeballText, TEXT_CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL
	dw_const CeladonMansionRoofHousePamphletText,	   TEXT_CELADONMANSION_ROOF_HOUSE_PAMPHLET
	dw_const CeladonMansionRoofHouseSNESText,          TEXT_CELADONMANSION_ROOF_SNES1
	dw_const CeladonMansionRoofHouseSNESText,          TEXT_CELADONMANSION_ROOF_SNES2

CeladonMansionRoofHouseHikerText:
	text_far _CeladonMansionRoofHouseHikerText
	text_end

CeladonMansionRoofHouseEeveePokeballText:
	text_asm
	lb bc, EEVEE, 25
	call GivePokemon
	jr nc, .party_full
	ld a, HS_CELADON_MANSION_EEVEE_GIFT
	ld [wMissableObjectIndex], a
	predef HideObject
.party_full
	jp TextScriptEnd

CeladonMansionRoofHousePamphletText:
	text_far TMNotebookText
	text_end

CeladonMansionRoofHouseSNESText:
	text_far _CeladonMansionRoofHouseSnesText
	text_end