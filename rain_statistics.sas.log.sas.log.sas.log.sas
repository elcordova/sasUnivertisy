proc means data=pg1.np_westweather mean min max maxdec=2;
	var Precip Snow TempMin TempMax;
 	class year name;
 	ways 2;
run;