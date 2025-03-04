GetMonName::
	push hl
	ldh a, [hLoadedROMBank]
	push af
	ld a, BANK(MonsterNames)
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	ld a, [wNamedObjectIndex]
	dec a
	ld hl, MonsterNames
	ld c, NAME_LENGTH - 1
	ld b, 0
	call AddNTimes
	ld de, wNameBuffer
	push de
	ld bc, NAME_LENGTH - 1
	call CopyData
	ld hl, wNameBuffer + NAME_LENGTH - 1
	ld [hl], "@"
	pop de
	pop af
	ldh [hLoadedROMBank], a
	ld [MBC1RomBank], a
	pop hl
	ret

GetItemName::
; given an item ID at [wNamedObjectIndex], store the name of the item in wNameBuffer
	push hl
	push bc
	ld a, ITEM_NAME
	ld [wNameListType], a
	ld a, [wNamedObjectIndex]
	ld [wNameListIndex], a
	cp HM01 ; is this a TM/HM?
	jr nc, .Machine

	ld a, BANK(ItemNames)
	jr .Finish

.Machine
	ld a, BANK(TmhmNames)
.Finish
	ld [wPredefBank], a
	call GetName
	ld de, wNameBuffer
	pop bc
	pop hl
	ret

; sets carry if item is HM, clears carry if item is not HM
; Input: a = item ID
IsItemHM::
	cp HM01
	jr c, .notHM
	cp TM01
	ret
.notHM
	and a
	ret

; sets carry if move is an HM, clears carry if move is not an HM
; Input: a = move ID
IsMoveHM::
	ld hl, HMMoves
	ld de, 1
	jp IsInArray

HMMoves::
INCLUDE "data/moves/hm_moves.asm"

GetMoveName::
	push hl
	ld a, MOVE_NAME
	ld [wNameListType], a
	ld a, [wNamedObjectIndex]
	ld [wNameListIndex], a
	ld a, BANK(MoveNames)
	ld [wPredefBank], a
	call GetName
	ld de, wNameBuffer
	pop hl
	ret
