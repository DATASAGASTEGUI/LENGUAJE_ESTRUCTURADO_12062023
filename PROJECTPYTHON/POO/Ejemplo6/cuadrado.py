
import math
from figurageometrica import FiguraGeometrica

class Cuadrado(FiguraGeometrica):

      def __init__(self, lado=None):
          self.lado = lado

      def perimetro(self):
          return 4 * self.lado
      
      def area(self):
          return math.pow(self.lado,2)
      
      def soy(self):
          return 'Cuadrado'