@echo off
rem Launches the 2003 game under a Simplified Chinese locale (GBK file names)
rem with cnc-ddraw (ddraw.dll in this folder) handling the old DirectDraw graphics.
cd /d "%~dp0"
for %%F in ("%~dp0*2003.exe") do (
  start "" "%~dp0LocaleEmulator\LEProc.exe" -runas 7c4e0b0a-2003-4f00-9a00-000000002003 "%%~fF"
  goto :eof
)
echo Could not find the game exe in this folder.
pause
