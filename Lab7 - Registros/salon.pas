program salon;
uses crt;
type
  estudiantes=record
    name:string;
    lname:string;
    ci:string[8];
    carrera:string;
    nota:array of char;
  end;
var
  alumnos:array of estudiantes;
  objetivos:array of string;
  i,j,n,n_obj:integer;
begin
 writeln('Ingrese la cantidad de alumnnos');
 readln(n);
 setLength(alumnos,n);
 writeln('Ingrese la cantidad de objetivos a evaluar');
 readln(n_obj);
 setlength(objetivos,n_obj);
 for i:=0 to n-1 do setlength(alumnos[i].nota,n_obj);
 for i:=0 to n_obj-1 do begin
  writeln('Ingrese el nombre del objetivo ',i+1);
  readln(objetivos[i]);
  end;
 for i:=0 to n-1 do begin
  clrscr();
    with alumnos[i] do begin
       writeln('Ingrese el nombre del alumno ',i+1);
       readln(name);
       writeln('Ingrese el apellido del alumno ',i+1);
       readln(lname);
       writeln('Ingrese la cedula de ',name,' ',lname);
       readln(ci);
       writeln('Ingrese la carrera de ',name,' ',lname);
       readln(carrera);
     end;
       for j:=0 to n_obj-1 do begin
          writeln('Ingrese si ',alumnos[i].name,' ',alumnos[i].lname,' aprobo el siguiente objetivo:');
          writeln(j+1,'. ',objetivos[j]);
          readln(alumnos[i].nota[j]);
          alumnos[i].nota[j]:=upcase(alumnos[i].nota[j]);
          while (alumnos[i].nota[j]<>'S') and (alumnos[i].nota[j]<>'N') do
          begin
           writeln('Ingrese una respuesta valida (S/N)');
           readln(alumnos[i].nota[j]);
          end;
        end;
     end;
  writeln();
  clrscr();
  writeln('Listado de objetivos reprobados y aprobados');
  for i:=0 to n-1 do
   begin
    with alumnos[i] do begin
     if (i+1 mod 3)=0 then begin
       readkey();
       clrscr();
     end;
     writeln(name,' ',lname);
     writeln('C.I. ',ci,' Carrera: ',carrera);
     end;
     for j:=0 to n_obj-1 do
     begin
       if alumnos[i].nota[j]='N' then
         writeln(objetivos[j],': Reprobado')
       else
         writeln(objetivos[j],': Aprobado');
       end;
     writeln('');
   end;
 readkey();
end.

