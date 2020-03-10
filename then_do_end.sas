data parks monuments;
	set pg1.np_summary;
	where upcase(type) in ("NP" "NM");
	cappers=sum(OtherCamping, TentCampers, RVCampers,
                BackcountryCampers);
    length parktype $ 8;
    if type='NP' then do;
    	parkType='Park';
    	output parks;
	end;
	if type='NM' then do;
		parkType='Monument';
		output monuments;
	end;
    format cappers comma17.;
    keep Reg ParkName DayVisits OtherLodging Campers and ParkType;
run;
	
*the same in top;
data parks2 monuments2;
	set pg1.np_summary;
	where upcase(type) in ("NP" "NM");
	cappers=sum(OtherCamping, TentCampers, RVCampers,
                BackcountryCampers);
    length parktype $ 8;
    select(type);
    	when('NP') do;
	    	parkType='Park';
	    	output parks2;
		end;
		otherwise do;
			parkType='Monument';
			output monuments2;
		end;
	end;
    format cappers comma17.;
    keep Reg ParkName DayVisits OtherLodging Campers and ParkType;
run;