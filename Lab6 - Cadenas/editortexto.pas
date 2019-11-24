program editortexto;
uses crt;
var cadena,auxcadena,sub,subdel: string;
  num,num2,maymin: char;
  ubi: integer;

  function sustituir(subdel_f,sub_f,auxcadena_f:string):string;
  var aux,ubi:integer;
  begin
    while pos(subdel_f,auxcadena_f)<>0 do begin
        aux:=length(subdel_f);
        ubi:=pos(subdel_f,auxcadena_f);
        delete(auxcadena_f,ubi,aux);
        insert(sub_f,auxcadena_f,ubi);
      end;
    sustituir:=auxcadena_f;
  end;

  function borrador(sub_f2,auxcadena_f2,cadena_f2:string):string;
  var aux:integer;
  begin
    while pos(sub_f2,auxcadena_f2)<>0 do begin
        aux:=length(sub_f2);
        delete(auxcadena_f2,pos(sub_f2,cadena_f2),aux);
      end;
    borrador:=auxcadena_f2;
  end;

begin
  writeln('Bienvenido al editor de texto.');
  writeln('Ingrese un texto');
  readln(cadena);
  repeat
  clrscr();
  writeln('Su cadena es la siguiente: ');
  writeln(cadena);
  writeln('Ingrese el numero de lo que desea hacer. Pulse ESC para salir');
  writeln('1. Halla la longitud del texto');
  writeln('2. Borrar una subcadena');
  writeln('3. Localizar una cadena especifica');
  writeln('4. Insertar una subcadena en una posicion');
  writeln('5. Sustituir una cadena por otra');
  writeln('6. Convertir a mayus o minus');
  num2:=readkey;
  if num2=#49 then begin
    writeln('La longitud del texto ingresado es ',length(cadena));
    writeln('Pulse cualquier tecla para continuar. Pulse ESC para salir');
    num2:=readkey;
  end;
  if num2=#50 then begin
    writeln('Ingrese la subcadena a borrar');
    readln(sub);
    auxcadena:=cadena;
    if pos(sub,cadena)=0 then begin
    writeln('Esa subcadena no existe en la cadena original');
    writeln('Pulse cualquier tecla para continuar. Pulse ESC para salir');
    end
    else begin
      auxcadena:=borrador(sub,auxcadena,cadena);
      writeln('La cadena queda de la siguiente manera:');
      writeln(auxcadena);
      writeln('Desea guardar el resultado? Pulse S para si, cualquier otra tecla para continuar');
      num2:=readkey;
      if (num2=#83) or (num2=#115) then cadena:=auxcadena;
      end;
  end;
  if num2=#51 then begin
    writeln('Ingrese la subcadena a localizar');
    readln(sub);
    if pos(sub,cadena)<>0 then
      writeln('La subcadena ingresada esta de la posicion ',pos(sub,cadena),' hasta la posicion ',pos(sub,cadena)+length(sub))
      else writeln('Esa subcadena no existe en la cadena original');
    writeln('Pulse cualquier tecla para continuar. Pulse ESC para salir');
    num2:=readkey;
  end;
  if num2=#52 then begin
    writeln('Ingrese la subcadena a insertar');
    readln(sub);
    writeln('Ingrese la posicion de la cadena donde insertar la subcadena');
    readln(ubi);
    auxcadena:=cadena;
    insert(sub,auxcadena,ubi);
    clrscr();
    writeln('La cadena queda de la siguiente forma');
    writeln(auxcadena);
    writeln('Desea guardar el resultado? Pulse S para si, cualquier otra tecla para continuar');
    num2:=readkey;
    if (num2=#83) or (num2=#115) then cadena:=auxcadena;
  end;
  if num2=#53 then begin
    writeln('Ingrese la subcadena que quiere eliminar');
    readln(subdel);
    auxcadena:=cadena;
    if pos(subdel,auxcadena)=0 then writeln('Esa subcadena no existe en la cadena original')
    else begin
    writeln('Ingrese la subcadena que quiere colocar en su lugar');
    readln(sub);
    auxcadena:=sustituir(subdel,sub,auxcadena);
    clrscr();
    writeln('La cadena queda de la siguiente forma');
    writeln(auxcadena);
    writeln('Desea guardar el resultado? Pulse S para si, cualquier otra tecla para continuar');
    num2:=readkey;
    if (num2=#83) or (num2=#115) then cadena:=auxcadena;
    end;
  end;
  if num2=#54 then begin
    writeln('Indique a que quiere convertir la cadena. M para mayus y N para minus');
    maymin:=readkey;
    if (maymin=#77) or (maymin=#109) then begin
      auxcadena:=upcase(cadena);
      writeln('La cadena queda de la siguiente forma');
      writeln(auxcadena);
      writeln('Desea guardar el resultado? Pulse S para si, cualquier otra tecla para continuar');
      num2:=readkey;
      if (num2=#83) or (num2=#115) then cadena:=auxcadena;
    end;
    if (maymin=#76) or (maymin=#110) then begin
      auxcadena:=lowercase(cadena);
      writeln('La cadena queda de la siguiente forma');
      writeln(auxcadena);
      writeln('Desea guardar el resultado? Pulse S para si, cualquier otra tecla para continuar');
      num2:=readkey;
      if (num2=#83) or (num2=#115) then cadena:=auxcadena;
    end;
  end;
  num:=num2;
  until num=#27;
end.

