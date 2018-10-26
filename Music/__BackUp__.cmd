@echo off

echo %1
SET SrcDrv=E:
:: Back up from Work Drv to BlackDrv
SET BlackDrv=G:

set massagedTime=%TIME: =0%
set HH=%massagedTime:~0,2%
echo HH=%HH%

echo %date%
echo %time%

set timestamp=%date:~4,2%%date:~7,2%%date:~-4%_%HH%%time:~3,2%%time:~6,2%
set RoboLogFile=%BlackDrv%\LogFiles\%timestamp%_robocopy.log

echo %RoboLogFile%
pause

robocopy %SrcDrv%\Media\Music %BlackDrv%\MediaTracker\Music /mir /tee /v /xd SimpleDriveMusic /log+:%RoboLogFile%
robocopy "%SrcDrv%\Media\Music\SimpleDriveMusic\0_Compilations\Billboard Hits 1946-2004" "%BlackDrv%\MediaTracker\Music\SimpleDriveMusic\0_Compilations\Billboard Hits 1946-2004" /mir /tee /v /log+:%RoboLogFile%

pause