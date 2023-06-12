
class Empleado:

      def __init__(self, dni,nombre,edad,sexo):
          self.dni = dni
          self.nombre = nombre
          self.edad = edad
          self.sexo = sexo

      def __str__(self):
          return f'Me llamo {self.nombre}'