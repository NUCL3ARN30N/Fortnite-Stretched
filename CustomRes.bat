@ECHO off
QRes.exe /X 1920 Y/1440
start com.epicgames.launcher://apps/Fortnite?action=launch&silent=true
timeout /t 5 > NUL

:loop
tasklist /fi "IMAGENAME eq FortniteClient-Win64-Shipping_EAC.exe" | find ":" > nul

if errorlevel 1 (goto loop)

QRes.exe /X 2560 /Y 1440
exit