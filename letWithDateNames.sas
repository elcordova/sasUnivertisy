%LET categoryQuery=MAMMAL;
data mammal;
	set pg1.np_species;
	where upcase(category)="&categoryQuery";
	drop abundance seasonality conservation_status;
run;

proc freq data=mammal;
	TABLES record_status;
run;

%let Amphibian=AMPHIBIAN;
data &Amphibian;
	set pg1.np_species;
	where upcase(category)="&Amphibian";
	drop abundance seasonality conservation_status;
run;

proc freq data=&amphibian;
	TABLES record_status;
run;

