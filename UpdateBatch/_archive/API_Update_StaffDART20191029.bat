goto :start

==START COMMENTS======================================================================
1. Replace \images\shortcut.ico and widget icons (About, BasemapGallery, Legend, LayerList, StreetView) with previous. 

2. Copy previous Help.html file and folder Help_Videos.

3. Copy Automated Test (WidgetTests folder). 

4. Copy previous \\wsitd03\c$\GADS\website\DART\StaffMap\proxy folder.

==END COMMENTS======================================================================


:start

Echo 1. Replacing shortcut.ico with previous ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\images\shortcut.ico C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\images\shortcut.ico /r /y

Echo 1. Replacing About widget icon with previous ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\widgets\About\images\icon.png C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\widgets\About\images\icon.png /r /y

Echo 1. Replacing BasemapGallery widget icon with previous ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\widgets\BasemapGallery\images\icon.png C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\widgets\BasemapGallery\images\icon.png /r /y

Echo 1. Replacing Legend widget icon with previous ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\widgets\Legend\images\icon.png C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\widgets\Legend\images\icon.png /r /y

Echo 1. Replacing LayerList widget icon with previous ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\widgets\LayerList\images\icon.png C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\widgets\LayerList\images\icon.png /r /y

Echo 1. Replacing StreetView widget icon with previous ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\widgets\StreetView\images\icon.png C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\widgets\StreetView\images\icon.png /r /y

Echo 2. Copying previous Help.html ...
echo f | XCOPY  /f /y \\wsitd03\c$\GADS\website\DART\StaffMap\Help.html C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\Help.html

Echo 2. Copying previous Help_Videos folder ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\Help_Videos C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\Help_Videos /E /I /H /R /Y

Echo 3. Copying WidgetTests folder ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\WidgetTests C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\WidgetTests /E /I /H /R /Y

Echo 4. Copying proxy folder ...
XCOPY \\wsitd03\c$\GADS\website\DART\StaffMap\proxy C:\arcgis-web-appbuilder-2.13\WebAppBuilderForArcGIS\server\apps\3\proxy /E /I /H /R /Y

Echo Following manual steps still needed:
Echo 1. 
Echo STEP 1: Replace files with latest code using GitHub repository (6):
Echo  1. About Widget (WAB_About-Staff-DART-Widget), 2. Add CSV Widget (WAB_Add-CSV-Widget), 
Echo  3. Add More Data (WAB_Add-More-Data-Grouped-Folder), 4. IdentifyMany Widget (WAB_IdentifyMany-Staff-DART-Widget), 
Echo  5. StreetView Widget (WAB_StreetView-Staff-DART-Widget), 6. Print Widget (WAB_Print-Widget)
Echo  7. Theme Widget (WAB_MapTheme-Widget)
Echo 2.
Echo STEP 2: Obtain latest 3rd Party Widgets and test (4): 
Echo AddData, eDraw, Measure, SaveSession, GeoCortex Analytics

pause