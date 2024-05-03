Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "D:\pro.bat", 0, True
objShell.Run "%USERPROFILE%\Downloads\post.bat", 0, True
