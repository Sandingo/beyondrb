; function that displays the start menu - Taken from Pokemon Amaranth
DrawStartMenu::
	CheckEvent EVENT_GOT_TOWN_MAP
	hlcoord 10, 0
	ld b, $10
	ld c, $08
	jr nz, .drawTextBoxBorder
	CheckEvent EVENT_GOT_POKEDEX
; menu with pokedex
	hlcoord 10, 0
	ld b, $0e
	ld c, $08
	jr nz, .drawTextBoxBorder
; shorter menu if the player doesn't have the pokedex
	hlcoord 10, 0
	ld b, $0c
	ld c, $08
.drawTextBoxBorder
	call TextBoxBorder
	ld a, D_DOWN | D_UP | START | B_BUTTON | A_BUTTON
	ld [wMenuWatchedKeys], a
	ld a, $02
	ld [wTopMenuItemY], a ; Y position of first menu choice
	ld a, $0b
	ld [wTopMenuItemX], a ; X position of first menu choice
	ld a, [wBattleAndStartSavedMenuItem] ; remembered menu selection from last time
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	xor a
	ld [wMenuWatchMovingOutOfBounds], a
	ld hl, wStatusFlags5
	set BIT_NO_TEXT_DELAY, [hl]
	hlcoord 12, 2
	CheckEvent EVENT_GOT_TOWN_MAP
	ld a, $08
	jr nz, .printPokedexText ; must have pokedex to get town map
	CheckEvent EVENT_GOT_POKEDEX
	ld a, $07
	jr nz, .printPokedexText
	ld a, $06 ; no pokedex or town map
	jr .storeMenuItemCount
.printPokedexText
	ld de, StartMenuPokedexText
	call PrintStartMenuItem
.storeMenuItemCount
	ld [wMaxMenuItem], a ; number of menu items
	ld de, StartMenuPokemonText
	call PrintStartMenuItem
	ld de, StartMenuItemText
	call PrintStartMenuItem
	; Check to print town map
	CheckEvent EVENT_GOT_TOWN_MAP
	jr z, .printPlayerNameText
	ld de, StartMenuTownMapText
	call PrintStartMenuItem
.printPlayerNameText
	ld de, wPlayerName ; player's name
	call PrintStartMenuItem
	ld a, [wStatusFlags4]
	bit BIT_LINK_CONNECTED, a
; case for not using link feature
	ld de, StartMenuSaveText
	jr z, .printSaveOrResetText
; case for using link feature
	ld de, StartMenuResetText
.printSaveOrResetText
	call PrintStartMenuItem
	ld de, StartMenuOptionText
	call PrintStartMenuItem
	ld de, StartMenuExitText
	call PlaceString
	ld hl, wStatusFlags5
	res BIT_NO_TEXT_DELAY, [hl]
	ret

StartMenuPokedexText:
	db "POKéDEX@"

StartMenuPokemonText:
	db "POKéMON@"

StartMenuItemText:
	db "ITEM@"

StartMenuTownMapText:
	db "MAP@"

StartMenuSaveText:
	db "SAVE@"

StartMenuResetText:
	db "RESET@"

StartMenuExitText:
	db "EXIT@"

StartMenuOptionText:
	db "OPTION@"

PrintStartMenuItem:
	push hl
	call PlaceString
	pop hl
	ld de, SCREEN_WIDTH * 2
	add hl, de
	ret

; prints a short blurb about the
; current selection, just like in GSC
DrawMenuAccount::
; prepare the background
	hlcoord 0, 13
	lb bc, 5, 10
	call ClearScreenArea

; determine which table to use
	ld a, [wStatusFlags4]
	bit BIT_LINK_CONNECTED, a
; use the table replacing "SAVE" with "RESET"
	ld de, StartMenuDescriptionTable.LinkTable
	jr nz, .check_pokedex
; use regular table if we're not in link mode
	CheckEvent EVENT_GOT_TOWN_MAP
	ld de, StartMenuDescriptionTable.GotTownMap
	jr nz, .check_pokedex
	ld de, StartMenuDescriptionTable

.check_pokedex
	CheckEvent EVENT_GOT_POKEDEX
	ld a, [wCurrentMenuItem]
	jr nz, .got_table
; shift one index forwards to reflect the fact that
; we haven't gotten a dex yet
	inc a
.got_table
; select the correct pointer to the entry, and then load
; the entry into the DE register for use as a parameter for PlaceString
	add a
	ld l, a
	ld h, 0
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]

; finally, display the string.
	hlcoord 0, 14
	jp PlaceString

INCLUDE "data/start_menu_descriptions.asm"
