import os
import sqlite3
from os import path
from sqlite3 import Error

def cabecera():
    print('%8s  %-10s  %8s  %4s  %6s' % ('IDALUMNO','NOMBRE','ESTATURA','EDAD','CASADO'))
    print('%8s  %-10s  %8s  %4s  %6s' % ('--------','------','--------','----','------'))

def cuerpo(alumno_t):
    print('%8d  %-10s  %8.2f  %4d  %6s' % (alumno_t[0],alumno_t[1],alumno_t[2],alumno_t[3],alumno_t[4]))

def crear_tabla():
    nra = 'SQLITE\\instituto.sqlite'
    conexion = sqlite3.connect(nra)
    cursor = conexion.cursor()
    sql = """CREATE TABLE IF NOT EXISTS Alumno (
                 idAlumno INTEGER PRIMARY KEY AUTOINCREMENT,
                 nombre   VARCHAR(20), 
                 estatura DOUBLE, 
                 edad     INTEGER,
                 casado   BOOLEAN
              );
             """ 
    cursor.execute(sql)
    conexion.commit()
    conexion.close()
    print("OK: CREAR TABLA")

def drop_tabla():
    conexion = get_conexion()
    if conexion != None:
        sql = "DROP TABLE Alumno" 
        cursor = conexion.cursor()
        cursor.execute(sql)
        conexion.commit()
        conexion.close()
        print("OK: ELIMINAR TABLA")
    else:
        print("ERROR: CONEXION")
 

def insertar_registro():
    nra = 'SQLITE\\instituto.sqlite'
    conexion = sqlite3.connect(nra)
    cursor = conexion.cursor()
    insert_l = ["INSERT INTO Alumno(nombre,estatura,edad,casado)VALUES ('Luis',1.72,23,True)",
                "INSERT INTO Alumno(nombre,estatura,edad,casado)VALUES ('Miguel',1.73,24,False)",
                "INSERT INTO Alumno(nombre,estatura,edad,casado)VALUES ('Carlos',1.74,25,True)"]
    for insert in insert_l:
        cursor.execute(insert)
        print("OK: INSERT REGISTRO")
    conexion.commit()
    conexion.close()

def mostrar_registro():
    nra = 'SQLITE\\instituto.sqlite'
    conexion = sqlite3.connect(nra)
    cursor = conexion.cursor()
    query = "SELECT * FROM Alumno"
    cursor.execute(query)
    registros_l = cursor.fetchall()
    print(registros_l)
    cabecera()
    for alumno_t in registros_l:
        cuerpo(alumno_t)

def eliminar_registro():
    nra = 'SQLITE\\instituto.sqlite'
    conexion = sqlite3.connect(nra)
    cursor = conexion.cursor()
    idAlumnoEliminar = int(input('Ingrese id alumno elimar? '))
    cursor.execute("DELETE FROM Alumno WHERE idAlumno = ?",(idAlumnoEliminar,))
    conexion.commit()
    conexion.close()

def actualizar_registro():
    '''
    nra = 'SQLITE\\instituto.sqlite'
    conexion = sqlite3.connect(nra)
    '''
    conexion = get_conexion()
    if conexion != None:
        cursor = conexion.cursor()
        idAlumnoActualizar = int(input('Ingrese id alumno actualizar? '))
        nombre = input('Ingrese nuevo nombre? ')
        cursor.execute('UPDATE Alumno SET nombre = ? WHERE idAlumno = ?', (nombre, idAlumnoActualizar))
        conexion.commit()
        conexion.close()
    else:
        print("ERROR: CONEXION")

def get_conexion():
    nra = 'SQLITE\\instituto.sqlite'
    try:
        if path.exists(nra):
            conexion = sqlite3.connect(nra)
        else:
            conexion = None
        return conexion
    except Error:
        return None
    

if __name__ == "__main__":
   os.system('cls')
   actualizar_registro()
   mostrar_registro()