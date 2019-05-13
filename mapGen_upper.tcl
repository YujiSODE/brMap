#brMap
#mapGen_upper.tcl
###################
#	Copyright (c) 2019 Yuji SODE <yuji.sode@gmail.com>
###################
#tool that converts linear numerical data into text map.
#text map is composed of 0, 1 and newline character (Unicode U+00000A)
###################
#
proc mapGen_upper {width data} {
	# - $width: positive integer
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
	#c is sum of c1 to c8
	set c 0.0;
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
			set c 0.0;
			#
			#--- c1 ---
			set idx [expr {$idx0-$W-1}];
			set c1 [lindex $data $idx];
			#when $c1 is null
			set c1 [expr {[llength $c1]?double($c1):0.0}];
			set c [expr {$Ih>0&&$Iw>0?$c+$c1:$c}];
			#
			#--- c2 ---
			set idx [expr {$idx0-$W}];
			set c2 [lindex $data $idx];
			#when $c2 is null
			set c2 [expr {[llength $c2]?double($c2):0.0}];
			set c [expr {$Ih>0?$c+$c2:$c}];
			#
			#--- c3 ---
			set idx [expr {$idx0-$W+1}];
			set c3 [lindex $data $idx];
			#when $c3 is null
			set c3 [expr {[llength $c3]?double($c3):0.0}];
			set c [expr {$Ih>0&&$Iw<$W-1?$c+$c3:$c}];
			#
			#--- c4 ---
			set idx [expr {$idx0-1}];
			set c4 [lindex $data $idx];
			#when $c4 is null
			set c4 [expr {[llength $c4]?double($c4):0.0}];
			set c [expr {$Iw>0?$c+$c4:$c}];
			#
			#--- c5 ---
			set idx [expr {$idx0+1}];
			set c5 [lindex $data $idx];
			#when $c5 is null
			set c5 [expr {[llength $c5]?double($c5):0.0}];
			set c [expr {$Iw>$W-1?$c+$c5:$c}];
			#
			#--- c6 ---
			set idx [expr {$idx+$W-1}];
			set c6 [lindex $data $idx];
			#when $c6 is null
			set c6 [expr {[llength $c6]?double($c6):0.0}];
			set c [expr {$Ih<$H-1&&$Iw>0?$c+$c6:$c}];
			#
			#--- c7 ---
			set idx [expr {$idx+$W}];
			set c7 [lindex $data $idx];
			#when $c7 is null
			set c7 [expr {[llength $c7]?double($c7):0.0}];
			set c [expr {$Ih<$H-1?$c+$c7:$c}];
			#
			#--- c8 ---
			set idx [expr {$idx+$W+1}];
			set c8 [lindex $data $idx];
			#when $c8 is null
			set c8 [expr {[llength $c8]?double($c8):0.0}];
			set c [expr {$Ih<$H-1&&$Iw<$W-1?$c+$c8:$c}];
			#--- map ---
			append map [expr {$c0>$c/8.0?1:0}];
			incr Iw 1;
		};
		incr Ih 1;
	};
	unset idx0 idx c0 c1 c2 c3 c4 c5 c6 c7 c8;
	return $map;
};
