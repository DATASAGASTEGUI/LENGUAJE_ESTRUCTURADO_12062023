import os
from opcion import Opcion
from alumno import Alumno

alumnos_l = [Alumno('A1','Luis',23,True),
             Alumno('A2','Miguel',21,True),
             Alumno('A3','Carlos',20,False),
             Alumno('A4','María',18,True),
             Alumno('A5','Arturo',24,True),
             Alumno('A6','Gerson',25,False),
             Alumno('A7','Silvia',26,True)]

def menu():
    while True:
          os.system('cls')
          print('1. MOSTRAR TODOS LOS ALUMNOS')
          print('2. BUSCAR UN ALUMNO  POR ID')
          print('3. ELIMINAR UN ALUMNO POR ID')
          print('4. ACTUALIZAR EL NOMBRE DE UN ALUMNO')
          print('5. BUSCAR UN RANGO DE ID DE ALUMNO')
          print('6. AÑADIR UN ALUMNO')
          print('0. SALIR')

          opcion = input('INGRESE OPCION: ')

          if   opcion == '1':
               os.system('cls'), Opcion.opcion1(alumnos_l), os.system('pause')
          elif opcion == '2':
               os.system('cls'), opcion2(alumnos_l), os.system('pause')
          elif opcion == '3':
               os.system('cls'), opcion3(), os.system('pause')
          elif opcion == '4':
               os.system('cls'), opcion4(), os.system('pause')
          elif opcion == '5':
               os.system('cls'), opcion5(alumnos_l), os.system('pause')
          elif opcion == '6':
               os.system('cls'), opcion6(), os.system('pause')
          elif opcion == '0':
               os.system('cls'), print('GRACIAS POR SU VISITA'), os.system('pause')
               break
          else: pass

if __name__ == "__main__":
   menu()