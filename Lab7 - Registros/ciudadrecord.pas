program ciudadrecord;
uses crt;
type citizen=record
     ci:integer;
     name:string;
     lname:string;
     age:integer;
     sex:char;
     ecivil:char;
     nac:char;
     pplano:char;
     smilitar:char;
     end;
var ciudad: array of citizen;
  key:char;
  i:integer;

procedure intro(var input:char);
begin
  writeln('Favor introduzca un caracter valido');
  readln(input);
  input:=upcase(input);
end;

begin
     i:=1;
     repeat
       setlength(ciudad,i);
       clrscr();
       with ciudad[i-1] do begin
         writeln('Introduzca la CI del ciudadano ',i);
         readln(ci);
         writeln('Introduzca el nombre del ciudadano ',i);
         readln(name);
         writeln('Introduzca el apellido del ciudadano ',i);
         readln(lname);
         writeln('Introduzca la edad del ciudadano ',i);
         readln(age);
           while (age<0) or (age>100) do begin
             writeln('Favor introduzca una edad valida');
             readln(age);
           end;
         writeln('Introduzca el sexo del ciudadano ',i);
         readln(sex);
         sex:=upcase(sex);
           while (sex<>'H') and (sex<>'M') do intro(sex);
         writeln('Introduzca el estado civil del ciudadano ',i,' (S para soltero, C para casado, V para viudo y D para divorciado)');
         readln(ecivil);
         ecivil:=upcase(ecivil);
           while (ecivil<>'S') and (ecivil<>'C') and (ecivil<>'V') and (ecivil<>'D') do intro(ecivil);
         writeln('Introduzca la nacionalidad del ciudadano ',i,' (V para venezolano, E para extranjero, N para nacionalizado)');
         readln(nac);
         nac:=upcase(nac);
         while (nac<>'V') and (nac<>'E') and (nac<>'N') do intro(nac);
         if (sex='H') then begin
           writeln('Introduzca si el ciudadano ',i,' sufre de pie plano (S/N)');
           readln(pplano);
           pplano:=upcase(pplano);
           while (pplano<>'S') and (pplano<>'N') do intro(pplano);
           writeln('Introduzca si el ciudadano ',i,' presta, ha prestado o no servicio militar (P/H/N)');
           readln(smilitar);
           smilitar:=upcase(smilitar);
           while (smilitar<>'P') and (smilitar<>'H') and (smilitar<>'N') do intro(smilitar);
         end;
       end;
       writeln('Pulse cualquier tecla para seguir ingresando ciudadanos. Pulse ESC para continuar');
       key:=readkey;
       if key<>#27 then i:=i+1;
     until key=#27;
     clrscr();
     writeln('LISTADO DE LOS CIUDADANOS QUE PUEDEN VOTAR');
       for i:=0 to length(ciudad)-1 do begin
         with ciudad[i] do begin
           if (age>=18) and ((nac='V') or (nac='N')) then
             writeln(ci,' - ',name,' ',lname);
         end;
       end;
     writeln('Pulse cualquier tecla para continuar');
     readkey();
     clrscr();
     writeln('LISTADO DE LOS CIUDADANOS QUE PUEDEN PRESTAR EL SERVICIO MILITAR');
       for i:=0 to length(ciudad)-1 do begin
         with ciudad[i] do begin
           if (age>=18) and (age<=60) and (ecivil='S') and (sex='H') and (nac='V') and (smilitar='N') then
             writeln(ci,' - ',name,' ',lname);
         end;
       end;
     writeln('Pulse cualquier tecla para salir...');
     readkey();
end.

