program golf;
uses crt;
var name: array of string;
  game: array of array of integer;
  result: array of integer;
  i,j,n,aux: integer;
  auxname:string;

begin
  writeln('Este programa calcula el total de golpes en un juego de golf de 18 hoyos por jugador y ordena los resultados de primer a ultimo lugar');
  write('Introduzca la cantidad de jugadores: ');
  readln(n);
  setlength(name, n);
  setlength(game, n, 18);
  setlength(result, n);
  for i:=0 to n-1 do result[i]:=0;
  for i:=0 to n-1 do begin
    write('Introduzca el nombre del jugador ',i+1,': ');
    readln(name[i]);
  end;
  for i:=0 to n-1 do begin
    clrscr();
    for j:=1 to 18 do begin
      write('Introduzca la cantidad de golpes para el hoyo ',j,' de ',name[i],': ');
      readln(game[i,j]);
      result[i]:=result[i]+game[i,j];
    end;
  end;
  for i:=2 to n do begin
    for j:=0 to n-i do begin
      if result[j] > result[j+1] then begin
        aux:=result[j];
        result[j]:=result[j+1];
        result[j+1]:=aux;
        auxname:=name[j];
        name[j]:=name[j+1];
        name[j+1]:=auxname;
      end;
    end;
  end;
  clrscr();
  writeln('Resultados finales de mejor a peor:');
  for i:=1 to n do begin;
      writeln(i,'. ',name[i-1],' - ',result[i-1],' golpes');
  end;
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

