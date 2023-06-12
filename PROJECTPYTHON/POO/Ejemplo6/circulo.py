import math
from figurageometrica import FiguraGeometrica

class Circulo(FiguraGeometrica):
      
      def __init__(self, radio=None):
          self.radio = radio

      def perimetro(self):
          return 2 * math.pi * self.radio
      
      def area(self):
          return math.pi * math.pow(self.radio,2)
      
      def soy(self):
          return 'Circulo'