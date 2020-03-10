title "Park Types by Region";
proc freq data=pg1.np_codelookup order=freq;
	tables type*region / nocol ;
	where type not like "%Other%";
run;
	
proc freq data=pg1.np_codelookup order=freq;
	tables type*region / nocol crosslist
	plots=freqplot(groupby=row scale=grouppercent orient=horizontal);
    where Type in ('National Historic Site', 'National Monument', 'National Park');
run;