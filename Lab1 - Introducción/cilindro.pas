program cilindro;
uses crt;
var r,h:integer;
  area,vol:real;
CONST
pi = 3.1416;

begin
  writeln('Este programa calcula el area y el volumen de un cilindro dado el radio de su base y su altura');
  writeln('Introduzca el valor del radio del cilindro.');
  readln(r);
  writeln('Introduzca la altura del cilindro.');
  readln(h);
  area:=(2*(pi+(r*r)))+((2+pi+r)*h);
  vol:=(pi*(r*r))*h;
  writeln('El area del cilindro de radio ',r,' y altura ',h,' es de: ',area:0:4,' unidades cuadradas');
  writeln('El volumen del cilindro de radio ',r,' y altura ',h,' es de: ',vol:0:4,' unidades cubicas');
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

