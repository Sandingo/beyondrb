_DaycareGentlemanAllRightThenText::
	text "All right then,"
	line "@"
	text_end

_DaycareGentlemanComeAgainText::
	text "Do come again!"
	done

_DaycareGentlemanNoRoomForMonText::
	text "You have no room"
	line "for this #MON!"
	done

_DaycareGentlemanOnlyHaveOneMonText::
	text "You only have one"
	line "#MON with you."
	done

_DaycareGentlemanCantAcceptMonWithHMText::
	text "I can't accept a"
	line "#MON that"
	cont "knows an HM move."
	done

_DaycareGentlemanHeresYourMonText::
	text "Thank you! Here's"
	line "your #MON!"
	prompt

_DaycareGentlemanNotEnoughMoneyText::
	text "Hey, you don't"
	line "have enough ¥!"
	done

_DaycareGentlemanEggExplain::
	text "Your @"
	text_ram wDayCareMonName
	db $0
	line "has been playing"
	cont "with my DITTO."
	
	para "It looks like they"
	line "had an EGG!"
	
	para "Do you want the"
	line "#MON that"
	cont "hatched from it?"
	done

_DaycareGentlemanDeclineEgg::
	text "Alright, I'll take"
	line "good care of it,"
	cont "then!"
	prompt