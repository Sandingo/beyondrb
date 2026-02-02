FlagActionPredef:
	call GetPredefRegisters

FlagAction:
; Perform action b on bit de
; in the bitfield at hl.
;  0: reset
;  1: set
;  2: read
; Return the result in c.

	push hl
	push de
	push bc

	; bit
	ld a, e
	and 7
	ld c, a

	; byte
REPT 3
	srl e
	srl d
	jr nc, .ok\@
	set 7, e
.ok\@
ENDR
	add hl, de

	; d = 1 << e (bitmask)
	inc c
	ld d, 1
.shift
	dec c
	jr z, .shifted
	sla d
	jr .shift
.shifted

	ld a, b
	and a
	jr z, .reset
	cp 2
	jr z, .read

.set
	ld b, [hl]
	ld a, d
	or b
	ld [hl], a
	jr .done

.reset
	ld b, [hl]
	ld a, d
	xor $ff
	and b
	ld [hl], a
	jr .done

.read
	ld b, [hl]
	ld a, d
	and b
.done
	pop bc
	pop de
	pop hl
	ld c, a
	ret

Set16BitFlag:
; input: de = flag index, hl = flag data
	ld bc, $20
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

Test16BitFlag:
; input: de = flag index, hl = flag data
	ld bc, $20
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
	bit 7, [hl]
	jr .end
.check6
	cp 6
	jr nz, .check5
	bit 6, [hl]
	jr .end
.check5
	cp 5
	jr nz, .check4
	bit 5, [hl]
	jr .end
.check4
	cp 4
	jr nz, .check3
	bit 3, [hl]
	jr .end
.check3
	cp 3
	jr nz, .check2
	bit 3, [hl]
	jr .end
.check2
	cp 2
	jr nz, .check1
	bit 2, [hl]
	jr .end
.check1
	cp 1
	jr nz, .zero
	bit 1, [hl]
	jr .end
.zero
	bit 0, [hl]
.end
	jr z, .flagNotSet
	ld c, 1
	ret
.flagNotSet
	ld c, 0
	ret