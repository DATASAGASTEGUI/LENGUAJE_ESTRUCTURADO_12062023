class Clase1:
      def __init__(self, atributo=None):
          self.atributo = atributo

      def setAtributo(self, atributo):
          self.atributo = atributo

      def metodo1_1(self):
          print("Método 1 1", self.atributo)
    
      def metodo1_2(self):
          print("Método 1 2")

class Clase2:
      def metodo2_1(self):
          print("Método 2 1")
    
      def metodo2_2(self):
          print("Método 2 2")

class Clase3(Clase1, Clase2):
      pass