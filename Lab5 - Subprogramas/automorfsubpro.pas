program automorfsubpro;
uses crt;

function longitud(bfunc:integer):integer;
var aux: integer;
begin
aux:=bfunc;
longitud:=0;
repeat
aux:=bfunc div 10;
longitud:=longitud+1
until aux=0;
end;

function poten10(longfunc:integer):integer;
var i:integer;
begin
  poten10:=1;
  for i:=1 to longfunc do poten10:=poten10*10;
end;

procedure automorfico(pot10proc,bproc,expproc:integer; var stringproc: string);
var aux, count, i, morf: integer;
begin
  aux:=bproc;
  count:=0;
  for i:=1 to expproc do begin
      aux:=aux*bproc;
      morf:=aux  mod pot10proc;
      if morf=bproc then count:=count+1;
  end;
  if count=expproc then stringproc:='La base es automorfica'
  else stringproc:='La base no es automorfica';
end;

procedure inputproc(var bproc2,expproc2:integer);
begin
  writeln('Introduzca la base que va a comprobar si es automorfica');
  readln(bproc2);
  writeln('Introduzca el maximo exponente a comprobar si la base es automorfica');
  readln(expproc2);
end;

var base,exp,pot10,long:integer;
  salida: string;
begin
  inputproc(base,exp);
  long:=longitud(base);
  pot10:=poten10(long);
  automorfico(pot10,base,exp,salida);
  writeln(salida);
  readkey();
end.
