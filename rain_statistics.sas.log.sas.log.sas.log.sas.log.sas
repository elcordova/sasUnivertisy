title "Categories of reported species";
ods graphics on;
ods noproctitle;
proc freq data=pg1.np_species order=freq;
	tables category / nocum plots=freqplot;
	where Species_id like "EVER%" and category ne "Vascular Plant";
run;
	