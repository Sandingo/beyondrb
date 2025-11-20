PrizeDifferentMenuPtrs:
	dw PrizeMenuMon1Entries, PrizeMenuMon1Cost
	dw PrizeMenuMon2Entries, PrizeMenuMon2Cost
	dw PrizeMenuTMs1Entries,  PrizeMenuTMs1Cost
	dw PrizeMenuTMs2Entries,  PrizeMenuTMs2Cost

NoThanksText:
	db "NO THANKS@"

PrizeMenuMon1Entries:
	db ABRA
	db CLEFAIRY
IF DEF(_RED)
	db SANDSHREW
ENDC
IF DEF(_BLUE)
	db EKANS
ENDC
	db "@"

PrizeMenuMon1Cost:
	bcd2 120
	bcd2 500
	bcd2 1200
	db "@"

PrizeMenuMon2Entries:
IF DEF(_RED)
	db SCYTHER
	db DRATINI
ENDC
IF DEF(_BLUE)
	db PINSIR
	db SKIMPER
ENDC
	db PORYGON
	db "@"

PrizeMenuMon2Cost:
	bcd2 2500
	bcd2 4600
	bcd2 9000
	db "@"

PrizeMenuTMs1Entries:
	db TM_DRAGON_RAGE
	db TM_HYPER_BEAM
	db TM_SUBSTITUTE
	db "@"

PrizeMenuTMs1Cost:
	bcd2 3300
	bcd2 5500
	bcd2 7700
	db "@"

PrizeMenuTMs2Entries:
	db TM_ICE_BEAM
	db TM_THUNDERBOLT
	db TM_FLAMETHROWER
	db "@"

PrizeMenuTMs2Cost:
	bcd2 4000
	bcd2 4000
	bcd2 4000
	db "@"
