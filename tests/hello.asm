include 'z80.inc'
include 'ti83plusg.inc'
include 'tiformat.inc'
format ti executable 'HELLO'

	ld	hl, 0
	ld	(curRow), hl
	ld	hl, hello
	call	_PutS
	jp	_NewLine

hello db "Hello", 0
