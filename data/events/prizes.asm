PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMs1Entries,  PrizeMenuTMs1Cost
	dw PrizeMenuTMs2Entries,  PrizeMenuTMs2Cost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	dw ABRA
	dw CLEFAIRY
IF DEF(_RED)
	dw SANDSHREW
ENDC
IF DEF(_BLUE)
	dw EKANS
ENDC
	db "@"

PrizeMenuMon1Cost:
	bcd2 120
	bcd2 500
	bcd2 1200
	db "@"

PrizeMenuMon2Entries:
IF DEF(_RED)
	dw SCYTHER
	dw DRATINI
ENDC
IF DEF(_BLUE)
	dw PINSIR
	dw SKIMPER
ENDC
	dw PORYGON
	db "@"

PrizeMenuMon2Cost:
	bcd2 2500
	bcd2 4600
	bcd2 9000
	db "@"

PrizeMenuTMs1Entries:
	dw TM_DRAGON_RAGE
	dw TM_HYPER_BEAM
	dw TM_SUBSTITUTE
	db "@"

PrizeMenuTMs1Cost:
	bcd2 3300
	bcd2 5500
	bcd2 7700
	db "@"

PrizeMenuTMs2Entries:
	dw TM_ICE_BEAM
	dw TM_THUNDERBOLT
	dw TM_FLAMETHROWER
	db "@"

PrizeMenuTMs2Cost:
	bcd2 4000
	bcd2 4000
	bcd2 4000
	db "@"
