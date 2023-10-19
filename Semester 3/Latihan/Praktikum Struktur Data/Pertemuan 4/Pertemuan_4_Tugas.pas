program Pertemuan_4_Tugas;
uses crt;

type data = record
        nama: string;
        npm: string;
        kelas: string;
    end;
    pointerMahasiswa = ^data;

var mahasiswa: array of pointerMahasiswa;
    i, jumlah: integer;

begin
    clrscr;
    write('Masukkan jumlah mahasiswa: '); readln(jumlah);
    setLength(mahasiswa, jumlah);
    writeln;
    writeln('-- Input Data --');
    for i := 1 to jumlah do
    begin
        new(mahasiswa[i]);
        writeln('Mahasiswa ke-', i);
        write('Nama: '); readln(mahasiswa[i]^.nama);
        write('NPM: '); readln(mahasiswa[i]^.npm);
        write('Kelas: '); readln(mahasiswa[i]^.kelas);
        writeln;
    end;
    writeln('-- Data Mahasiswa --');
    for i := 1 to jumlah do
    begin
        writeln('Mahasiswa ke-', i);
        writeln('Nama: ', mahasiswa[i]^.nama);
        writeln('NPM: ', mahasiswa[i]^.npm);
        writeln('Kelas: ', mahasiswa[i]^.kelas);
        dispose(mahasiswa[i]);
        writeln;
    end;
    readln;
end.
