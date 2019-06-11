#brMap
#rgbaParse_alpha.tcl
##===================================================================
#	Copyright (c) 2019 Yuji SODE <yuji.sode@gmail.com>
#
#	This software is released under the MIT License.
#	See LICENSE or http://opensource.org/licenses/mit-license.php
##===================================================================
#Tool that converts a linear list of RGBa color values into a numerical list.
#
#--- [Parsing rule] ---
#RGBa color: (R,G,B,a) => a
#where R, G, B and a are 0 to 255
#
#=== Synopsis ===
#`rgbaParse_alpha rgba;`
#
#--- Parameters ---
# - $rgba: a list of RGBa color values (0 to 255)
##===================================================================
#
proc rgbaParse_alpha rgba {
	# - $rgba: a list of RGBa color values (0 to 255)
	#
	set l $rgba;
	set n [llength $l];
	set i 0;
	set v {};
	#
	while {$i<$n} {
		#alpha value of RGBa color
		lappend v [lindex $l $i+3];
		incr i 4;
	};
	return $v;
};
