program sexofacultad;
uses crt;
var sexo: array [1..7,1..2,1..10] of integer;
  i,j,k,max,auxk:integer;

begin
  writeln('Este programa supone una universidad con 6 cursos y 10 facultades');
  writeln('El programa calcula la cantidad de hombres y mujeres en cada facultad y halla la facultad con el mayor numero de mujeres');
  for k:=1 to 10 do begin
    if k>1 then clrscr();
    for i:=1 to 6 do begin
      for j:=1 to 2 do begin
        if j=1 then begin
          write('Ingrese la cantidad de hombres del curso ',i,', facultad ',k,': ');
          readln(sexo[i,j,k]);
          sexo[7,j,k]:=sexo[7,j,k]+sexo[i,j,k];
        end;
        if j=2 then begin
          write('Ingrese la cantidad de mujeres del curso ',i,', facultad ',k,': ');
          readln(sexo[i,j,k]);
          sexo[7,j,k]:=sexo[7,j,k]+sexo[i,j,k];
        end;
      end;
    end;
  end;
  max:=sexo[7,2,1];
  auxk:=1;
  for k:=2 to 10 do begin
    if max<sexo[7,2,k] then begin
      max:=sexo[7,2,k];
      auxk:=k;
      end;
    end;
  clrscr();
  for k:=1 to 10 do begin
    writeln('Hay ',sexo[7,1,k],' hombres en la facultad ',k);
    writeln('Hay ',sexo[7,2,k],' mujeres en la facultad ',k);
    end;
  writeln('La facultad con mayor numero de mujeres es la facultad ',auxk,' con ',max,' mujeres');
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

