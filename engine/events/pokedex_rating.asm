DisplayDexRating:
	ld hl, wPokedexSeen
	ld b, wPokedexSeenEnd - wPokedexSeen
	call CountSetBits
	ld a, [wNumSetBits]
	ldh [hDexRatingNumMonsSeen + 1], a
	ld a, [wNumSetBits + 1]
	ldh [hDexRatingNumMonsSeen], a
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	ldh [hDexRatingNumMonsOwned + 1], a
	ld a, [wNumSetBits + 1]
	ldh [hDexRatingNumMonsOwned], a
	ld hl, DexRatingsTable
.findRating
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ldh a, [hDexRatingNumMonsOwned + 1]
	ld d, a
	ldh a, [hDexRatingNumMonsOwned]
	ld e, a
	cp b
	jr c, .foundRating
	jr nz, .next
	ld a, d
	cp c
	jr c, .foundRating
.next
	inc hl
	inc hl
	jr .findRating
.foundRating
	ld a, [hli]
	ld h, [hl]
	ld l, a ; load text pointer into hl
	CheckAndResetEventA EVENT_HALL_OF_FAME_DEX_RATING
	jr nz, .hallOfFame
	push hl
	ld hl, DexCompletionText
	call PrintText
	pop hl
	call PrintText
	farcall PlayPokedexRatingSfx
	jp WaitForTextScrollButtonPress
.hallOfFame
	ld de, wDexRatingNumMonsSeen
	ldh a, [hDexRatingNumMonsSeen]
	ld [de], a
	inc de
	ldh a, [hDexRatingNumMonsSeen + 1]
	ld [de], a
	inc de
	ldh a, [hDexRatingNumMonsOwned]
	ld [de], a
	inc de
	ldh a, [hDexRatingNumMonsOwned + 1]
	ld [de], a
	inc de
.copyRatingTextLoop
	ld a, [hli]
	cp "@"
	jr z, .doneCopying
	ld [de], a
	inc de
	jr .copyRatingTextLoop
.doneCopying
	ld [de], a
	ret

DexCompletionText:
	text_far _DexCompletionText
	text_end

DexRatingsTable:
	dw 10, DexRatingText_Own0To9
	dw 20, DexRatingText_Own10To19
	dw 30, DexRatingText_Own20To29
	dw 40, DexRatingText_Own30To39
	dw 50, DexRatingText_Own40To49
	dw 60, DexRatingText_Own50To59
	dw 70, DexRatingText_Own60To69
	dw 80, DexRatingText_Own70To79
	dw 90, DexRatingText_Own80To89
	dw 100, DexRatingText_Own90To99
	dw 120, DexRatingText_Own100To109
	dw 150, DexRatingText_Own110To119
	dw 180, DexRatingText_Own120To129
	dw 200, DexRatingText_Own130To139
	dw 230, DexRatingText_Own140To149
	dw NUM_POKEMON + 1, DexRatingText_Own150To151

DexRatingText_Own0To9:
	text_far _DexRatingText_Own0To9
	text_end

DexRatingText_Own10To19:
	text_far _DexRatingText_Own10To19
	text_end

DexRatingText_Own20To29:
	text_far _DexRatingText_Own20To29
	text_end

DexRatingText_Own30To39:
	text_far _DexRatingText_Own30To39
	text_end

DexRatingText_Own40To49:
	text_far _DexRatingText_Own40To49
	text_end

DexRatingText_Own50To59:
	text_far _DexRatingText_Own50To59
	text_end

DexRatingText_Own60To69:
	text_far _DexRatingText_Own60To69
	text_end

DexRatingText_Own70To79:
	text_far _DexRatingText_Own70To79
	text_end

DexRatingText_Own80To89:
	text_far _DexRatingText_Own80To89
	text_end

DexRatingText_Own90To99:
	text_far _DexRatingText_Own90To99
	text_end

DexRatingText_Own100To109:
	text_far _DexRatingText_Own100To109
	text_end

DexRatingText_Own110To119:
	text_far _DexRatingText_Own110To119
	text_end

DexRatingText_Own120To129:
	text_far _DexRatingText_Own120To129
	text_end

DexRatingText_Own130To139:
	text_far _DexRatingText_Own130To139
	text_end

DexRatingText_Own140To149:
	text_far _DexRatingText_Own140To149
	text_end

DexRatingText_Own150To151:
	text_far _DexRatingText_Own150To151
	text_end
