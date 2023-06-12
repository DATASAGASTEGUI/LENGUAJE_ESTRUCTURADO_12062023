from empleado import Empleado

class Supervisor(Empleado):
      
      def __init__(self, dni,nombre,edad,sexo,departamento):
          super().__init__(dni,nombre,edad,sexo)
          self.departamento = departamento
      
      @staticmethod
      def supervisar():
          print('Superviso a todos los empleados')


     
