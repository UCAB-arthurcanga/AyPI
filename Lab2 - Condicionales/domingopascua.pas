program domingopascua;
uses crt;
var a,b,c,d,e,n,year:integer;

begin
  writeln('Este programa indica que dia del mes de Marzo o Abril es el domingo de Pascua.');
  writeln('Introduzca el ano al que quiere calcular el dia en que cae el domingo de Pascua');
  readln(year);
  a:=year mod 19;
  b:=year mod 4;
  c:=year mod 7;
  d:=(19*a+24) mod 30;
  e:=(2*b+4*c+6*d+5) mod 7;
  n:=(22+d+e);
  if (n<=31) then
  writeln('El domingo de Pascua para el ano ',year,' caera el dia ',n,' de marzo')
  else writeln('El domingo de Pascua para el ano ',year,' caera el dia ',n-31,' de abril');
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

