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
    write('Masukkan jumlah mahasiswa: '); readln(jumlah);
    for i:=1 to jumlah do
    begin
        writeln('Mahasiswa ke-', i);
        write('Nama: '); readln(mahasiswa^.nama);
        write('NPM: '); readln(mahasiswa^.npm);
        write('Kelas: '); readln(mahasiswa^.kelas);
        writeln;
    end;
    writeln('-- Data Mahasiswa --');
    for i:=1 to jumlah do
    begin
        writeln('Mahasiswa ke-', i);
        writeln('Nama: ', mahasiswa^.nama);
        writeln('NPM: ', mahasiswa^.npm);
        writeln('Kelas: ', mahasiswa^.kelas);
        writeln;
    end;
    dispose(mahasiswa);
    readln;
end.
