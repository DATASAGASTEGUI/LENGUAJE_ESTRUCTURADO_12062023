import os
from opcion import opcion1, opcion2, opcion3, opcion4, opcion5, opcion6

alumnos_l = [{'idAlumno':'A1', 'nombre':'Luis',  'edad':23,'casado':True},
             {'idAlumno':'A2', 'nombre':'Miguel','edad':21,'casado':True},
             {'idAlumno':'A3', 'nombre':'Carlos','edad':20,'casado':False},
             {'idAlumno':'A4', 'nombre':'María', 'edad':18,'casado':True},
             {'idAlumno':'A5', 'nombre':'Arturo','edad':24,'casado':True},
             {'idAlumno':'A6', 'nombre':'Gerson','edad':25,'casado':False},
             {'idAlumno':'A7', 'nombre':'Silvia','edad':26,'casado':True}]

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
               os.system('cls'), opcion1(alumnos_l), os.system('pause')
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