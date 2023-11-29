program Pertemuan_4_Latihan;
uses crt;

var nama, npm: ^string;
    alamat_nama, alamat_npm: ^integer;

begin
    clrscr;
    write('Masukkan nama: '); readln(nama^);
    write('Masukkan npm: '); readln(npm^);
    alamat_nama := addr(nama);
    alamat_npm := addr(npm);
    writeln('Nama Mahasiswa: ', nama^);
    writeln('Alamat Memori Pointer Nama : ', alamat_nama^);
    writeln('NPM Mahasiswa: ', npm^);
    writeln('Alamat Memori Pointer NPM : ', alamat_npm^);
    readln;
end.
