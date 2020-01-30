include 'z80.inc'
include 'ti83plusg.inc'
include 'tiformat.inc'
format ti application 'App03'
	ld	hl,hello
	call	PutS
	bcall(_JForceCmdNoChar)
PutS.loop:
	bcall(_PutC)
	inc	hl
PutS:
	ld	a,(hl)
	or	a,a
	jr	nz,PutS.loop
	ret
hello db "Hello, world!", 0
