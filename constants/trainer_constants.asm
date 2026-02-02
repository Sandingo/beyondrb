DEF OPP_ID_OFFSET EQU 200

MACRO trainer_const
	const \1
	DEF OPP_\1 EQU OPP_ID_OFFSET + \1
ENDM

; trainer class ids
; indexes for:
; - TrainerNames (see data/trainers/names.asm)
; - TrainerNamePointers (see data/trainers/name_pointers.asm)
; - TrainerDataPointers (see data/trainers/parties.asm)
; - TrainerPicAndMoneyPointers (see data/trainers/pic_pointers_money.asm)
; - TrainerAIPointers (see data/trainers/ai_pointers.asm)
; - TrainerClassMoveChoiceModifications (see data/trainers/move_choices.asm)
	const_def
	const NOBODY         ; $00
	const YOUNGSTER      ; $01
	const BUG_CATCHER    ; $02
	const LASS           ; $03
	const SAILOR         ; $04
	const JR_TRAINER_M   ; $05
	const JR_TRAINER_F   ; $06
	const POKEMANIAC     ; $07
	const SUPER_NERD     ; $08
	const HIKER          ; $09
	const BIKER          ; $0A
	const BURGLAR        ; $0B
	const ENGINEER       ; $0C
	const IMAKUNI		 ; $0D
	const FISHER         ; $0E
	const SWIMMER_M        ; $0F
	const CUE_BALL       ; $10
	const GAMBLER        ; $11
	const BEAUTY         ; $12
	const PSYCHIC_TR     ; $13
	const ROCKER         ; $14
	const JUGGLER        ; $15
	const TAMER          ; $16
	const BIRD_KEEPER    ; $17
	const BLACKBELT      ; $18
	const RIVAL1         ; $19
	const PROF_OAK       ; $1A
	const CHIEF          ; $1B
	const SCIENTIST      ; $1C
	const GIOVANNI       ; $1D
	const ROCKET         ; $1E
	const COOLTRAINER_M  ; $1F
	const COOLTRAINER_F  ; $20
	const BRUNO          ; $21
	const BROCK          ; $22
	const MISTY          ; $23
	const LT_SURGE       ; $24
	const ERIKA          ; $25
	const KOGA           ; $26
	const BLAINE         ; $27
	const SABRINA        ; $28
	const GENTLEMAN      ; $29
	const RIVAL2         ; $2A
	const RIVAL3         ; $2B
	const LORELEI        ; $2C
	const CHANNELER      ; $2D
	const AGATHA         ; $2E
	const LANCE          ; $2F
	const MINA
	const HITECH_JACK
	const ARCHER
	const KYLE
	const KOICHI
	const SWIMMER_F
DEF NUM_TRAINERS EQU const_value - 1
