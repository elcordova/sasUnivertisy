***********************************************************;
*  Activity 4.05                                          *;
*    1) Open the PG1.STORM_RANGE table and examine the    *;
*       columns. Notice that each storm has four wind     *;
*       speed measurements.                               *;
*    2) Create a new column named WindAvg that is the     *;
*       mean of Wind1, Wind2, Wind3, and Wind4.           *;
*    3) Create a new column WindRange that is the range   *;
*       of Wind1, Wind2, Wind3, and Wind4.                *;
***********************************************************;

proc contents data=pg1.storm_range;


data storm_wingavg;
	set pg1.storm_range;
	WindAvg=mean(of wind1-wind4);
	WindRange=range(of wind1-wind4);
	*Add assignment statements;
run;
