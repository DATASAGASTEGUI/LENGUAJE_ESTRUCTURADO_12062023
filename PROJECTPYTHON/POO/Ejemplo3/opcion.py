from alumno import Alumno

class Opcion:

      @staticmethod
      def opcion1(alumnos_l):
          Alumno.cabecera()
          for alumno in alumnos_l:
              alumno.cuerpo()
            