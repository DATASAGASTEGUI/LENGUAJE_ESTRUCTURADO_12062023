
class Clase1:

      def metodo1_1(self):
          print("Método 1 1")

class Clase2:
     
      def metodo2_1(self):
          print("Método 2 1")

class ClaseHijo(Clase1, Clase2):
      def __init__(self, atributo=None):
          self.atributo = atributo
      