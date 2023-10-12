program Pertemuan_4_Latihan;
uses crt;

var nama, npm: ^string;

begin
    clrscr;
    new(nama);
    new(npm);
    write('Masukkan nama: '); readln(nama^);
    write('Masukkan npm: '); readln(npm^);
    writeln('Nama: ', nama^);
    writeln('Alamat Memori Pointer Nama : ', Integer(nama));
    writeln('NPM: ', npm^);
    writeln('Alamat Memori Pointer NPM : ', Integer(npm));
    readln;
end.
