#brMap
#rgbaParse.tcl
##===================================================================
#	Copyright (c) 2019 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
#	See LICENSE or http://opensource.org/licenses/mit-license.php
##===================================================================
#Tool that converts a linear list of RGBa color values into a numerical list.
#
#--- [Parsing rule] ---
#RGBa color: (R,G,B,a) => (R+G+B)*a/255
#where R, G, B and a are 0 to 255
#
#=== Synopsis ===
#`rgbaParse rgba;`
#
#--- Parameters ---
# - rgba: a list of RGBa color values (0 to 255)
##===================================================================
#
proc rgbaParse rgba {
	# - $rgba: a list of RGBa color values (0 to 255)
	#
	set l $rgba;
	set n [llength $l];
	set i 0;
	set v {};
	#RGBa color: r, g, b and a
	set r 0.0;
	set g 0.0;
	set b 0.0;
	set a 0.0;
	#
	while {$i<$n} {
		#RGBa color
		set r 0.0;set g 0.0;set b 0.0;set a 0.0;
		set r [lindex $l $i];
		set g [lindex $l $i+1];
		set b [lindex $l $i+2];
		set a [lindex $l $i+3];
		#
		set r [expr {[llength $r]>0?double($r):0.0}];
		set g [expr {[llength $g]>0?double($g):0.0}];
		set b [expr {[llength $b]>0?double($b):0.0}];
		set a [expr {[llength $a]>0?double($a):0.0}];
		#
		lappend v [expr {($r+$g+$b)*$a/255}];
		incr i 4;
	};
	return $v;
};
