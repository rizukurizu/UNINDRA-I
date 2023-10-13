program Pertemuan_4_Tugas;
uses crt;

type mhsw = ^data;
    data = record
        nama: string;
        npm: string;
        kelas: string;
    end;

var mahasiswa: mhsw;
    i, jumlah: integer;

begin
    clrscr;
    new(mahasiswa);
    write('Masukkan banyak data: '); readln(jumlah);
    writeln;
    for i:=1 to jumlah do
    begin
        write('Nama ke-', i, ': '); readln(mahasiswa^.nama);
        write('NPM ke-', i, ': '); readln(mahasiswa^.npm);
        write('Kelas ke-', i, ': '); readln(mahasiswa^.kelas);
        writeln;
    end;
    writeln('-- Data Yang DiInput --');
    for i:=1 to jumlah do
    begin
        writeln('Nama ke-', i, ': ', mahasiswa^.nama);
        writeln('NPM ke-', i, ': ', mahasiswa^.npm);
        writeln('Kelas ke-', i, ': ', mahasiswa^.kelas);
        writeln;
    end;
    dispose(mahasiswa);
    readln;
end.
