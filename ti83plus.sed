#!/usr/bin/env -S sed -f
# usage: ./ti83plus.sed ti83plus.inc > ti83plusg.inc
1i\
define ti? ti\
namespace ti?
$a\
end namespace
/^[#.]/d
s/^_//
s/^\([A-Z_a-z][0-9A-Z_a-z]*[ 	]\{1,\}\)equ\([ 	]\{1,\}\)/?\1:=\2/
s/ *| */ or /g
s/ *& */ and /g
s/ *\^ */ xor /g
s/ *<< */ shl /g
s/ *>> */ shr /g
