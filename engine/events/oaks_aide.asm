OaksAideScript:
	ld hl, wOaksAideRequirement
	ld a, [hli]
	ld d, a
	ld a, [hl]
	ld [wOaksAideRequirement], a
	ld [hl], d
	ld hl, OaksAideHiText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .choseNo
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	ld [wOaksAideNumMonsOwned + 1], a
	ld a, [wNumSetBits + 1]
	ld [wOaksAideNumMonsOwned], a
	ld a, [wOaksAideNumMonsOwned]
	ld b, a
	ld a, [wOaksAideRequirement]
	cp b
	jr c, .giveItem
	jr nz, .notEnoughOwnedMons
	ld a, [wOaksAideNumMonsOwned + 1]
	ld b, a
	ld a, [wOaksAideRequirement + 1]
	cp b
	jr z, .giveItem
	jr nc, .notEnoughOwnedMons
.giveItem
	ld hl, OaksAideHereYouGoText
	call PrintText
	ldh a, [hOaksAideRewardItem]
	ld b, a
	ld c, 1
	call GiveItem
	jr nc, .bagFull
	ld hl, OaksAideGotItemText
	call PrintText
	ld a, OAKS_AIDE_GOT_ITEM
	jr .done
.bagFull
	ld hl, OaksAideNoRoomText
	call PrintText
	xor a ; OAKS_AIDE_BAG_FULL
	jr .done
.notEnoughOwnedMons
	ld hl, OaksAideUhOhText
	call PrintText
	ld a, OAKS_AIDE_NOT_ENOUGH_MONS
	jr .done
.choseNo
	ld hl, OaksAideComeBackText
	call PrintText
	ld a, OAKS_AIDE_REFUSED
.done
	ldh [hOaksAideResult], a
	ret

OaksAideHiText:
	text_far _OaksAideHiText
	text_end

OaksAideUhOhText:
	text_far _OaksAideUhOhText
	text_end

OaksAideComeBackText:
	text_far _OaksAideComeBackText
	text_end

OaksAideHereYouGoText:
	text_far _OaksAideHereYouGoText
	text_end

OaksAideGotItemText:
	text_far _OaksAideGotItemText
	sound_get_item_1
	text_end

OaksAideNoRoomText:
	text_far _OaksAideNoRoomText
	text_end
