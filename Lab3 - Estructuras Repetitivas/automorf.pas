program automorf;
uses crt,sysutils;
var n,j,k,expo,num,modul,count,pot10,res:int64;
    nstring:string;
    i:byte;

begin
  writeln('Este programa permite determinar si un numero es automorfico hasta una potencia definida');
  writeln('Un numero automorfico es todo aquel que elevado a cierta cantidad de potencias, sus ultimos digitos siempre son iguales a la base');
  count:=0;
  k:=0;
  j:=0;
  pot10:=1;
  res:=1;
  writeln('Introduzca el numero base');
  readln(n);
  writeln('Introduzca la cantidad de exponentes (ingrese un entero positivo)');
  readln(expo);
  nstring:=inttostr(n);
  num:=length(nstring);
  repeat
    pot10:=pot10*10;
    k:=k+1;
  until k=num;
  for i:=1 to expo do begin
      repeat
        res:=res*n;
        j:=j+1;
      until j=i;
      modul:=res mod pot10;
      if modul=n then count:=count+1;
    end;
  if count=expo then writeln('Es automorfico a la potencia ',expo)
  else writeln('No es automorfico a la potencia ',expo);
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

