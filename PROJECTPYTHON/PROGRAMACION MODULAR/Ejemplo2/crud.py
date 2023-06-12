

def buscar(idAlumno,alumnos_l):
    alumnobuscar = {}
    for alumno_d in alumnos_l:
        if alumno_d['idAlumno'] == idAlumno:
           alumnobuscar = alumno_d
           break
    return alumnobuscar

def mostrar():
    pass

def eliminar():
    pass

