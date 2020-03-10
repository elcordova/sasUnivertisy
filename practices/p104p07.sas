***********************************************************;
*  LESSON 4, PRACTICE 7                                   *;
*    a) Submit the program and view the generated output. *;
*    b) In the DATA step, use IF-THEN/ELSE statements to  *;
*       create a new column, ParkType, based on the value *;
*       of Type.                                          *;
*       NM -> Monument                                    *;
*       NP -> Park                                        *;
*       NPRE, PRE, or PRESERVE -> Preserve                *;
*       NS -> Seashore                                    *;
*       RVR or RIVERWAYS -> River                         *;
*    c) Modify the PROC FREQ step to generate a frequency *;
*       report for ParkType.                              *;
***********************************************************;

data park_type;
	set pg1.np_summary;
	*Add IF-THEN-ELSE statements;
	if type = "NM" then parkType="Monument";
	else if type = "NP" then parkType="Park";
	else if type in("NPRE", "PRE", "PRESERVE") then parkType="Preserve";
	else if type = "NS" then parktype="Seashore";
	else if type in ("RVR","RIVERWAYS") then parkType="River";
run;

proc freq data=park_type;
	tables parkType;
run;
