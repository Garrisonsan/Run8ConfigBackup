@echo off
REM This script will copy Run-8 V3 spawn points, industry configs, hump configs, routings, and AI traffic configs into a folder called Run8Run8ConfigBackup_[DATE-TIME] for easy backup or transfer.  Place it in your Run8Studios directory and run it from there.

REM The resulting directory tree can then be dragged and dropped into a Run8 Train Simulator V3 directory to update configs from the backup.

REM BarstowYermo, Bakersfield, Cajon, Mojave, Needles, SanBernardino, Seligman, ALine, Mohawk, Selkirk, Waycross, and Roseville route configs will be backed up.  HRS_Southeast, NorthernCA, SelkirkRegion, and SouthernCA region configs will be backed up.

REM SCRIPT BEGINS BELOW

REM Set the date and time to append to the output folder
for /f "tokens=3,2,4 delims=/- " %%x in ("%date%") do set d=%%y%%x%%z
set data=%d%
for /f "tokens=1,2,3 delims=:. " %%x in ("%time%") do set t=%%x%%y%%z
set time=%t%

echo Making folders and backing up config files based on your existing routes...

REM Check that the route/region exists.  If so, make a folder and copy the config files.

IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\BarstowYermo\TrackDatabase.r8" (
	echo BarstowYermo: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BarstowYermo
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BarstowYermo\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BarstowYermo\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BarstowYermo\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BarstowYermo\TrainSymbolRoutings.xml >nul

) ELSE (
	echo BarstowYermo: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_BakersfieldSub\TrackDatabase.r8" (
	echo BNSF_Bakersfield: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_BakersfieldSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_BakersfieldSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_BakersfieldSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_BakersfieldSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_BakersfieldSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo BNSF_Bakersfield: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_CajonSub\TrackDatabase.r8" (
	echo BNSF_CajonSub: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_CajonSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_CajonSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_CajonSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_CajonSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_CajonSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo BNSF_CajonSub: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_MojaveSub\TrackDatabase.r8" (
	echo BNSF_MojaveSub: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_MojaveSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_MojaveSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_MojaveSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_MojaveSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_MojaveSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo BNSF_MojaveSub: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_NeedlesSub\TrackDatabase.r8" (
	echo BNSF_NeedlesSub: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_NeedlesSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_NeedlesSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_NeedlesSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_NeedlesSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_NeedlesSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo BNSF_NeedlesSub: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_SanBernardinoSub\TrackDatabase.r8" (
	echo BNSF_SanBernardinoSub: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_SanBernardinoSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_SanBernardinoSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_SanBernardinoSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_SanBernardinoSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_SanBernardinoSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo BNSF_SanBernardino: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_SeligmanSub\TrackDatabase.r8" (
	echo BNSF_SeligmanSub: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_SeligmanSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_SeligmanSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_SeligmanSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\BNSF_SeligmanSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\BNSF_SeligmanSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo BNSF_SeligmanSub: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\CSX_ALine\TrackDatabase.r8" (
	echo CSX_ALine: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_ALine
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_ALine\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_ALine\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_ALine\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_ALine\TrainSymbolRoutings.xml >nul

) ELSE (
	echo CSX_ALine: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\CSX_MohawkSub\TrackDatabase.r8" (
	echo CSX_MohawkSub: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_MohawkSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_MohawkSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_MohawkSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_MohawkSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_MohawkSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo CSX_MohawkSub: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\CSX_SelkirkTerminal\TrackDatabase.r8" (
	echo CSX_SelkirkTerminal: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_SelkirkTerminal
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_SelkirkTerminal\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_SelkirkTerminal\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_SelkirkTerminal\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_SelkirkTerminal\TrainSymbolRoutings.xml >nul

) ELSE (
	echo CSX_SelkirkTerminal: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\CSX_Waycross\TrackDatabase.r8" (
	echo CSX_Waycross: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_Waycross
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_Waycross\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_Waycross\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_Waycross\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_Waycross\TrainSymbolRoutings.xml >nul

) ELSE (
	echo CSX_Waycross: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\CSX_Fitzgerald\TrackDatabase.r8" (
	echo CSX_Fitzgerald: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_Fitzgerald
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_Fitzgerald\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_Fitzgerald\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\CSX_Fitzgerald\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\CSX_Fitzgerald\TrainSymbolRoutings.xml >nul

) ELSE (
	echo CSX_Fitzgerald: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\SP-UP_RosevilleSub\TrackDatabase.r8" (
	echo SP-UP_RosevilleSub: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\SP-UP_RosevilleSub
	copy ".\Run8 Train Simulator V3\Content\V3Routes\SP-UP_RosevilleSub\AISpecialLocations.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\SP-UP_RosevilleSub\AISpecialLocations.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\SP-UP_RosevilleSub\TrainSymbolRoutings.xml" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\SP-UP_RosevilleSub\TrainSymbolRoutings.xml >nul

) ELSE (
	echo SP-UP_RosevilleSub: No
)

echo.
echo Backing up your region config files...

IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\Regions\HRS_Southeast\WX\WX_Stations.txt" (
	echo HRS_Southeast: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\HRS_Southeast
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\HRS_Southeast\Config.ind" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\HRS_Southeast\Config.ind >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\HRS_Southeast\WaycrossConfig.ind" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\HRS_Southeast\WaycrossConfig.ind >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\HRS_Southeast\Hump.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\HRS_Southeast\Hump.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\HRS_Southeast\Traffic.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\HRS_Southeast\Traffic.r8 >nul

) ELSE (
	echo HRS_Southeast: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\Regions\NorthernCA\WX\WX_Stations.txt" (
	echo NorthernCA: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\NorthernCA
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\NorthernCA\Config.ind" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\NorthernCA\Config.ind >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\NorthernCA\Hump.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\NorthernCA\Hump.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\NorthernCA\Traffic.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\NorthernCA\Traffic.r8 >nul

) ELSE (
	echo NorthernCA: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\Regions\SelkirkRegion\WX\WX_Stations.txt" (
	echo SelkirkRegion: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\SelkirkRegion
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\SelkirkRegion\Hump.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\SelkirkRegion\Hump.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\SelkirkRegion\Traffic.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\SelkirkRegion\Traffic.r8 >nul

) ELSE (
	echo SelkirkRegion: No
)
IF EXIST ".\Run8 Train Simulator V3\Content\V3Routes\Regions\SouthernCA\WX\WX_Stations.txt" (
	echo SouthernCA: Yes
	md .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\SouthernCA
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\SouthernCA\Config.ind" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\SouthernCA\Config.ind >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\SouthernCA\Hump.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\SouthernCA\Hump.r8 >nul
	copy ".\Run8 Train Simulator V3\Content\V3Routes\Regions\SouthernCA\Traffic.r8" .\Run8ConfigBackup_%d%-%t%\Content\V3Routes\Regions\SouthernCA\Traffic.r8 >nul

) ELSE (
	echo SouthernCA: No
)

echo.
echo This work is copyright 2023, Garrisonsan, and is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/ or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
echo.
pause