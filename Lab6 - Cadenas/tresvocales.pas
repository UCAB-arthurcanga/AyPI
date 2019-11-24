program tresvocales;
uses crt;

function vocal(frase:string):integer;
  var a,e,i,o,u:integer;
 begin
   vocal:=0;
   if (pos('a',frase)<>0) or (pos('A',frase)<>0) then a:=1 else a:=0;
   if (pos('e',frase)<>0) or (pos('E',frase)<>0) then e:=1 else e:=0;
   if (pos('i',frase)<>0) or (pos('I',frase)<>0) then i:=1 else i:=0;
   if (pos('o',frase)<>0) or (pos('O',frase)<>0) then o:=1 else o:=0;
   if (pos('u',frase)<>0) or (pos('U',frase)<>0) then u:=1 else u:=0;
   if (a+e+i+o+u)>=3 then vocal:=1 else vocal:=0;
 end;

var cadena,auxcadena:string;
  i,space:integer;
  palabras: array of string;

begin
  writeln('Ingrese un parrafo: ');
  readln(cadena);
  while cadena[length(cadena)]<>'.' do begin
    writeln('El parrafo ingresado no termina en punto. Introduzca uno que termine en punto');
    readln(cadena)
  end;
  space:=0;
  for i:=1 to length(cadena) do
    if cadena[i]=' ' then space:=space+1;
  setlength(palabras, space+1);
  auxcadena:=cadena;
  for i:=0 to space do begin
    if i=space then palabras[i]:=copy(auxcadena,1,length(auxcadena)-1) else
    palabras[i]:=copy(auxcadena,1,pos(' ',auxcadena)-1);
    delete(auxcadena,1,pos(' ',auxcadena));
  end;
  writeln('Las palabras con 3 vocales o mas distintas son las siguientes: ');
  for i:=0 to space do
    if vocal(palabras[i])=1 then writeln(palabras[i]);
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

