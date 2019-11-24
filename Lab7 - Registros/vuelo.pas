program vuelo;
uses crt;
type
  cliente=record
    nombre:string;
    apellido:string;
    cdO:string[3];
    cdD:string[3];
    apO:string[3];
    apD:string[3];
    codfly:string[8];
    fecha:record
      dd:byte;
      mm:byte;
      end;
    horaB,horaD:record
        hh:byte;
        mm:byte;
        end;
    puerta:char;
    grupo:char;
    asiento:string[3];
    clase:string;
    end;
var lufthansa: array of cliente;
n,i:integer;
key:char;
begin
      writeln('Ingrese la cantidad de pasajeros del año fiscal de Lufthansa');
      readln(n);
      setlength(lufthansa,n);
      for i:=0 to n-1 do begin
      with lufthansa[i] do begin
      writeln('Ingrese el nombre del pasajero ',i+1);
      readln(nombre);
      writeln('Ingrese el apellido de pasajero ',i+1);
      readln(apellido);
      writeln('Ingrese el codigo de la ciudad de origen ',i+1);
      readln(cdO);
      writeln('Ingrese el codigo de la ciudad de destino ',i+1);
      readln(cdD);
      writeln('Ingrese el codigo del aeropuerto de origen ',i+1);
      readln(apO);
      writeln('Ingrese el codigo del aeropuerto de destino ',i+1);
      readln(apD);
      writeln('Ingrese el codigo del vuelo ',i+1);
      readln(codfly);
      writeln('Ingrese la fecha del vuelo (primero dia, luego mes)');
      readln(fecha.dd);
      readln(fecha.mm);
      writeln('Ingrese la hora de abordaje (primero hora y luego minutos)');
      readln(horaB.hh);
      readln(horaB.mm);
      writeln('Ingrese la hora de salida (primero hora y luego minutos)');
      readln(horaD.hh);
      readln(horaD.mm);
      writeln('Ingrese la puerta de abordaje del vuelo ',i+1);
      readln(puerta);
      writeln('Ingrese el grupo de abordaje del vuelo ',i+1);
      readln(grupo);
      writeln('Ingrese el asiento del pasajero del vuelo ',i+1);
      readln(asiento);
      writeln('Ingrese la clase del asiento del vuelo ',i+1);
      readln(clase);
      end;
      clrscr();
      end;
    writeln('Ingrese un numero de pasajero (Esc para salir)');
    readln(i);
    key:=readkey;
     if i>n then writeln('Ese pasajero no se encuentra registrado en la data')
     else begin
      repeat
      writeln('Datos del pasajero ',i);
      with lufthansa[i-1] do begin
      writeln(nombre,', ',apellido);
      writeln('Origen: ',cdO,' - ',apO);
      writeln('Destino: ',cdD,' - ',apD);
        with horaB do
      writeln('Hora Boarding: ',hh,':',mm);
        with horaD do
      writeln('Hora Salida: ',hh,':',mm);
        with fecha do
      writeln('Fecha del vuelo: ',dd,'/',mm);
      writeln('Codigo del vuelo: ',codfly);
      writeln('Puerta: ',puerta,'. Grupo: ',grupo);
      writeln('Asiento: ',asiento,'. Clase: ',clase);
      end;
      writeln('Ingrese otro numero o pulse ESC para salir');
      readln(i);
      key:=readkey;
      while i>n do begin
      writeln('Ese pasajero no se encuentra registrado en la data. Ingrese otro valor');
      readln(i);
      end;
      until key=#27;
     end;
end.

