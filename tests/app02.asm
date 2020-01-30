include 'z80.inc'
include 'ti83plusg.inc'
include 'tiformat.inc'
format ti application 'App02'
	set	lwrCaseActive,(iy+appLwrCaseFlag)
	bcall(_JForceCmdNoChar)
