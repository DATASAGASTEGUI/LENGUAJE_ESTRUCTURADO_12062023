import os
from supervisor import Supervisor
from conserje import Conserje

def ejemplo1():
    s1 = Supervisor('111A','Luis',23,'H','Ventas')
    print(s1)
    s1.supervisar()
    c = Conserje('222A','Miguel',25,'H')
    print(c)

if __name__ == "__main__":
   os.system('cls')
   ejemplo1()