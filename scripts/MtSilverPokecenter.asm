MtSilverPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

MtSilverPokecenter_TextPointers:
	def_text_pointers
	dw_const MtSilverPokecenterNurseText,            TEXT_MTSILVERPOKECENTER_NURSE
	dw_const MtSilverPokecenterLinkReceptionistText, TEXT_MTSILVERPOKECENTER_LINK_RECEPTIONIST
	dw_const MtSilverPokecenterChanseyText,          TEXT_MTSILVERPOKECENTER_CHANSEY

MtSilverPokecenterNurseText:
	script_pokecenter_nurse

MtSilverPokecenterLinkReceptionistText:
	script_cable_club_receptionist

MtSilverPokecenterChanseyText:
	text_asm
	ld hl, .Text
	call PrintText
	ld a, CHANSEY
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

.Text:
	text_far _MtSilverPokecenterChanseyText
	text_end