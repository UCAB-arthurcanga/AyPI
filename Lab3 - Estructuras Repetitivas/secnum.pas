program secnum;
uses crt;
var n,i,j,k,compar,icompar,max,min,parcount,imparcount,primecount:integer;
  porcpar,porcimp:real;

begin
  writeln('El siguiente programa chequea en una secuencia de numeros lo siguiente:');
  writeln('1. Porcentaje de pares e impares introducidos');
  writeln('2. Veces que se repite un numero dado');
  writeln('3. Numero maximo y minimo de la secuencia');
  writeln('4. Cuenta la cantidad de primos introducidos');
  writeln('El numero a comparar debe ser introducido por el usuario. A partir de alli pide numeros de la secuencia (finaliza cuando se introduce el 0)');
  writeln('Introduzca el numero a comparar con los demas');
  readln(compar);
  i:=1;
  parcount:=0;
  imparcount:=0;
  icompar:=0;
  primecount:=0;
  porcpar:=0;
  porcimp:=0;
  writeln('Introduzca un numero');
  readln(n);
  while n<>0 do begin
    porcpar:=n mod 2;
    if (porcpar=0) then
       parcount:=parcount+1
    else imparcount:=imparcount+1;
    if (n=compar) then icompar:=icompar+1;
    if (i=1) then begin
    max:=n;
    min:=n;
    end
    else if (n>max) then max:=n
    else if (n<min) then min:=n;
    i:=i+1;
    if (n<>1) or (n<>-1) then
    j:=abs(n-1);
    if (n>=3) OR (n<=3) then begin
       repeat
             k:=abs(n mod j);
             if (k<>0) then j:=j-1
       until (k=0) OR (j=1);
       if k<>0 then primecount:=primecount+1
    end;
    if (n<>0) AND ((n=2) OR (n=-2) OR (n=1) OR (n=-1)) then primecount:=primecount+1;
    writeln('Introduzca un numero (0 para proceder con el conteo)');
    readln(n);
  end;
  if (i<>1) then begin
  porcpar:=(parcount*100)/(i-1);
  porcimp:=100-porcpar;
  end;
  writeln('Introdujo ',i-1,' numeros. Hubo ',porcpar:0:2,'% de pares y ',porcimp:0:2,'% de impares');
  writeln('El mayor numero introducido fue ',max,' y el menor fue ',min);
  writeln('Se introdujeron ',icompar,' veces el numero ', compar);
  writeln('Se introdujeron ',primecount,' primos');
  writeln('Pulse cualquier tecla para salir...');
  readkey();
end.

