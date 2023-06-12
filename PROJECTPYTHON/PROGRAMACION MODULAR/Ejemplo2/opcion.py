
from util import cabecera, cuerpo, validarSintaxis, validarValor, getListaRango, mostrar
from crud import buscar

def opcion1(alumnos_l):
    cabecera()
    for alumno_d in alumnos_l:
        cuerpo(alumno_d)

def opcion2(alumnos_l):
    idAlumno = input('INGRESE ID ALUMNO A BUSCAR? ')
    alumno_d = buscar(idAlumno,alumnos_l)
    if alumno_d == {}:
       print("ERROR: NO EXISTE ALUMNO CON ESE ID")
    else:
       cabecera()
       cuerpo(alumno_d)

def opcion3():
    pass

def opcion4():
    pass

def opcion5(alumnos_l):
    rango = input('INGRESE RANGO A1-A3? ')
    if validarSintaxis(rango):
        if validarValor(rango):
           lista = []
           listanumeros = getListaRango(rango)
           for i in range(int(listanumeros[0]),int(listanumeros[1])+1):  
               codigo = 'A' + str(i)
               alumnobuscar = buscar(codigo,alumnos_l)
               if alumnobuscar != {}:
                  lista.append(alumnobuscar)
           mostrar(lista)    
        else:
            print('ERROR: RANGO NO VALIDO')
    else:
        print('ERROR: SINTAXIS NO VALIDA')

def opcion6():
    pass