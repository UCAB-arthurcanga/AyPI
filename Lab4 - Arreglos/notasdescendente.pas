program notasdescendente;
uses crt;
var ci: array[1..10] of longint;
  name: array[1..10] of string;
  nota: array[1..10,1..3] of integer;
  prom: array[1..10] of real;
  i,j:integer;
  aux:real;
  auxname:string;

begin
  writeln('Este programa calcula el promedio de 10 estudiantes en una seccion de AyPI y los ordena de mayor a menor');
  for i:=1 to 10 do begin
    write('Ingrese el nombre del estudiante ',i,' : ');
    readln(name[i]);
    write('Ingrese la cedula de ',name[i],' : ');
    readln(ci[i]);
    for j:=1 to 3 do begin
    write('Ingrese la nota ',j,' de ',name[i],': ');
    readln(nota[i,j]);
    prom[i]:=prom[i]+nota[i,j];
    end;
    prom[i]:=prom[i]/3
  end;
  clrscr();
  for i:=9 downto 1 do begin
    for j:=1 to i do begin
      if (prom[j]<prom[j+1]) then begin
        aux:=prom[j];
        prom[j]:=prom[j+1];
        prom[j+1]:=aux;
        auxname:=name[j];
        name[j]:=name[j+1];
        name[j+1]:=auxname;
      end;
    end;
  end;
  writeln('Listado de estudiantes por orden de notas de mayor a menor');
  for i:=1 to 10 do begin
    writeln(name[i],' - ',prom[i]:0:2);
  end;
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

