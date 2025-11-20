BorderPalettes:
IF DEF(_RED)
	INCBIN "gfx/sgb/red_border.tilemap"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/blue_border.tilemap"
ENDC

	ds $100

IF DEF(_RED) ; Cards - PAL_SGB1
	RGB 31,31,31 ; White
	RGB 26,12,0 ; Red-Orange
	RGB 31,14,23 ; Red
;	RGB 31,28,14 ; Yellow
	RGB 6,8,8	 ; Black
ENDC
IF DEF(_BLUE)	; PAL_SGB1 (the first color is not defined, but if used, turns up as 30,29,29... o_O)
	RGB 31,31,31 ; White
	RGB 20,26,31 ; Light Blue
	RGB 12,15,27 ; Dark Blue
	RGB 6,8,8	 ; Black
ENDC

	ds $18

IF DEF(_RED) ; Clefairy Colors - PAL_SGB2
	RGB 31,31,31 ; White
	RGB 26,18,19 ; Pink
	RGB 17,26,17 ; Green
	RGB 6,8,8	 ; Black
ENDC
IF DEF(_BLUE)
	RGB 31,31,31 ; White
	RGB 26,18,19 ; Pink
	RGB 17,26,17 ; Green
	RGB 6,8,8	 ; Black
ENDC

	ds $18

IF DEF(_RED) ; Rhydon Colors - PAL_SGB3
	RGB 31,31,31 ; White
	RGB 20,26,31 ; Light Blue
	RGB 12,15,27 ; Dark Blue
	RGB 6,8,8	 ; Black
ENDC
IF DEF(_BLUE)
	RGB 31,31,31 ; White
	RGB 31,14,23 ; Red
	RGB 31,28,14 ; Yellow
	RGB 6,8,8	 ; Black
ENDC

	ds $18

SGBBorderGraphics:
IF DEF(_RED)
	INCBIN "gfx/sgb/red_border.2bpp"
ENDC
IF DEF(_BLUE)
	INCBIN "gfx/sgb/blue_border.2bpp"
ENDC
