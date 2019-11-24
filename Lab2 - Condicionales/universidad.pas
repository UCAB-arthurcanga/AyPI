program universidad;
uses crt;
var promedio,matricula:real;
  nivel,preciocredit:integer;

begin
  writeln('Indique si es un estudiante de pregrado o postgrado (coloque 1 para pregrado o 2 para postgrado)');
  readln(nivel);
  if (nivel=1) then begin
    preciocredit:=150000;
    writeln('Indique su promedio');
    readln(promedio);
    if (promedio>=15.5) then begin
      writeln('Cursara 28 creditos este semestre y por su rendimiento academico obtendra un descuento del 20%');
      matricula:=preciocredit*28;
      writeln('Precio inicial a pagar: ',matricula:0:2,'Bs.');
      matricula:=matricula-(matricula*0.2);
      writeln('Precio a pagar luego del descuento: ',matricula:0:2,'Bs.');
    end;
    if ((promedio>=14) AND (promedio<15.5)) then begin
      writeln('Cursara 25 creditos este semestre y por su rendimiento academico obtendra un descuento del 10%');
      matricula:=preciocredit*25;
      writeln('Precio inicial a pagar: ',matricula:0:2,'Bs.');
      matricula:=matricula-(matricula*0.1);
      writeln('Precio a pagar luego del descuento: ',matricula:0:2,'Bs.');
    end;
    if ((promedio>=12.5) AND (promedio<14)) then begin
      writeln('Cursara 20 creditos este semestre y por su rendimiento academico no obtendra ningun descuento');
      matricula:=preciocredit*20;
      writeln('Precio a pagar: ',matricula:0:2,'Bs.');
    end;
    if ((promedio>=10) AND (promedio<12.5)) then begin
      writeln('Cursara 15 creditos este semestre y por su rendimiento academico no obtendra ningun descuento');
      matricula:=preciocredit*15;
      writeln('Precio a pagar: ',matricula:0:2,'Bs.');
    end;
    if (promedio<10) then begin
      writeln('Debido a su rendimiento acadamico no podra matricularse este semestre. Lo lamentamos mucho');
    end;
  end
  else if (nivel=2) then begin
    preciocredit:=300000;
    writeln('Ingrese su promedio');
    readln(promedio);
    if (promedio>=4.5) then begin
      writeln('Cursara 20 creditos este semestre y por su rendimiento academico obtendra un descuento del 20%');
      matricula:=preciocredit*20;
      writeln('Precio inicial a pagar: ',matricula:0:2,'Bs.');
      matricula:=matricula-(matricula*0.2);
      writeln('Precio a pagar luego del descuento: ',matricula:0:2,'Bs.');
    end;
    if (promedio<4.5) then begin
      writeln('Cursara 10 creditos este semestre y por su rendimiento academico no obtendra ningun descuento');
      matricula:=preciocredit*10;
      writeln('Precio a pagar: ',matricula:0:2,'Bs.');
    end;
  end
      else writeln('Introdujo un valor no reconocido para el nivel. El programa ha finalizado abruptamente');
  writeln('Pulse cualquier tecla para salir');
  readkey();
end.

