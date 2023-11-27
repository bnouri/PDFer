@call %systemdrive%\SBN\!!fst\Srvr\Init>nul
::---------------------------------------------------------
set CurrentDir=%CD%
for %%* in (.) do set CurrentDirName=%%~nx*
cd /d %~dp0\..
set ParentDir=%CD%
for %%* in (.) do set ParentDirName=%%~nx*
cd /d %~dp0\..\..
set GrandParentDir=%CD%
for %%* in (.) do set GrandParentDirName=%%~nx*
::---------------------------------------------------------
::cd %CurrentDir%
cd %ParentDir%

set IDATE=(%ILY%%IM%%ID%-%ILT%)

C:\SBN\!sbn.7za\7za.exe  a  -tzip  "%CD%--%IDATE%.zip"   "%CD%\*"  -r -mx9 -xr@%IS%\ILstZD.txt

explorer %CD%\..\
echo *** Done! ***
