%let speciesIdStartWith=ZION;
%let categoryQuery=Bird;
proc freq data=pg1.np_species;
	table Abundance Conservation_Status;
	where Species_ID like "&speciesIdStartWith%" and category = "&categoryQuery";
run;

proc freq data=pg1.np_species;
	table Species_ID Category Scientific_Name Common_Names;
	where Species_ID like "&speciesIdStartWith%" and category = "&categoryQuery";
run;