_PalletTownOakHeyWaitDontGoOutText::
	text "OAK: Hey! Wait!"
	line "Don't go out!@"
	text_end

_PalletTownOakItsUnsafeText::
	text "OAK: It's unsafe!"
	line "Wild #MON live"
	cont "in tall grass!"

	para "You need your own"
	line "#MON for your"
	cont "protection."
	cont "I know!"

	para "Here, come with"
	line "me!"
	done

_PalletTownGirlText::
	text "I'm raising"
	line "#MON too!"

	para "When they get"
	line "strong, they can"
	cont "protect me!"
	done

_PalletTownFisherText::
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #MON as"
	cont "data via PC!"
	done

_PalletTownOaksLabSignText::
	text "OAK #MON"
	line "RESEARCH LAB"
	done

_PalletTownSignText::
	text "PALLET TOWN"
	line "Shades of your"
	cont "journey await!"
	done

_PalletTownPlayersHouseSignText::
	text "<PLAYER>'s house "
	done

_PalletTownRivalsHouseSignText::
	text "<RIVAL>'s house "
	done

_PalletTownScientistText::
	text "Ah, hello,"
	line "<PLAYER>!"
	
	para "If you're looking"
	line "for PROF. OAK,"
	cont "he's currently out"
	cont "on a field study."
	
	para "He said something"
	line "about a mountain"
	cont "range west of the"
	cont "KANTO region."
	
	para "If you want to"
	line "find him, might"
	cont "be best to start"
	cont "looking there."
	
	para "..."
	
	para "Oh, and I almost"
	line "forgot! He asked"
	cont "me to give you"
	cont "this!"
	prompt

_PalletTownScientistTextAfterWaterfall::
	text "PROF. OAK said"
	line "something about a"
	cont "mountain range"
	cont "west of the KANTO"
	cont "region."

	para "If you want to"
	line "find him, might"
	cont "be best to start"
	cont "looking there."
	done

_PalletTownItemRecievedText::
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_PalletTownItemNoRoomText::
	text "You don't have"
	line "room for this!"
	done