; PureRGBnote: CHANGED: teleport was changed to switch the pokemon out in battle
_TeleportEffect::	
	ldh a, [hWhoseTurn]
	and a
	jr nz, .handleEnemy
	call CheckCanForceSwitch
	jp z, .failed
	xor a
	ld [wAnimationType], a
	ld a, [wPlayerMoveNum]
	ld hl, TeleportedAwayText
	call .playAnimAndPrintText
	; need to save a bunch of values because we're going to switch pokemon BEFORE applying a heal effect
	ldh a, [hWhoseTurn]
	push af
	ld a, [wPlayerMonNumber]
	push af
	ld a, [wPlayerMoveNum]
	push af
	call SaveScreenTilesToBuffer1
	callfar ChooseNextMon
	pop af
	ld [wPlayerMoveNum], a
	pop af
	ld d, a
	pop af
	ld b, a
	ldh a, [hWhoseTurn]
	push af
	ld a, b
	ldh [hWhoseTurn], a
	pop af
	ldh [hWhoseTurn], a
	xor a
	ld [wPlayerMoveNum], a
	ret
.handleEnemy
	ld a, [wIsInBattle]
	dec a
	jr z, .wildBattle
	; not wild battle
	call CheckCanForceSwitch
	jr z, .failed
	xor a
	ld [wAnimationType], a
	ld a, [wEnemyMoveNum]
	ld hl, TeleportedAwayText
	call .playAnimAndPrintText
	jp SwitchEnemyMonNoText
.wildBattle
	ld a, [wBattleMonLevel]
	ld b, a
	ld a, [wCurEnemyLevel]
	cp b
	jr nc, .runAwaySuccessful
	add b
	ld c, a
	inc c
	ld d, b
	ld e, c
	callfar TeleportWildPokemon
	jr c, .failed
.runAwaySuccessful
	callfar ReadPlayerMonCurHPAndStatus
	xor a
	ld [wAnimationType], a
	inc a
	ld [wEscapedFromBattle], a
	ld a, [wEnemyMoveNum]
	ld hl, RanFromBattleText
.playAnimAndPrintText
	push hl
	ld [wAnimationID], a
	callfar PlayBattleAnimationGotID
	ld c, 20
	call DelayFrames
	; pop af
	pop hl
	jp PrintText
.failed
	ld c, 50
	call DelayFrames
	jpfar PrintButItFailedText_

TeleportedAwayText:
	text_far _TeleportedAwayText
	text_end

; returns nz if the player/opponent can switch
CheckCanForceSwitch::
	ldh a, [hWhoseTurn]
	and a
	ld a, [wPartyCount]
	ld hl, wPartyMon1HP
	ld bc, wPartyMon2 - wPartyMon1 - 1
	jr z, CheckCanForceSwitchEnemy.playerTurn
CheckCanForceSwitchEnemy::
	ld a, [wEnemyPartyCount]
	ld hl, wEnemyMon1HP
	ld bc, wEnemyMon2 - wEnemyMon1 - 1
.playerTurn
	ld e, a
	ld d, a
.partyMonsLoop
	xor a
	or [hl]
	inc hl
	or [hl]
	jr nz, .skipDec
	dec d
.skipDec
	add hl, bc
	dec e
	jr nz, .partyMonsLoop
	ld a, d
	dec a ; don't count current pokemon
	ret

SwitchEnemyMonNoText:
; prepare to withdraw the active monster: copy hp, number, and status to roster

	ld a, [wEnemyMonPartyPos]
	ld hl, wEnemyMon1HP
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld d, h
	ld e, l
	ld hl, wEnemyMonHP
	ld bc, 4
	call CopyData

	; This wFirstMonsNotOutYet variable is abused to prevent the player from
	; switching in a new mon in response to this switch.
	ld a, 1
	ld [wFirstMonsNotOutYet], a
	callfar EnemySendOut
	xor a
	ld [wFirstMonsNotOutYet], a

	ld a, [wLinkState]
	cp LINK_STATE_BATTLING
	ret z
	scf
	ret