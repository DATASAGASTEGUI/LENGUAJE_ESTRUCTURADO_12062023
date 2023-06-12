from figurageometrica import FiguraGeometrica

class Triangulo(FiguraGeometrica):
      
      def __init__(self, base=None, altura=None):
          self.base = base
          self.altura = altura

      def perimetro(self):
          return 3 * self.base
      
      def area(self):
          return self.base * self.altura / 2
      
      def soy(self):
          return 'Triangulo'
      
      def set_base(self, base):
          self.base = base

      def set_altura(self, altura):
          self.altura = altura

