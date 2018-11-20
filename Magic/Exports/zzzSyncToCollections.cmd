@echo off

dir /b zzzBootStrap*.dek & dir /b zzz*_BigList.dek
pause
copy /y zzzBootStrap*.dek ..\Collections
copy /y *_BigList.dek ..\Collections


