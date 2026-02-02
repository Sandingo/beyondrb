_GivePokemon::
; returns success in carry
; and whether the mon was added to the party in [wAddedToParty]
	call EnableAutoTextBoxDrawing
	xor a
	ld [wAddedToParty], a
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr c, .addToParty
	ld a, [wBoxCount]
	cp MONS_PER_BOX
	jr nc, .boxFull
; add to box
	xor a
	ld [wEnemyBattleStatus3], a
	ld a, [wCurPartySpecies]
	ld [wEnemyMonSpecies2], a
	ld a, [wCurPartySpecies + 1]
	ld [wEnemyMonSpecies2 + 1], a
	callfar LoadEnemyMonData
	call SetPokedexOwnedFlag
	callfar SendNewMonToBox
	ld hl, wStringBuffer
	ld a, [wCurrentBoxNum]
	and $7f
	cp 9
	jr c, .singleDigitBoxNum
	sub 9
	ld [hl], "1"
	inc hl
	add "0"
	jr .next
.singleDigitBoxNum
	add "1"
.next
	ld [hli], a
	ld [hl], "@"
	ld hl, SentToBoxText
	call PrintText
	scf
	ret
.boxFull
	ld hl, BoxIsFullText
	call PrintText
	and a
	ret
.addToParty
	call SetPokedexOwnedFlag
	call AddPartyMon
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld [wAddedToParty], a
	scf
	ret

SetPokedexOwnedFlag:
	ld a, [wCurPartySpecies]
	ld e, a
	ld a, [wCurPartySpecies + 1]
	ld d, a
	push de
	ld [wPokedexNum + 1], a
	ld a, e
	ld [wPokedexNum], a
	predef IndexToPokedex
	ld a, [wPokedexNum]
	ld e, a
	ld a, [wPokedexNum + 1]
	ld d, a
	dec de
	ld hl, wPokedexOwned
	call .SetFlag
	pop de
	ld a, e
	ld [wNamedObjectIndex], a
	ld a, d
	ld [wNamedObjectIndex + 1], a
	call GetMonName
	ld hl, GotMonText
	jp PrintText

.SetFlag:
; input: de = flag index, hl = flag data
	ld bc, $100 / 8
	ld a, d
.loop
	and a
	jr z, .next
	add hl, bc
	dec a
	jr .loop
.next
	ld a, e
	srl a
	srl a
	srl a
	ld b, 0
	ld c, a
	add hl, bc
	ld a, e
	and %111
	cp 7
	jr nz, .check6
	set 7, [hl]
	ret
.check6
	cp 6
	jr nz, .check5
	set 6, [hl]
	ret
.check5
	cp 5
	jr nz, .check4
	set 5, [hl]
	ret
.check4
	cp 4
	jr nz, .check3
	set 3, [hl]
	ret
.check3
	cp 3
	jr nz, .check2
	set 3, [hl]
	ret
.check2
	cp 2
	jr nz, .check1
	set 2, [hl]
	ret
.check1
	cp 1
	jr nz, .zero
	set 1, [hl]
	ret
.zero
	set 0, [hl]
	ret


GotMonText:
	text_far _GotMonText
	sound_get_item_1
	text_end

SentToBoxText:
	text_far _SentToBoxText
	text_end

BoxIsFullText:
	text_far _BoxIsFullText
	text_end
