program Pertemuan_5_Latihan;
uses crt;

type data = record
        isi: string;
        next: ^data;
    end;
    PointerData = ^data;

var head, tail, nowData, test, tast: PointerData; 

procedure insert(elemen: string);
var now: PointerData; 
begin
    new(now); 
    if (head = nil) then 
    begin
        head := now;
    end
    else 
    begin
        tail^.next := now;
    end;
    tail := now;
    tail^.next := nil;
    now^.isi := elemen;
end;

procedure find_first;
begin
    nowData := head; 
    writeln(nowData^.isi); 
end;

procedure find_next;
begin
    if (nowData^.next <> nil) then 
    nowData := nowData^.next;
    writeln(nowData^.isi);
end;

begin
    clrscr;
    insert('Alya');
    insert('Alby');
    insert('Sheina');
    writeln('-- FIFO --');
    write('Data Pertama : '); find_first; 
    write('Data Selanjutnya : '); find_next; 
    write('Data Selanjutnya : '); find_next;
    readln;
end.
