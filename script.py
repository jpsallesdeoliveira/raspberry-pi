import os
import time

# Obtém o PID do processo atual
pid = os.getpid()

try:
  # Salva o PID no arquivo pid.txt
  with open("pid.txt", "w") as f:
    f.write(str(pid))
except:
  print("python -> Error when trying to save the file")
  with open("cromai.log", "w") as f:
    f.write("python -> Error when trying to save the file\r\n")

# Mensagens com atraso de 5 segundos, repetindo 3 vezes
for _ in range(3):
    print("python -> 2: I am alive")
    time.sleep(5)

print("python -> 2: I gonna die now, bye")
