options validvarname=v7;
libname np xlsx "&path/np_info.xlsx";
proc contents data=np.parks;
run;
libname np clear;

