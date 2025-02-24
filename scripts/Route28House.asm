Route28House_Script:
	jp EnableAutoTextBoxDrawing

Route28House_TextPointers:
	def_text_pointers
	dw MrHyperText

	text_end

MrHyperText:
	text_asm
	call SaveScreenTilesToBuffer2 ; It really doesn't need to be done this early, it just helps.
	
	; This is taken from the Saffron Guards, Cinnabar Fossils, and Celadon Dept Store Roof.
	ld b, BOTTLE_CAP ; Check bag for Bottle Caps. We only need one for this.
	predef GetQuantityOfItemInBag
	ld a, b
	and a
	jp z, .NoBottleCap ; If zero, MrHyper says something else.
	
	ld hl, MrHyperSeesBottleCap ; Otherwise, he perks up.
	call PrintText
	
	call YesNoChoice ; Yes/No Prompt
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .refused
	; Proceed from here if Yes is stated. 
	
	; Here, the party menu pops up and the player picks a Pokemon to juice.
	xor a
	ld [wUpdateSpritesEnabled], a
	ld [wPartyMenuTypeOrMessageID], a
	ld [wMenuItemToSwap], a
	call DisplayPartyMenu
	push af
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	pop af

	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
	ld hl, wNameBuffer
	ld de, wLearnMoveMonName
	ld bc, NAME_LENGTH
	call CopyData
	
	; DV increasing process.
	; Thanks to Vimescarrot for giving me pointers on this!
	ld a, [wWhichPokemon] ; Find the Pokemon's position in party.
	ld hl, wPartyMon1DVs ; Load DVs into hl

	ld bc, wPartyMon2 - wPartyMon1 ; This gets to the right slot for DVs
	call AddNTimes ; Gets us there
	; check if already maxed
	ld b, h ; store beginning address
	ld c, l
	ld a, [hli] ; Attack + Defence
	cp a, %11111111
	jr nz, .train ; at least one stat isnt maxed
	ld a, [hl] ; Speed + Special
	cp a, %11111111
	jr z, .alreadyTrained ; all stats were maxed
.train
	ld h, b ; restore address
	ld l, c
	ld a, %11111111 ; Load FFFF FFFF, perfect 15s
	ld [hli], a ; Load 1111 to Attack + Defence
	ld [hl], a ; Now load 1111 to Speed + Special
; Recalc the stats (Thanks, ZetaPheonix!)
ld a, 0 
ld [wMonDataLocation], a
call LoadMonData
ld a, [wWhichPokemon]
ld hl, wPartyMons
ld bc, wPartyMon2 - wPartyMon1
call AddNTimes
push hl
ld bc, wPartyMon1Level - wPartyMon1
add hl, bc ; hl now points to level
ld a, [hl] ; a = level
ld [wCurEnemyLevel], a ; store level
pop hl
ld bc, wPartyMon1Stats - wPartyMon1
add hl, bc
ld d, h
ld e, l ; de now points to stats
ld bc, (wPartyMon1Exp + 2) - wPartyMon1Stats
add hl, bc ; hl now points to LSB of experience
ld b, 1
call CalcStats ; recalculate stats

	ld hl, MrHyperDone
	call PrintText
	; Bottle Cap removal service
	ld hl, BottleCapList ; Load a list of Bottle Cap items. This is the same code as the Saffron Guard.
.loop
	ld a, [hli]
	ldh [hItemToRemoveID], a
	and a
	ret z
	push hl
	ld b, a
	call IsItemInBag
	pop hl
	jr z, .loop
	farcall RemoveItemByID
	jr .done
.NoBottleCap
	ld hl, MrHyperNoCap
	call PrintText
	jr .done
.refused
	ld hl, MrHyperNo
	call PrintText
	jr .done
.alreadyTrained
	ld hl, MrHyperAlreadyTrained
	call PrintText
	jr .done
.done
	jp TextScriptEnd

; This list is loaded for the Bottle Cap removal script, it otherwise didn't work properly.
BottleCapList:
	db BOTTLE_CAP
	;db GOLD_BOTTLE_CAP if you ever want to add Gold Bottle caps, you can chuck that in here.
	db 0 ; end

; These are text pointers for the script to load.
MrHyperNoCap:
	text_far _MrHyperText
	text_end

MrHyperSeesBottleCap:
	text_far _MrHyperSeesBottleCap
	text_end

MrHyperYes:
	text_far _MrHyperYes
	text_end

MrHyperNo:
	text_far _MrHyperNo
	text_end

MrHyperDone:
	sound_level_up
	text_far _MrHyperDone
	text_end

MrHyperAlreadyTrained:
	text_far _MrHyperAlreadyTrained
	text_end