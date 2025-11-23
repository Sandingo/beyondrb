SeafoamIslandsB5F_Script:
	call EnableAutoTextBoxDrawing
	ld a, [wSeafoamIslandsB5FCurScript]
	ld hl, SeafoamIslandsB5F_ScriptPointers
	jp CallFunctionInTable

SeafoamIslandsB5FResetScript:
	xor a
	ld [wSeafoamIslandsB5FCurScript], a
	ld [wJoyIgnore], a
	ret

SeafoamIslandsB5F_ScriptPointers:
	def_script_pointers
	dw_const SeafoamIslandsB5FDefaultScript,       SCRIPT_SEAFOAMISLANDSB5F_DEFAULT
	dw_const SeafoamIslandsB5FObjectMoving3Script, SCRIPT_SEAFOAMISLANDSB5F_OBJECT_MOVING3

SeafoamIslandsB5FDefaultScript:
	ret

SeafoamIslandsB5FObjectMoving3Script:
	ld a, [wIsInBattle]
	cp $ff
	jr z, SeafoamIslandsB5FResetScript
	call EndTrainerBattle
	ld a, SCRIPT_SEAFOAMISLANDSB5F_DEFAULT
	ld [wSeafoamIslandsB5FCurScript], a
	ret

SeafoamIslandsB5F_TextPointers:
	def_text_pointers
	dw_const SeafoamIslandsB5FArticunoText,     TEXT_SEAFOAMISLANDSB5F_ARTICUNO
	dw_const PickUpItemText,					TEXT_SEAFOAMISLANDSB5F_ITEM_1
	dw_const PickUpItemText,					TEXT_SEAFOAMISLANDSB5F_ITEM_2

; Articuno is object 3, but its event flag is bit 2.
; This is not a problem because its sight range is 0, and
; trainer headers were not stored by ExecuteCurMapScriptInTable.
	def_trainers 2
ArticunoTrainerHeader:
	trainer EVENT_BEAT_ARTICUNO, 0, SeafoamIslandsB5FArticunoBattleText, SeafoamIslandsB5FArticunoBattleText, SeafoamIslandsB5FArticunoBattleText
	db -1 ; end

SeafoamIslandsB5FArticunoText:
	text_asm
	ld hl, ArticunoTrainerHeader
	call TalkToTrainer
	ld a, SCRIPT_SEAFOAMISLANDSB5F_OBJECT_MOVING3
	ld [wSeafoamIslandsB5FCurScript], a
	jp TextScriptEnd

SeafoamIslandsB5FArticunoBattleText:
	text_far _SeafoamIslandsB5FArticunoBattleText
	text_asm
	ld a, ARTICUNO
	call PlayCry
	call WaitForSoundToFinish
	callfar RollForShiny
	jp TextScriptEnd