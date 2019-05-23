#sample20190523_upperValue.tcl
source brMap.tcl;
source mapGen_upperValue.tcl;
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
set map01 [mapGen_upperValue 100 $random $l];
puts stdout "values more than $random";
puts stdout [::brmap::brMap $map01];
