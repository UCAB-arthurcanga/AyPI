program operaciones;
uses crt;
var num1,num2:integer;

begin
  writeln('Este programa calcula la suma, resta, multiplicacion, division, cociente y resto dados dos numeros');
  writeln('Introduzca el primer numero');
  readln(num1);
  writeln('Introduzca el segundo numero');
  readln(num2);
  writeln('El resultado de la suma de los dos numeros es de ',num1+num2);
  writeln('El resultado de la resta de los dos numeros es de ',num1-num2);
  writeln('El resultado del producto de los dos numeros es de ',num1*num2);
  writeln('El resultado de la division real de los dos numeros es de ',num1/num2:0:2,' (mostrados solo 2 decimales)');
  writeln('El resultado del cociente de la division entera de los dos numeros es de ',num1 div num2);
  writeln('El resultado del resto de la division entera de los dos numeros es de ',num1 mod num2);
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

