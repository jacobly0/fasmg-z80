#!/bin/sed -f
# usage: ./ti83plus.sed ti83plus.inc > ti83plusg.inc
1s/^/define ti? ti\nnamespace ti?\n/
$s/$/\nend namespace/
s/^[#.][^\n]*//
s/^_//
s/^\(\w.*[ 	]\)equ\([ 	]\)/?\1:=\2/
s/ \?| \?/ or /g
s/ \?& \?/ and /g
s/ \?\^ \?/ xor /g
s/ \?<< \?/ shl /g
s/ \?>> \?/ shr /g
