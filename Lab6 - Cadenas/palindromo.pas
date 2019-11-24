program palindromo;
uses crt;
var cadena: string;
  i,flag:integer;
begin
  writeln('Ingrese una frase a verificar si es un palindromo');
  readln(cadena);
  cadena:=upcase(cadena);
  while pos(' ',cadena)<>0 do
    delete(cadena,pos(' ',cadena),1);
  flag:=0;
  for i:=1 to length(cadena) do begin
    if cadena[i]=cadena[length(cadena)+1-i] then flag:=flag+1
  end;
  if flag=length(cadena) then writeln('La frase es un palindromo')
  else writeln('La frase no es un palindromo');
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

