program amigossubpro;
uses crt;

procedure calculo(numa,numb:integer; var salidaproc: string);
var aux1,aux2,sumdigit1,sumdigit2:integer;
begin
     aux1:=sqr(numa);
     aux2:=sqr(numb);
     sumdigit1:=0;
     sumdigit2:=0;
     repeat
         sumdigit1:=sumdigit1 + (aux1 mod 10);
         aux1:=aux1 div 10
     until aux1=0;
     repeat
    sumdigit2:=sumdigit2 + (aux2 mod 10);
    aux2:=aux2 div 10
until aux2=0;
if (sumdigit2=numa) and (sumdigit1=numb) then salidaproc:='Los numeros introducidos son amigos cuadraticos'
else salidaproc:='Los numeros introducidos no son amigos cuadraticos';
end;

var num1,num2:integer;
  salida: string;

begin
     writeln('Introduzca el primer numero');
     readln(num1);
     writeln('Introduzca el segundo numero');
     readln(num2);
     calculo(num1,num2,salida);
     writeln(salida);
     readkey();
end.

