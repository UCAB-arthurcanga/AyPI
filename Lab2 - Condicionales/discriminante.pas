program discriminante;
uses crt;
var a,b,c:integer;
  discrim,raiz1,raiz2,x,y:real;

begin
  writeln('Suponga una ecuacion de segundo grado, es decir, de la forma: ax^2+bx+c');
  writeln('Este programa halla las raices de esta ecuacion usando el metodo de resolvente');
  writeln('Introduzca el valor del coeficiente a de la ecuacion');
  readln(a);
  writeln('Introduzca el valor del coeficiente b de la ecuacion');
  readln(b);
  writeln('Introduzca el valor del coeficiente c de la ecuacion');
  readln(c);
  if ((a=0) AND (b=0)) then
     writeln('La ecuacion es degenerada')
     else if ((a=0) AND (b<>0))
          then writeln('Solo hay una raiz para la ecuacion ya que es de primer grado. El valor de la raiz es ', (-c/b):0:2,' (mostrando solo 2 decimales)')
          else begin
          discrim:=((b*b)-4*a*c);
          if (discrim<0) then begin
             writeln('El discriminante es negativo. No hay raices reales para esta ecuacion');
             x:=-b/2*a;
             y:= sqrt( abs((b*b)-(4*a*c))/2*a );
             writeln('Las raices son complejas cuyos valores son X1:',x:0:2,'+',y:0:2,'i y X2:',x:0:2,'-',y:0:2,'i (mostrando solo 2 decimales)');
             end
             else begin
             raiz1:=((-b+sqrt(discrim))/(2*a));
             raiz2:=((-b-sqrt(discrim))/(2*a));
             writeln('Las raices de la ecuacion son X1: ',raiz1:0:2,' y X2: ',raiz2:0:2,' (mostrados solo 2 decimales)');
             end;
end;
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

