program ejemplocotidiano;
uses crt;
var dia:char;

begin
  writeln('Este programa muestra cuales son las tareas y actividades asignadas segun del dia de la semana segun mi horario.');
  writeln('Introduzca el caracter inicial de un dia de la semana (use a X para los miercoles)');
  readln(dia);
  case dia of
  'L': writeln('El dia es lunes, tienes logica de 9 a 11 y una tutoria que dar de 1 a 3');
  'l': writeln('El dia es lunes, tienes logica de 9 a 11 y una tutoria que dar de 1 a 3');
  'M': writeln('El dia es martes, tienes teoria de algoritmos de 7 a 9, logica de 9 a 11, fisica de 2 a 4 y liderazgo de 4 a 6');
  'm': writeln('El dia es martes, tienes teoria de algoritmos de 7 a 9, logica de 9 a 11, fisica de 2 a 4 y liderazgo de 4 a 6');
  'X': writeln('El dia es miercoles, tienes calculo de 7 a 10 y fisica de 10 a 1');
  'x': writeln('El dia es miercoles, tienes calculo de 7 a 10 y fisica de 10 a 1');
  'J': writeln('El dia es jueves, tienes calculo de 7 a 9 y teoria de algoritmos de 10 a 12');
  'j': writeln('El dia es jueves, tienes calculo de 7 a 9 y teoria de algoritmos de 10 a 12');
  'V': writeln('El dia es viernes, tienes calculo de 7 a 9, tutoria de fisica de 9 a 11 y laboratorio de algoritmos de 2 a 4');
  'v': writeln('El dia es viernes, tienes calculo de 7 a 9, tutoria de fisica de 9 a 11 y laboratorio de algoritmos de 2 a 4');
  'S': writeln('El dia es sabado, tienes el dia libre, revisa tu agenda para ver si tienes actividades pendientes');
  's': writeln('El dia es sabado, tienes el dia libre, revisa tu agenda para ver si tienes actividades pendientes');
  'D': writeln('El dia es domingo, tienes el dia libre, revisa tu agenda para ver si tienes actividades pendientes');
  'd': writeln('El dia es domingo, tienes el dia libre, revisa tu agenda para ver si tienes actividades pendientes');
  else writeln('El numero introducido no corresponde a ningun dia. El programa finalizo');
  end;
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

