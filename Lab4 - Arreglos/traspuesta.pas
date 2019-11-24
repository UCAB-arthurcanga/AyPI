program traspuesta;
uses crt;
var i,j:integer;
  M: array[1..3,1..4] of integer;
  M_TRANS: array[1..3,1..4] of integer;

begin
  writeln('Este programa halla la matriz traspuesta de una matriz 3x4 introducida por el usuario');
  for i:=1 to 3 do begin
    for j:=1 to 4 do begin
      writeln('Ingrese el elemento ',i,',',j);
      readln(M[i,j]);
      M_TRANS[j,i]:=M[i,j];
    end;
  end;
  writeln('La Matriz inicial introducida es la siguiente');
  for i:=1 to 3 do begin
    for j:=1 to 4 do begin
      write(M[i,j],' ');
    end;
    writeln();
  end;
  writeln('La Matriz traspuesta por consiguiente es ');
  for i:=1 to 4 do begin
    for j:=1 to 3 do begin
      write(M_TRANS[i,j],' ');
    end;
    writeln();
  end;
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

