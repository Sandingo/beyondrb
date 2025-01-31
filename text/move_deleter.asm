_MoveDeleterGreetingText::
	text "I'm the uhh..."
	line "Oh yeah, I'm the"
	cont "MOVE DELETER."

	para "Want me to make a"
	line "#MON forget a"
	cont "move?"
	done

_MoveDeleterSaidYesText::
	text "Which #MON"
	line "should forget a"
	cont "move?"
	prompt

_MoveDeleterWhichMoveText::
	text "Which move should"
	line "it forget, then?"
	done

_MoveDeleterConfirmText::
	text "Make it forget"
	line "@"
	text_ram wStringBuffer
	text "?"
	prompt

_MoveDeleterForgotText::
	text "@"
	text_ram wStringBuffer
	text " was"
	line "forgotten!"
	prompt

_MoveDeleterByeText::
	text "Remind me to do"
	line "this again!"
	done

_MoveDeleterOneMoveText::
	text "That #mon only"
	line "has one move!"
	cont "Pick another?"
	done