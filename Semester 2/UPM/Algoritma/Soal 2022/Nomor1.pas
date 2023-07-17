program Nomor1;
uses crt;

var nilai: integer;

function function_kali(a, b: integer): integer;
begin
    function_kali := a * b;
end;

begin
    clrscr;
    nilai := function_kali(10,50);
    writeln(nilai);
    readln;
end.
