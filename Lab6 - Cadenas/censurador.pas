program censurador;
uses crt;

function censor(frase,subf:string):string;
 begin
   if (length(frase)=4) and (pos(subf,frase)<>0) then censor:='****'
   else censor:=frase;
 end;

var cadena,auxcadena,sub:string;
  i,space:integer;
  palabras: array of string;

begin
  writeln('Ingrese una oracion: ');
  readln(cadena);

  writeln('Ingrese el substring a buscar: ');
  readln(sub);
  while length(sub)>4 do begin
    writeln('El substring ingresado es muy largo. Ingrese uno de 4 o menos caracteres.');
    readln(sub);
  end;
  space:=0;
  for i:=1 to length(cadena) do
    if cadena[i]=' ' then space:=space+1;
  setlength(palabras, space+1);
  auxcadena:=cadena;
  for i:=0 to space do begin
    if i=space then palabras[i]:=copy(auxcadena,1,length(auxcadena)) else
    palabras[i]:=copy(auxcadena,1,pos(' ',auxcadena)-1);
    delete(auxcadena,1,pos(' ',auxcadena));
  end;
  auxcadena:='';
  for i:=0 to space do palabras[i]:=censor(palabras[i],sub);
  for i:=0 to space do begin
    if i=0 then auxcadena:=palabras[i]+' ' else
      if i=space then auxcadena:=auxcadena+palabras[i] else
      auxcadena:=auxcadena+palabras[i]+' ';
  end;
  writeln('La nueva cadena sera la siguiente: ');
  writeln(auxcadena);
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

