; Since Generation IV, the move priority ranges from -7 to 5.
; To avoid working with negative numbers, we shift the priority 
; range to be from 0 to 12.
PriorityMovesList:
        db COUNTER,        1
        db QUICK_ATTACK,   8
       	db EXTREMESPEED,   9
	db VITAL_THROW,	   6
	db MACH_PUNCH,	   8
        db BIDE,   	   8
	db ROAR,	   1
	db WHIRLWIND,	   1
	db TELEPORT,	   6
        db -1 ; end