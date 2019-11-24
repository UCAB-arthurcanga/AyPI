program primo;
uses crt;
var n,i,k,prim:longint;

begin
  writeln('Introduzca num');
  readln(n);
  i:=n-1;
  prim:=0;
  if (n>=3) AND (n<=-3) AND (n<>0) then begin
  repeat
    k:=n mod i;
    if (k<>0) then i:=i-1;
  until (k=0) OR (i=1);
  if k=0 then prim:=prim+1;
  end
  else if (n<>0) then prim:=prim+1;
  writeln(prim);
  readkey();
end.

