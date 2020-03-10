proc import datafile="&path/np_traffic.dat" 
			out=traffic2 dbms=dlm replace;
			delimiter="|";
			getnames=yes;
run;
proc contents data=traffic2;
run;