
class Alumno:
      
      def __init__(self, idAlumno, nombre):#Constructor
          self.__idAlumno = idAlumno
          self.__nombre = nombre

      def set_idAlumno(self, idAlumno=None):
          if idAlumno == None:
             print('No me haz enviado ningun valor')
          else:
             self.__idAlumno = idAlumno
      
      def set_nombre(self, nombre=None):
          if nombre == None:
             print('No me haz enviado ningun valor')
          else:
             self.__nombre = nombre

      def get_idAlumno(self):
          return self.__idAlumno
      
      def get_nombre(self):
          return self.__nombre
      
      def __str__(self): #toString
          return f'IdAlumno={self.__idAlumno},Nombre={self.__nombre}'
      
      def __del__(self):
          print('Objeto Destruido')

      @staticmethod
      def centro_estudios():
          return 'CAMPUSFP'