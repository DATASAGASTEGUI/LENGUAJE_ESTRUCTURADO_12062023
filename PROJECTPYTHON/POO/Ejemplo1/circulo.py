import math

class Circulo:
      
      @staticmethod
      def perimetro(radio):
          return round(2 * math.pi * radio,2)
      
      @staticmethod
      def area(radio):
          return round(math.pi * math.pow(radio,2),2)