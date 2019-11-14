goto :start

==START COMMENTS======================================================================

STEP 1: Create new blank app with older WAB version, get app number (olderWABnumber). Stop WAB DE.
STEP 2: Update VARIABLES below, run batch.
STEP 3: Once batch is complete, start the new version of Web AppBuilder to check the result.

EXAMPLE:
Upgrade App #41 from version 2.13 (64-bit - https://developers.arcgis.com/web-appbuilder/guide/upgrade-apps.htm)  
   A. In command prompt: cd C:\arcgis-web-appbuilder-2.14\WebAppBuilderForArcGIS\server
   B. Enter:  node_x64 upgrade C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\ 41

==END COMMENTS======================================================================


:start

:: Set VARIABLES for latest/previous WAB version and app number
    SET prodDir= \\wsitd03\c$\GADS\website\DART\StaffMap
    SET latestWAB= C:\arcgis-web-appbuilder-2.14\WebAppBuilderForArcGIS\server
    SET olderWAB= C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\
    SET olderWABapp= C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\33
    SET olderWABnumber= 33

Echo 1. Removing directory for new blank app ...
 @RD /S /Q %olderWABapp%

Echo 2. Copy to current production app folder to new blank app folder ...
 XCOPY %prodDir% %olderWABapp% /E /I /H /R /Y

Echo 3. Changing directory to latest WAB ...
 cd %latestWAB%

Echo 4. Upgrade previous WAB version to latest version ...
 node_x64 upgrade %olderWAB% %olderWABnumber%  

Echo Batch is complete, start the new version of Web AppBuilder to check the result.

pause