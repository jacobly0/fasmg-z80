macro ?!
	; assign needs to be local so that it is only
	; defined once (no purge!) so that it can be
	; forward referenced so that it can recurse
	local assign
	macro assign: name*, expr&
		match left =% right, expr
			assign name, left mod right
		else match left =| right, expr
			assign name, left or right
		else match left =& right, expr
			assign name, left and right
		else match left =^ right, expr
			assign name, left xor right
		else match left =<=< right, expr
			assign name, left shl right
		else match left =>=> right, expr
			assign name, left shr right
		else match left =~ right, expr
			assign name, left not right
		else match =~ right, expr
			assign name, not right
		else
			name? := expr
		end match
	end macro
	struc (name) equ? expr&
		assign name, expr
	end struc
	macro Ld args&
		match =equ? expr, args
			assign name, expr
		end match
	end macro
	purge ?
end macro

macro .list?
end macro
macro .nolist?
end macro
macro #define? arguments&
end macro
macro #ifdef? name
end macro
macro #ifndef? name
end macro
macro #endif?
end macro

include 'ti83plus.inc'
iterate <name,instruction>, call,rst 28h, jump,call 50h
	iterate separator, , _
		macro b#separator#name? address*
			instruction
			dw address
		end macro
	end iterate
end iterate
macro apponerr? address*
	local direct
	direct := address
	ld hl,direct
	call 59h
end macro
macro appofferr?
	call 5Ch
end macro

restruc equ?
purge Ld
purge .list?
purge .nolist?
purge #define?
purge #ifdef?
purge #ifndef?
purge #endif?
