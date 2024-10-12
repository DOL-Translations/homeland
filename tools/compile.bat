@echo off

set ISOFile=..\input\HomeLand [J].iso
set ISOTargetSize=1459978240

if not exist "%ISOFile%" (
	echo [INFO] "%ISOFile%" was not found
	echo Did you name the ROM correctly and place it in the correct folder?
	echo Exiting in 10 seconds..
	C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
	exit /b 0
)

for %%F in ("%ISOFile%") do (
    set "ISOSize=%%~zF"
)

if %ISOSize% neq %ISOTargetSize% (
    echo [INFO] "%ISOFile%" was has an incorrect size
    echo Are you using the uncompressed ROM?
    echo Exiting in 10 seconds..
    C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
    exit /b 0
)

echo [INFO] Compiling patches - Please wait..

py extract.py "../src/Event/Cndy/Temp/Start.dol" "../input/HomeLand [J].iso" 0x20300 1558528
py extract.py "../src/Event/Cndy/Temp/all.bin" "../input/HomeLand [J].iso" 0x23B8F99C 534765248
py extract_cndy.py "../src/Event/Cndy/Temp/all.bin" "../src/Event/Cndy/Temp/Start.dol" "..src/Event/Cndy/Raw/"
py patch_cndy.py "../src/Event/Cndy/Raw/" "../src/Event/Cndy/Json/" "../src/Event/Cndy/RawEdit/"

bass\\win\\bass.exe ..\\src\\Main.asm

echo [INFO] Patches compiled
echo ---------- 
echo Finished!
echo ----------
C:\Windows\System32\timeout.exe /t 5 /nobreak >nul
exit /b 0