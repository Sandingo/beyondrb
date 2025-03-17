SuperPalettes:
; entries correspond to PAL_* constants
	table_width 2 * 4, SuperPalettes
	RGB 31,29,31, 21,28,11, 20,26,31, 03,02,02 ; PAL_ROUTE
	RGB 31,29,31, 25,28,27, 20,26,31, 03,02,02 ; PAL_PALLET
	RGB 31,29,31, 17,26,03, 20,26,31, 03,02,02 ; PAL_VIRIDIAN
;	RGB 31,29,31, 23,25,16, 20,26,31, 03,02,02 ; PAL_PEWTER_ORIGINAL
	RGB 31,29,31, 26,21,22, 20,26,31, 03,02,02 ; PAL_PEWTER
	RGB 31,29,31, 21,28,11, 20,26,31, 03,02,02 ; PAL_ROUTE_4
	RGB 31,29,31, 17,20,30, 20,26,31, 03,02,02 ; PAL_CERULEAN
	RGB 31,29,31, 21,28,11, 20,26,31, 03,02,02 ; PAL_ROUTE_10
	RGB 31,29,31, 27,20,27, 20,26,31, 03,02,02 ; PAL_LAVENDER
	RGB 31,29,31, 30,18,00, 20,26,31, 03,02,02 ; PAL_VERMILION
	RGB 31,29,31, 16,30,22, 20,26,31, 03,02,02 ; PAL_CELADON
	RGB 31,29,31, 31,15,22, 20,26,31, 03,02,02 ; PAL_FUCHSIA
	RGB 31,29,31, 26,10,06, 20,26,31, 03,02,02 ; PAL_CINNABAR
	RGB 31,29,31, 31,28,14, 20,26,31, 03,02,02 ; PAL_SAFFRON
	RGB 31,29,31, 22,14,24, 20,26,31, 03,02,02 ; PAL_INDIGO
;	RGB 31,29,31, 27,27,03, 20,26,31, 03,02,02 ; PAL_SAFFRON_ORIGINAL
	RGB 31,29,31, 21,28,11, 20,26,31, 03,02,02 ; PAL_ROUTE_28	
	RGB 31,29,31, 31,22,04, 20,26,31, 03,02,02 ; PAL_CITRINE	
	RGB 31,29,31, 20,26,31, 17,23,10, 03,02,02 ; PAL_TOWNMAP
IF DEF(_RED)
	RGB 31,29,31, 30,30,17, 17,23,10, 21,00,04 ; PAL_LOGO1
ENDC
IF DEF(_BLUE)
	RGB 31,29,31, 30,30,17, 21,00,04, 14,19,29 ; PAL_LOGO1
ENDC
	RGB 31,29,31, 30,30,17, 18,18,24, 07,07,16 ; PAL_LOGO2
	RGB 31,29,31, 24,20,30, 11,20,30, 03,02,02 ; PAL_0F
	RGB 31,29,31, 30,22,17, 16,14,19, 03,02,02 ; PAL_MEWMON
	RGB 31,29,31, 18,20,27, 11,15,23, 03,02,02 ; PAL_BLUEMON
	RGB 31,29,31, 31,20,10, 26,10,06, 03,02,02 ; PAL_REDMON
	RGB 31,29,31, 21,25,29, 14,19,25, 03,02,02 ; PAL_CYANMON
	RGB 31,29,31, 27,22,24, 21,15,23, 03,02,02 ; PAL_PURPLEMON
	RGB 31,29,31, 28,20,15, 21,14,09, 03,02,02 ; PAL_BROWNMON
	RGB 31,29,31, 20,26,16, 09,20,11, 03,02,02 ; PAL_GREENMON
	RGB 31,29,31, 30,22,24, 28,15,21, 03,02,02 ; PAL_PINKMON
	RGB 31,29,31, 31,28,14, 26,20,00, 03,02,02 ; PAL_YELLOWMON
	RGB 31,29,31, 26,21,22, 15,15,18, 03,02,02 ; PAL_GRAYMON
	RGB 31,29,31, 23,21,16, 12,12,10, 03,02,02 ; PAL_SHINYGREENMON
	RGB 31,29,31, 22,15,16, 17,02,05, 03,02,02 ; PAL_SHINYREDMON
 	RGB 31,29,31, 15,20,20, 05,16,16, 03,02,02 ; PAL_SHINYCYANMON
	RGB 31,29,31, 20,17,18, 18,13,11, 03,02,02 ; PAL_SHINYBROWNMON
	RGB 31,29,31, 30,23,16, 29,14,09, 03,02,02 ; PAL_SHINYYELLOWMON
	RGB 31,29,31, 16,18,21, 10,12,18, 03,02,02 ; PAL_SHINYBLUEMON
	RGB 31,29,31, 23,15,19, 14,04,12, 03,02,02 ; PAL_SHINYPURPLEMON
	RGB 31,29,31, 23,19,13, 14,12,17, 03,02,02 ; PAL_SHINYMEWMON
	RGB 31,29,31, 18,18,18, 10,10,10, 03,02,02 ; PAL_SHINYGRAYMON
	RGB 31,29,31, 21,25,29, 11,15,23, 03,02,02 ; PAL_SHINYPINKMON
	RGB 31,29,31, 26,21,22, 27,20,06, 03,02,02 ; PAL_SLOTS1
IF DEF(_RED)
	RGB 31,29,31, 31,31,17, 25,17,21, 03,02,02 ; PAL_SLOTS2
	RGB 31,29,31, 22,31,16, 25,17,21, 03,02,02 ; PAL_SLOTS3
	RGB 31,29,31, 16,19,29, 25,17,21, 03,02,02 ; PAL_SLOTS4
ENDC
IF DEF(_BLUE)
	RGB 31,29,31, 31,31,17, 16,19,29, 03,02,02 ; PAL_SLOTS2
	RGB 31,29,31, 22,31,16, 16,19,29, 03,02,02 ; PAL_SLOTS3
	RGB 31,29,31, 25,17,21, 16,19,29, 03,02,02 ; PAL_SLOTS4
ENDC
	RGB 31,29,31, 07,07,07, 02,03,03, 03,02,02 ; PAL_BLACK
	RGB 31,29,31, 30,26,15, 09,20,11, 03,02,02 ; PAL_GREENBAR
	RGB 31,29,31, 30,26,15, 26,20,00, 03,02,02 ; PAL_YELLOWBAR
	RGB 31,29,31, 30,26,15, 26,10,06, 03,02,02 ; PAL_REDBAR
	RGB 31,29,31, 30,22,17, 11,15,23, 03,02,02 ; PAL_BADGE
	RGB 31,29,31, 21,14,09, 18,24,22, 03,02,02 ; PAL_CAVE
	RGB 31,29,31, 31,28,14, 24,20,10, 03,02,02 ; PAL_GAMEFREAK
	assert_table_length NUM_SGB_PALS
