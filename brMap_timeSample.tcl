#brMap_timeSample.tcl
set i 0;
set time_sample {};
while {$i<21} {
	lappend time_sample [format %b [clock seconds]];
	incr i 1;
	after [expr {int(floor(1000*rand()))}];
};
#================
set time_sample [join $time_sample \n];
puts stdout "variable \"time_sample\"";
puts stdout $time_sample;
