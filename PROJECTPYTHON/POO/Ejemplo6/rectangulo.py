from figurageometrica import FiguraGeometrica

class Rectangulo(FiguraGeometrica):

      def __init__(self, largo=None, ancho=None):
          self.largo = largo
          self.ancho = ancho

      def perimetro(self):
          return 2 * self.largo + 2 * self.ancho
      
      def area(self):
          return self.largo * self.ancho
      
      def soy(self):
          return 'Rectangulo'