program Pertemuan_6;
uses crt;

type
    PList = ^TList;
    TList = record
        info: integer;
        prev: PList;
        next: PList;
    end;

{ Melakukan Insert Data }
procedure insert(var L: PList; x: integer);
var baru, bantu: PList;
begin
    new(baru);
    baru^.info := x;
    baru^.next := nil;
    baru^.prev := nil;
    if L = nil then
        L := baru
    else if (L^.info > x) then
    begin
        baru^.next := L;
        L^.prev := baru;
        L := baru;
    end
    else
    begin
        bantu := L;
        while (bantu^.next <> nil) and (bantu^.next^.info < x) do
            bantu := bantu^.next;
        if (bantu^.next <> nil) then
        begin
            baru^.next := bantu^.next;
            bantu^.next^.prev := baru;
        end;
        bantu^.next := baru;
        baru^.prev := bantu;
    end;
    writeln('Insert ', x, ' success');
    writeln;
end;    

{ Melakukan Display Data Secara Ascending }
procedure display(L: PList);
begin
    if (L <> nil) then
    begin
        while (L <> nil) do
        begin
            write(L^.info:5);
            L := L^.next;
        end;
    end
    else
        writeln('Linked List kosong');
end;

{ Melakukan Display Data Secara Descending }
procedure display2(akhir: PList);
begin
    if (akhir <> nil) then
    begin
        while (akhir^.next <> nil) do
            akhir := akhir^.next;
        while (akhir <> nil) do
        begin
            write(akhir^.info:5);
            akhir := akhir^.prev;
        end;
    end
    else
        writeln('Linked List kosong');
end;

{ Menghitung Jumlah Data }
function count(P: PList): integer;
var jum: integer;
begin
    jum := 0;
    while (P <> nil) do
    begin
        jum := jum + 1;
        P := P^.next;
    end;
    count := jum;
end;

{ Melakukan Delete Data }
procedure delete(var P: PList; x: integer);
var hapus: PList;
begin
    hapus := P;
    if (P <> nil) then
    begin
        while (hapus <> nil) and (hapus^.info <> x) do
            hapus := hapus^.next;
        if (hapus = nil) then
            writeln('Data tidak ditemukan')
            { Delete data awal }
        else if (hapus = P) then
        begin
            if (hapus^.next = nil) then
            begin
                hapus := P;
                P := nil;
            end
            else
            begin
                P := P^.next;
                P^.prev := nil;
            end;
            { Delete data diakhir }
        end
        else if (hapus^.next = nil) then
            hapus^.prev^.next := nil
        else
        begin
            hapus^.prev^.next := hapus^.next;
            hapus^.next^.prev := hapus^.prev;
        end;
    end;
    if (hapus <> nil) then
    begin
        dispose(hapus);
        writeln('Delete ', x, ' success...');
    end;
end;

{ Menghapus Semua Data }
procedure clear(var P: PList);
var hapus: PList;
begin
    hapus := P;
    if (P <> nil) then
    begin
        while (hapus <> nil) do
        begin
            P := P^.next;
            dispose(hapus);
            hapus := P;
        end;
        writeln('Linked List Clear');
    end
    else
        writeln('Linked List sudah dalam keadaan kosong');
end;

var P: PList;
    x: integer;
    jawab: char;

begin
    P := nil;
    repeat
        clrscr;
        writeln('--------------------------------');
        writeln('              MENU              ');
        writeln('--------------------------------');
        writeln('1. Insert');
        writeln('2. Delete');
        writeln('3. Display Ascending');
        writeln('4. Display Descending');
        writeln('5. Count');
        writeln('6. Clear');
        writeln('--------------------------------');
        writeln('0. Exit');
        writeln('--------------------------------');
        writeln;
        write('Pilih menu : '); readln(jawab);
        case jawab of
            '1': begin
                    write('Input : '); readln(x);
                    insert(P, x);
                end;
            '2': begin
                    write('Delete : '); readln(x);
                    delete(P, x);
                end;
            '3': begin
                    write('Linked List Asc. : ');
                    display(P);
                end;
            '4': begin
                    write('Linked List Desc. : ');
                    display2(P);
                end;
            '5': begin
                    writeln('Jumlah data : ', count(P));
                end;
            '6': begin
                    clear(P);
                end;
            '0': begin
                    writeln('Terima Kasih');
                end;
            else
                writeln('Input anda salah, silahkan diulangi...');
        end;
        writeln;
    until (jawab = '0');
end.
