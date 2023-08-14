@echo off 
echo MsgBox "Something message here!",vbInformation,"Info" > %TEMP%\msgbox.vbs & %TEMP%\msgbox.vbs
del /Q %TEMP%\msgbox.vbs
pause
