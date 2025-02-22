TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
IF DEF(_RED)
	db SCYTHER,    PINSIR,    TRADE_DIALOGSET_CASUAL,    "PLUCKY@@@@@"
	db ELECTABUZZ, MAGMAR,    TRADE_DIALOGSET_CASUAL,    "FLAMEO@@@@@"
	db GROWLITHE,  VULPIX,    TRADE_DIALOGSET_HAPPY,     "FOXY@@@@@@@"
	db ODDISH,     BELLSPROUT,TRADE_DIALOGSET_HAPPY,     "SPROUTS@@@@"
	db PAPYO,      BUHI,      TRADE_DIALOGSET_HAPPY,     "SPOOKIT@@@@"
ENDC
IF DEF(_BLUE)
	db PINSIR,     SCYTHER,   TRADE_DIALOGSET_CASUAL,    "STRYKE@@@@@"
	db MAGMAR,     ELECTABUZZ,TRADE_DIALOGSET_CASUAL,    "LIGHTNI@@@@"
	db VULPIX,     GROWLITHE, TRADE_DIALOGSET_HAPPY,     "FIDO@@@@@@@"
	db BELLSPROUT, ODDISH,    TRADE_DIALOGSET_HAPPY,     "DOTTY@@@@@@"
	db BUHI,       PAPYO,     TRADE_DIALOGSET_HAPPY,     "STINKUMS@@@"
ENDC
	db ABRA,       MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MARCEL@@@@@"
	db BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,     "CHIKUCHIKU@" ; unused
	db SPEAROW,    FARFETCHD, TRADE_DIALOGSET_HAPPY,     "DUX@@@@@@@@"
	db SLOWBRO,    LICKITUNG, TRADE_DIALOGSET_CASUAL,    "MARC@@@@@@@"
	db POLIWHIRL,  JYNX,      TRADE_DIALOGSET_EVOLUTION, "LOLA@@@@@@@"
	db RAICHU,     ELECTRODE, TRADE_DIALOGSET_EVOLUTION, "DORIS@@@@@@"
	db PIKACHU,    PSYDUCK,   TRADE_DIALOGSET_CASUAL,	 "QUAX@@@@@@@"
	db NO_MON,     NO_MON, 	  TRADE_DIALOGSET_SELF,   	 "Unseen@@@@@"
	assert_table_length NUM_NPC_TRADES
