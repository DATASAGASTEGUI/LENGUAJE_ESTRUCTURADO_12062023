import os
from circulo import Circulo
from cuadrado import Cuadrado
from triangulo import Triangulo
from rectangulo import Rectangulo

import random

def ejemplo1():
    circulo = Circulo(5.1)
    cuadrado = Cuadrado(3.1)
    rectangulo = Rectangulo(2.2,5.1)
    triangulo = Triangulo(3.1,4.2)

    fg = [circulo, cuadrado, rectangulo, triangulo]

    # MOSTRAR EL CIRCULO, CUADRADO, RECTANGULO, TRIANGULO
    for objeto in fg:
        if isinstance(objeto,Circulo):
           print(f'{objeto.soy()},{objeto.radio},{round(objeto.area(),2)},{objeto.perimetro()}')
        elif isinstance(objeto,Triangulo):
           print(f'{objeto.soy()},{objeto.base},{objeto.altura},{objeto.area()}.{objeto.perimetro()}')
        elif isinstance(objeto,Rectangulo):
           print(f'{objeto.soy()},{objeto.largo},{objeto.ancho},{objeto.area()}.{objeto.perimetro()}')
        elif isinstance(objeto,Cuadrado):
           print(f'{objeto.soy()},{objeto.lado},{objeto.area()}.{objeto.perimetro()}')
        

def ejemplo2():
    v = ['Triangulo','Circulo','Cuadrado','Rectangulo']#0 1 2 3

    lista = []
    for i in range(100):
        j = random.randint(0,3)
        nombre = v[j]
        if nombre == 'Triangulo':
           tr = Triangulo()
           tr.set_base(5)
           tr.set_altura(3)
           print('Area: ', tr.area())
           print('Perimetro: ', tr.perimetro())
           lista.append(tr)
        elif nombre == 'Cuadrado':
           cu = Cuadrado()
           lista.append(cu)
        elif nombre == 'Rectangulo':
           re = Rectangulo()
           lista.append(re)
        elif nombre == 'Circulo':
           ci = Circulo()
           lista.append(ci)

    ci = 0
    cc = 0
    cr = 0
    ct = 0
    for objeto in lista:
        if objeto.soy() == 'Triangulo':
        #if isinstance(objeto, Triangulo):
           ct += 1
        if isinstance(objeto, Circulo):
           ci += 1
        if isinstance(objeto, Rectangulo):
           cr += 1
        if isinstance(objeto, Cuadrado):
           cc += 1
    print("Triangulo : ", ct)
    print("Circulo   : ", ci)
    print("Rectangulo: ", cr)
    print("Cuadrado  : ", cc)




if __name__ == "__main__":
   os.system('cls')
   ejemplo2()