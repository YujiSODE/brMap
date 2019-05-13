#sample20190514.tcl
source brMap.tcl;
source mapGen_upper.tcl;
set map01 {};
set i 0;
set l {};
#generating 100x100 random data
while {$i<10000} {
	lappend l [expr {rand()}];
	incr i 1;
};
#converting data into 0|1 text map
set map01 [mapGen_upper 100 $l];
puts stdout [::brmap::brMap $map01];
