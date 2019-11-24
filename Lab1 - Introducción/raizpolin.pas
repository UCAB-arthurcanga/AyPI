program raizpolin;
uses crt;
var a,b,c:integer;
  discrim,raiz:real;

begin
  writeln('Suponga un polinomio de segundo grado, es decir, de la forma: ax^2+bx+c');
  writeln('Este programa tiene como finalidad hallar la raiz positiva de este polinomio usando el metodo de resolvente');
  writeln('Introduzca el valor del coeficiente a del polinomio');
  readln(a);
  writeln('Introduzca el valor del coeficiente b del polinomio');
  readln(b);
  writeln('Introduzca el valor del coeficiente c del polinomio');
  readln(c);
  discrim:=((b*b)-4*a*c);
  if (discrim<0) then
     writeln('El discriminante es negativo. No hay raices reales para este polinomio')
  else begin
      raiz:=((-b+sqrt(discrim))/(2*a));
      writeln('La raiz positiva del polinomio es ',raiz:0:2,' (mostrados solo 2 decimales)');
  end;
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

