import os
from circulo import Circulo
import random

if __name__ == "__main__":
   os.system('cls')
   Circulo.cabecera()
   for i in range(100):
       radio = random.uniform(1,100)
       c = Circulo(radio)
       c.cuerpo(i+1)
