***********************************************************;
*  Exporting Results to Excel                             *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    ODS EXCEL FILE="filename.xlsx" <STYLE=style>         *;
*              <OPTIONS (SHEET_NAME='label')>;            *;
*        /* SAS code that produces output */              *;
*    ODS EXCEL OPTIONS (SHEET_NAME='label');              *;
*        /* SAS code that produces output */              *;
*    ODS EXCEL CLOSE;                                     *;
***********************************************************;

***********************************************************;
*  Demo                                                   *;
*  1) Add an ODS statement to create an Excel file named  *;
*     wind.xlsx in the output folder of the course files. *;
*     Close the excel desination at the end of the        *;
*     program. Highlight the demo program and run the     *;
*     selected code.                                      *;
*  2) Open the Excel file.                                *;
*     * SAS Studio: Navigate to the output folder in the  *;
*       Files and Folders section of the navigation pane. *;
*       Select wind.xlsx click Download.                  *;
*     * Enterprise Guide: Click the Results -> Excel tab  *;
*     and click Download.                                 *;
*  3) Examine the Excel workbook. Notice the light blue   *;
*     background in the results generated by the default  *;
*     style. Also notice the default spreadsheet names.   *;
*     Close the Excel file.                               *;
*  4) Examine the available style options.                *;
*     * SAS Studio: Submit the following program:         *;
*        proc template;                                   *;
*            list styles;                                 *;
*        run;                                             *;
*     * Enterprise Guide: Select Tools -> Style Manager.  *;
*  5) Change the style by adding the STYLE=SASDOCPRINTER  *;
*     option in the first ODS statement.                  *;
*  6) Use the SHEET_NAME= option on the first ODS EXCEL   *;
*     statement to name the first worksheet Wind Stats.   *;
*     Add another ODS EXCEL statement with the SHEET_NAME=*;
*     option before the second TITLE statement and SGPLOT *;
*     step. Name the second worksheet Wind Distribution.  *;
*     Highlight the demo program and run the selected     *;
*     code. Open the Excel file to view the results.      *;
***********************************************************;

*Add ODS statement; 

title "Wind Statistics by Basin";
ods noproctitle;
proc means data=pg1.storm_final min mean median max maxdec=0;
    class BasinName;
    var MaxWindMPH;
run;

title "Distribution of Maximum Wind";
proc sgplot data=pg1.storm_final;
    histogram MaxWindMPH;
    density MaxWindMPH;
run; 
title;  
ods proctitle;
*Add ODS statement;
