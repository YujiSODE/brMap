#brMap
#mapGen_gradient.tcl
##===================================================================
#	Copyright (c) 2019 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
#	See LICENSE or http://opensource.org/licenses/mit-license.php
##===================================================================
#Tool that converts linear numerical data into text map.
#
#text map is composed of 0, 1 and newline character (Unicode U+00000A)
#
#--- [mapping rule] ---
#it returns 1 if the current cell is in gradient or 0
#
#=== Synopsis ===
#`mapGen_gradient width data;`
#
#--- Parameters ---
# - $width: positive integer width
# - $data: numerical list
##===================================================================
#
proc mapGen_gradient {width data} {
	# - $width: positive integer width
	# - $data: numerical list
	#N is data length in double
	set N [expr {double([llength $data])}];
	#W and H are width and height for estimated rectangle
	set W [expr {int($width)}];
	set H [expr {int(ceil($N/$W))}];
	#Iw = [0, W-1] and Ih = [0, H-1]
	set Iw 0;
	set Ih 0;
	#map is text map to output
	set map {};
	#idx and idx0 are data list indices
	set idx0 0;
	set idx 0;
	#Moore neighborhood: c0 and c1 to c8
	#	+--+--+--+
	#	|c1|c2|c3|
	#	|c4|c0|c5|
	#	|c6|c7|c8|
	#	+--+--+--+
	set c0 0.0;set c1 0.0;set c2 0.0;set c3 0.0;set c4 0.0;set c5 0.0;set c6 0.0;set c7 0.0;set c8 0.0;
	set c108 0;set c207 0;set c306 0;set c405 0;
	#
	while {$Ih<$H} {
		set Iw 0;
		append map [expr {$Ih>0?"\n":{}}];
		while {$Iw<$W} {
			set c108 0;
			set c207 0;
			set c306 0;
			set c405 0;
			#
			#--- c0 ---
			set idx0 [expr {int($Ih*$W+$Iw)}];
			set idx $idx0;
			set c0 [lindex $data $idx];
			#when $c0 is null
			set c0 [expr {[llength $c0]?double($c0):0.0}];
			#
			#--- c1 ---
			set idx [expr {$idx0-$W-1}];
			set c1 [lindex $data $idx];
			#when $c1 is null
			set c1 [expr {[llength $c1]?double($c1):0.0}];
			#
			#--- c2 ---
			set idx [expr {$idx0-$W}];
			set c2 [lindex $data $idx];
			#when $c2 is null
			set c2 [expr {[llength $c2]?double($c2):0.0}];
			#
			#--- c3 ---
			set idx [expr {$idx0-$W+1}];
			set c3 [lindex $data $idx];
			#when $c3 is null
			set c3 [expr {[llength $c3]?double($c3):0.0}];
			#
			#--- c4 ---
			set idx [expr {$idx0-1}];
			set c4 [lindex $data $idx];
			#when $c4 is null
			set c4 [expr {[llength $c4]?double($c4):0.0}];
			#
			#--- c5 ---
			set idx [expr {$idx0+1}];
			set c5 [lindex $data $idx];
			#when $c5 is null
			set c5 [expr {[llength $c5]?double($c5):0.0}];
			#
			#--- c6 ---
			set idx [expr {$idx+$W-1}];
			set c6 [lindex $data $idx];
			#when $c6 is null
			set c6 [expr {[llength $c6]?double($c6):0.0}];
			#
			#--- c7 ---
			set idx [expr {$idx+$W}];
			set c7 [lindex $data $idx];
			#when $c7 is null
			set c7 [expr {[llength $c7]?double($c7):0.0}];
			#
			#--- c8 ---
			set idx [expr {$idx+$W+1}];
			set c8 [lindex $data $idx];
			#when $c8 is null
			set c8 [expr {[llength $c8]?double($c8):0.0}];
			#--- map ---
			#
			# +----------------------------------+
			# |(c-,c+,c0) => c0>min(c+,c-,c0)?1:0|
			# +----------------------------------+
			#
			set c108 [expr {$c0>$c1||$c0>$c8?1:0}];
			set c207 [expr {$c0>$c2||$c0>$c7?1:0}];
			set c306 [expr {$c0>$c3||$c0>$c6?1:0}];
			set c405 [expr {$c0>$c4||$c0>$c5?1:0}];
			#
			append map [expr {$c108*$c207*$c306*$c405}];
			incr Iw 1;
		};
		incr Ih 1;
	};
	unset idx0 idx c0 c1 c2 c3 c4 c5 c6 c7 c8 c108 c207 c306 c405;
	return $map;
};
