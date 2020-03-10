proc contents data=pg1.eu_occ;
run;
proc print data=pg1.eu_occ;
where Hotel is missing and ShortStay is missing and camp is missing;
run;

proc print data=pg1.eu_occ;
where hotel > 40000000;
run;				