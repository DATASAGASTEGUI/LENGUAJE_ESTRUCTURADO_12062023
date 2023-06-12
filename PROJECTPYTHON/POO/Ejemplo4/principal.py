import os
from alumno import Alumno

def ejemplo1():
    alumno = Alumno('A1','Luis')
    print(alumno)
    print(alumno)

def ejemplo2():
    alumno = Alumno('A1','Luis')
    print(alumno)
    del(alumno)
    print(alumno) #Error Objeto ya no existe

def ejemplo3():
    alumno = Alumno('A2','Carlos')    
    print("Nombre: ", alumno.get_nombre())
    alumno.set_nombre()

def ejemplo4():
    alumno = Alumno('A4','María')    
    print("Nombre: ", alumno.get_nombre())
    alumno.set_nombre('Carmen')
    print("Nombre: ", alumno.get_nombre())

def ejemplo5():
    a1 = Alumno('A1','Carlos')
    a2 = Alumno('A2','Vanessa')
    print(f'{a1.get_nombre()} Estudia en {a1.centro_estudios()}')
    print(f'{a2.get_nombre()} Estudia en {a2.centro_estudios()}')

if __name__ == "__main__":
   os.system('cls')
   ejemplo5()

