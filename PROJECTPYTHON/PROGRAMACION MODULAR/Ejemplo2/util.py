import re

def cabecera():
    print('%-8s  %-10s  %4s  %-6s' % ('IDALUMNO','NOMBRE','EDAD','CASADO'))
    print('%-8s  %-10s  %4s  %-6s' % (pintarguiones('IDALUMNO'),
                                      pintarguiones('NOMBRE'),
                                      pintarguiones('EDAD'),
                                      pintarguiones('CASADO')))

def cuerpo(alumno_d):
    print('%-8s  %-10s  %4s  %-6s' % (alumno_d['idAlumno'],
                                       alumno_d['nombre'],
                                       alumno_d['edad'],
                                       alumno_d['casado']))

def pintarguiones(cadena):
    s = ''
    for i in range(len(cadena)):
        s = s + '-'
    return s

def validarSintaxis(rango):
    return re.fullmatch('A[0-9]+-A[0-9]+',rango)

def validarValor(rango):
    bandera = False
    cadena = re.sub('A','',rango) #"1-3"       
    lista = cadena.split('-') # ['1','3']
    if int(lista[1]) > int(lista[0]):
       bandera = True
    return bandera

def getListaRango(rango):
    cadena = re.sub('A','',rango) #"1-3"       
    listanumeros = cadena.split('-') # ['1','3']
    return listanumeros

def mostrar(alumnos_l):
    cabecera()
    for alumno_d in alumnos_l:
        cuerpo(alumno_d)