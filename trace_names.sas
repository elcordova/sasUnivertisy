*for detect trace names;
ODS TRACE ON;
proc univariate data=pg1.eu_occ;
var camp;
run;
ODS TRACE OFF;

/* detect 6 trace names 
	1.Moments,
	2.BasicMeasures,
	3.TestsForLocation
	4.Quantiles
	5.ExtremeObs
	6.MissingValues
*/

*show only ExtremeObs;
ODS SELECT ExtremeObs;
proc univariate data=pg1.eu_occ;
var camp;
run;

* the same with limit 11;
ODS SELECT ExtremeObs; 
proc univariate data=pg1.eu_occ nextrobs=11;
var camp;
run;