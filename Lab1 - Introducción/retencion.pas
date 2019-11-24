program retencion;
uses crt;
var nombre: string;
  sexo: char;
  day,month,year:shortint;
  salariobase,islr,salariofin:real;
begin
  writeln('Este programa calcula la retencion de salario de un trabajador y muestra un recibo de pago');
  writeln('Introduzca el nombre del empleado');
  readln(nombre);
  writeln('Introduzca su sexo (M o F)');
  readln(sexo);
  if (NOT((sexo='M') OR (sexo='F') or (sexo='m') OR (sexo='f'))) then begin
     writeln('El programa ha finalizado de manera abrupta.');
     writeln('Ha introducido un caracter para el sexo no reconocido');
     writeln('Pruebe introduciendo M o F');
  end
  else begin
       writeln('Introduzca el dia, el mes y el ano (2 digitos cada uno) de ingreso del empleado');
       readln(day,month,year);
       writeln('Introduzca su salario base');
       readln(salariobase);
       writeln('Introduzca su porcentaje de retencion del ISLR');
       readln(islr);
       salariofin:=(salariobase-((salariobase*islr)/100));
       writeln('                        RETENCION DEL ISLR');
       writeln('    Nombre del trabajador: ',nombre,'    Sexo: ',sexo);
       writeln('    Sueldo Mensual (Bs): ',salariobase:0:2,'     Porcentaje retencion: ', ISLR:0:2,'%');
       writeln('                  Impuesto retenido (Bs): ', ((salariobase*islr)/100):0:2);
       writeln('                  Total a cobrar (Bs): ',salariofin:0:2);
       writeln(' ');
  end;
  writeln('Pulse cualquier letra para salir...');
  readkey();
end.

