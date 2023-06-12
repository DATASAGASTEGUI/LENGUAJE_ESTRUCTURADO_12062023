import os
from clases import *

def ejemplo1():
    c3 = Clase3()
    c3.setAtributo('hola')
    c3.metodo1_1()
    c3.metodo1_2()
    c3.metodo2_1()
    c3.metodo2_2()

if __name__ == "__main__":
   os.system('cls')
   ejemplo1()