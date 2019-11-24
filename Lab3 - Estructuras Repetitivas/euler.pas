program euler;
uses crt,math;
var n,k,f:int64;
  i:integer;
  e:extended;

begin
  writeln('Este programa tiene como funcion calcular el valor de la enesima potencia de e a traves de la Serie de Taylor');
  writeln('Las series de Taylor son expresiones que representan funciones polinomicas como una suma de valores elevados a una potencia entre el factorial');
  writeln('Estas sumas son infinitas. Mientras mayor sea la cantidad de iteraciones, mayor sera la exactitud del resultado');
  writeln('Es necesaria la cantidad de iteraciones para tener el nivel de exactitud de e');
  writeln('NOTA: En cierto punto al incrementar la cantidad de iteraciones puede aumentar la inexactitud del valor real');
  writeln('Se recomienda usar un rango entre 10 y 12 iteraciones para mayor exactitud');
  f:=1;
  i:=1;
  writeln('Introduzca el numero el cual va a ser la potencia de e');
  readln(n);
  writeln('Introduzca la cantidad de iteraciones para la serie de Taylor');
  readln(k);
    while k<1 do begin
    writeln('La cantidad de iteraciones tiene que ser un entero positivo');
    readln(k);
    end;
  e:=1;
  for i:=1 to k do begin
    f:=f*i;
    e:=e+((power(n,i))/f);
    end;
  writeln('El valor de e^',n,' es de ',e:0:5, '(solo se muestran 5 decimales)');
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

