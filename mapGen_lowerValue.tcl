#brMap
#mapGen_lowerValue.tcl
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
#it returns 1 if the current cell value is less than given value or 0
#
#=== Synopsis ===
#`mapGen_lowerValue width value data;`
#
#--- Parameters ---
# - $width: positive integer width
# - $value: numerical value
# - $data: numerical list
##===================================================================
#
proc mapGen_lowerValue {width value data} {
	# - $width: positive integer width
	# - $value: numerical value
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
	#
	set c0 0.0;
	set V [expr {double($value)}];
	#
	while {$Ih<$H} {
		set Iw 0;
		append map [expr {$Ih>0?"\n":{}}];
		while {$Iw<$W} {
			#
			#--- c0 ---
			set idx0 [expr {int($Ih*$W+$Iw)}];
			set idx $idx0;
			set c0 [lindex $data $idx];
			#when $c0 is null
			set c0 [expr {[llength $c0]?double($c0):0.0}];
			#
			#--- map ---
			append map [expr {$c0<$V?1:0}];
			incr Iw 1;
		};
		incr Ih 1;
	};
	unset idx0 idx c0 V;
	return $map;
};
