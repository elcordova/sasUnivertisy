data eu_occ_total;
	set pg1.eu_occ;
	year=substr(yearMon,1,4);
	month=substr(yearMon,6,2);
	ReportDate=MDY(month,1,Year);
	format Hotel ShortStay Camp Total comma17.
           ReportDate monyy7.;
	format ReportDate monyy7.;
run;
