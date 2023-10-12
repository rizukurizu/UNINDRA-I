program Pertemuan_1;
uses crt;

type dataMahasiswa = record
    nama: string;
    npm: string;
end;

var jumlah, i: integer; // Tipe Data Sederhana
    data: array [1..100] of dataMahasiswa; // Tipe Data Terstruktur

begin
    clrscr;
    writeln('Tugas Pertemuan 1 - Struktur Data');
    writeln('Nama : Tobi Saputra');
    writeln('NPM : 202243502612');
    writeln('-----------------------------------');
    writeln('       Program Data Mahasiswa      ');
    writeln('-----------------------------------');
    write('Masukkan Jumlah Mahasiswa : ');
    readln(jumlah);
    writeln('-----------------------------------');
    for i := 1 to jumlah do
    begin
        with data[i] do
        begin
            writeln('Mahasiswa ke-', i);
            write('Nama : '); readln(nama);
            write('NPM : '); readln(npm);
        end;
        writeln;
    end;
    writeln;
    writeln('-----------------------------------');
    writeln('        Nama        |      NPM     ');
    writeln('-----------------------------------');
    for i := 1 to jumlah do
    begin
        with data[i] do
        begin
            writeln(nama:12, npm:20);
        end;
    end;
    writeln('-----------------------------------');
    readln;
end.
