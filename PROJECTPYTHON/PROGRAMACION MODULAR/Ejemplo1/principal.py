import os

from util import getPerimetro, getArea, redondear2decimales

if __name__ == "__main__":
   os.system('cls')
   radio = float(input('Ingrese el radio? '))
   perimetro = getPerimetro(radio)
   area = getArea(radio)
   print('Perimetro: ', redondear2decimales(perimetro))
   print('Area     : ', redondear2decimales(area))