@echo off

set src="\\192.168.0.103\Recorded TV"


pushd .
REM cd /d G:\Shared\_Overflow\RecordedTV\_NewStuff
set params=/e /s /tee /np /r:5 /w:5 /xf *.cmd /xd "Sample Media" /xd TempRec /xf *.log /log+:robolog.log
robocopy %src% . %params%
popd .