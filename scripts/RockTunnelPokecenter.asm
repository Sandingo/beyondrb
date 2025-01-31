RockTunnelPokecenter_Script:
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

RockTunnelPokecenter_TextPointers:
	def_text_pointers
	dw_const RockTunnelPokecenterNurseText,            TEXT_ROCKTUNNELPOKECENTER_NURSE
	dw_const RockTunnelPokecenterGentlemanText,        TEXT_ROCKTUNNELPOKECENTER_GENTLEMAN
	dw_const RockTunnelPokecenterFisherText,           TEXT_ROCKTUNNELPOKECENTER_FISHER
	dw_const RockTunnelPokecenterLinkReceptionistText, TEXT_ROCKTUNNELPOKECENTER_LINK_RECEPTIONIST
	dw_const RockTunnelPokecenterChanseyText,          TEXT_ROCKTUNNELPOKECENTER_CHANSEY
	dw_const RockTunnelPokecenterOaksAideText,		   TEXT_ROCKTUNNELPOKECENTER_AIDE

RockTunnelPokecenterNurseText:
	script_pokecenter_nurse

RockTunnelPokecenterGentlemanText:
	text_far _RockTunnelPokecenterGentlemanText
	text_end

RockTunnelPokecenterFisherText:
	text_far _RockTunnelPokecenterFisherText
	text_end

RockTunnelPokecenterLinkReceptionistText:
	script_cable_club_receptionist

RockTunnelPokecenterChanseyText:
	text_asm
	ld hl, .Text
	call PrintText
	ld a, CHANSEY
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd

.Text:
	text_far _RockTunnelPokecenterChanseyText
	text_end

RockTunnelPokecenterOaksAideText:
	text_asm
	CheckEvent EVENT_GOT_EVERSTONE
	jr nz, .got_item
	ld a, 20
	ldh [hOaksAideRequirement], a
	ld a, EVERSTONE
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
	SetEvent EVENT_GOT_EVERSTONE
.got_item
	ld hl, .EverstoneExplanationText
	call PrintText
.no_item
	jp TextScriptEnd

.EverstoneExplanationText:
	text_far _RockTunnelPokecenterOaksAideEverstone
	text_end