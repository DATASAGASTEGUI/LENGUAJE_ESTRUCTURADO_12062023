
import math


class Circulo:

    def __init__(self,r):
        self.__radio = r

    def get_radio(self):
        return self.__radio

    def set_radio(self,r):
        self.__radio = r

    def __str__(self):
        return self.__radio
    
    def perimetro(self):
        return 2 * math.pi * self.__radio
    
    def area(self):
        return math.pi * math.pow(self.__radio,2)
    
    @staticmethod
    def cabecera():
        print('%5s  %10s  %10s  %10s' % ('ID','RADIO','PERIMETRO','AREA'))
        print('%5s  %10s  %10s  %10s' % ('--','-----','---------','----'))

    def cuerpo(self,i):
        print('%5d  %10.2f  %10.2f  %10.2f' % (i,self.get_radio(),self.perimetro(),self.area()))
    
    @staticmethod
    def redondear(numero):
        return round(numero,2)