#sample20190523_lowerValue.tcl
source brMap.tcl;
source mapGen_lowerValue.tcl;
#
set random [expr {rand()}];
#
set map01 {};
set i 0;
set l {};
#generating 100x100 random data
while {$i<10000} {
	lappend l [expr {rand()}];
	incr i 1;
};
#converting data into 0|1 text map
set map01 [mapGen_lowerValue 100 $random $l];
puts stdout "values less than $random";
puts stdout [::brmap::brMap $map01];
