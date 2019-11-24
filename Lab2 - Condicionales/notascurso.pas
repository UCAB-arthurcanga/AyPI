program notascurso;
uses crt;
var nota:shortint;

begin
  writeln('Este programa muestra la nota en letras de un estudiante dada su calificacion numerica');
  writeln('Introduzca la media de notas del estudiante');
  readln(nota);
  if (nota>=90) then writeln('La nota del estudiante es A')
  else if ((nota>=80) AND (nota<=89)) then writeln('La nota del estudiante es B')
  else if ((nota>=70) AND (nota<=79)) then writeln('La nota del estudiante es C')
  else if ((nota>=60) AND (nota<=69)) then writeln('La nota del estudiante es D')
  else if (nota<=59) then writeln('La nota del estudiante es E');
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

