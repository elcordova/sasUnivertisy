proc print data=pg1.np_traffic;
	var parkname location count;
	where count ne 0 and upcase(location) like '%MAIN ENTRANCE%';
run;