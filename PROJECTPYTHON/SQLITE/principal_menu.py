import os
import sqlite3

def cabecera():
    print('%6s  %-10s  %-30s  %-10s  %-10s' % ('NUMERO','FECHA','MEDICO','PARTO','PROCEDENCIA'))
    print('%6s  %-10s  %-30s  %-10s  %-10s' % ('------','-----','------','-----','-----------'))

def cuerpo(alumno_t):
    print('%6s  %-10s  %-30s  %-10s  %-10s' % (alumno_t[0],alumno_t[1],alumno_t[2],alumno_t[3],alumno_t[4]))

def opcion1():
    pass

def opcion2():
    pass

def opcion3():
    print('(3) MOSTRAR REGISTRO')
    print('--------------------')
    nra = "SQLITE\\consultamedica.sqlite"
    conexion = sqlite3.connect(nra)
    cursor = conexion.cursor()
    sql = "SELECT * FROM Consulta"
    cursor.execute(sql)
    registros_l = cursor.fetchall()
    cabecera()
    for registro_t in registros_l :
        cuerpo(registro_t)
    conexion.commit()

def opcion4():
    pass

def opcion5():
    pass

def menu():
	while True:
          os.system("cls")
          print('MENU')
          print('----')
          print('(1) CREAR TABLA')
          print('(2) INSERTAR REGISTRO')
          print('(3) MOSTRAR REGISTRO')
          print('(4) ELIMINAR REGISTRO')
          print('(5) ACTUALIZAR REGISTRO')
          print('(6) BUSCAR REGISTRO')
          print('(0) SALIR')

          opcion = input('\nINGRESE OPCION? ')

          if   opcion == '1':
               os.system('cls'),opcion1(),os.system('pause')
          elif opcion == '2':
               os.system('cls'),opcion2(),os.system('pause')
          elif opcion == '3':
               os.system('cls'),opcion3(),os.system('pause')
          elif opcion == '4':
               os.system('cls'),opcion4(),os.system('pause')
          elif opcion == '5':
               os.system('cls'),opcion5(),os.system('pause')
          elif opcion == '0':
               os.system('cls')
               print('\nGRACIAS POR SU VISITA\n')
               os.system('pause')
               os.system('cls')
               break
          else:pass

def main():
    menu()
          
if __name__ == "__main__":
   main()