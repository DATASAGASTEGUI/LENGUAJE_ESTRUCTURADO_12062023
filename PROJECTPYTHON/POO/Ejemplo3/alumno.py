

class Alumno:
      def __init__(self,idAlumno,nombre,edad,casado):
            self.idAlumno = idAlumno
            self.nombre = nombre
            self.edad = edad
            self.casado = casado

      @staticmethod
      def cabecera():
          print('%-8s  %-10s  %4s  %-6s' % ('IDALUMNO','NOMBRE','EDAD','CASADO'))
          print('%-8s  %-10s  %4s  %-6s' % ('--------','------','----','------'))

      def cuerpo(self):
          print('%-8s  %-10s  %4d  %-6s' % (self.idAlumno,self.nombre,self.edad,self.casado))