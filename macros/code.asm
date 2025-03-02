; Syntactic sugar macros

MACRO lb ; r, hi, lo
	ld \1, ((\2) & $ff) << 8 + ((\3) & $ff)
ENDM

MACRO ldpal
	ld \1, \2 << 6 | \3 << 4 | \4 << 2 | \5
ENDM

; Design patterns

MACRO dict
	IF \1 == 0
		and a
	ELSE
		cp \1
	ENDC
	jp z, \2
ENDM

MACRO srl_a_3x ; optimized version of doing srl a three times (shift a right 3 times) (aka divide by 8)
	rrca
	rrca
	rrca
	and %00011111
ENDM