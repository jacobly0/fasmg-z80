include 'z80.inc'
include 'ti83plusg.inc'
include 'tiformat.inc'
format ti application 'Name'
	bcall(_JForceCmdNoChar)
repeat 7
	page
end repeat
	db 42
