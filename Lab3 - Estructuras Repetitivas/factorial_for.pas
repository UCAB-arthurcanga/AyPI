program factorial_for;
uses crt;
var f,n:int64;
  i:integer;


begin
  writeln('Este programa tiene como funcion calcular el valor del factorial de un numero');
  f:=1;
  writeln('Introduzca el numero al cual va a calcularle el factorial');
  readln(n);
  for i:=1 to n do
    f:=f*i;
  writeln('el factorial de ',n,' es ',f);
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

