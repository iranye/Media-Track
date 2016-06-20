@echo off

set dest=G:\Shared\Media-Tracked\MakeMKV-Movies
REM \\192.168.0.100\Shared\Media-Tracked\MakeMKV-Movies
set src=\\192.168.0.100\G_Shared\Media-Tracked\MakeMKV-Movies
set log=roboLog.log
del %log%

set params=/np /tee /e /v /s /r:5 /w:5 /log+:%log% /xf *.cmd
robocopy %src%\%src_dir% %dest%\%src_dir% %params%

REM set src_dir=_Adult\Jupiter_Ascending
REM robocopy %src%\%src_dir% %dest%\%src_dir%


REM set src_dir=_Adult\IRON_MAN_3_-_BLU-RAY
REM robocopy %src%\%src_dir% %dest%\%src_dir%