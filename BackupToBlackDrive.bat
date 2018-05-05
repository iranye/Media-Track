REM robocopy I:\MediaTracker \\192.168.1.35\Public\Shared\MediaTracker /e /s /r:5 /w:5 /xd MakeMKV-Movies /xd RecordedTV

robocopy C:\MediaTracker\CloudStation G:\MediaTracker /mir /tee /v /r:5 /w:5 /xd ToBurn /xd .git /xd .SynologyWorkingDirectory /log+:C:\MediaTracker\robolog_042018.log

