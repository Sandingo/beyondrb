TradeMons:
; entries correspond to TRADE_FOR_* constants
	table_width 3 + NAME_LENGTH, TradeMons
	; give mon, get mon, dialog id, nickname
	; The two instances of TRADE_DIALOGSET_EVOLUTION are a leftover
	; from the Japanese Blue trades, which used species that evolve.
	; Japanese Red and Green used TRADE_DIALOGSET_CASUAL, and had
	; the same species as English Red and Blue.
IF DEF(_RED)
	db SCYTHER,    PINSIR,   TRADE_DIALOGSET_CASUAL,     "PLUCKY@@@@@"
ENDC
IF DEF(_BLUE)
	db PINSIR,     SCYTHER,   TRADE_DIALOGSET_CASUAL,    "STRYKE@@@@@"
ENDC
	db ABRA,       MR_MIME,   TRADE_DIALOGSET_CASUAL,    "MARCEL@@@@@"
	db BUTTERFREE, BEEDRILL,  TRADE_DIALOGSET_HAPPY,     "CHIKUCHIKU@" ; unused
	db PONYTA,     SEEL,      TRADE_DIALOGSET_CASUAL,    "SAILOR@@@@@"
	db SPEAROW,    FARFETCHD, TRADE_DIALOGSET_HAPPY,     "DUX@@@@@@@@"
	db SLOWBRO,    LICKITUNG, TRADE_DIALOGSET_CASUAL,    "MARC@@@@@@@"
	db POLIWHIRL,  JYNX,      TRADE_DIALOGSET_EVOLUTION, "LOLA@@@@@@@"
	db RAICHU,     ELECTRODE, TRADE_DIALOGSET_EVOLUTION, "DORIS@@@@@@"
	db VENONAT,    TANGELA,   TRADE_DIALOGSET_HAPPY,     "CRINKLES@@@"
IF DEF(_RED)
	db ODDISH,     BELLSPROUT,TRADE_DIALOGSET_HAPPY,     "SPROUTS@@@@"
ENDC
IF DEF(_BLUE)
	db BELLSPROUT, ODDISH,    TRADE_DIALOGSET_HAPPY,     "DOTTY@@@@@@"
ENDC
	db NO_MON,     NO_MON, 	  TRADE_DIALOGSET_SELF,   	 "Unseen@@@@@"
	assert_table_length NUM_NPC_TRADES
