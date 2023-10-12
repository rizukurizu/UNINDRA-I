program Pertemuan_2_Latihan;
uses crt;

type matrix = array [1..100, 1..100] of integer;

var matrixA, matrixB, hasilmatrix: matrix;
    i, j, x ,y, baris, kolom: integer;

begin
    clrscr;
    writeln('-----------------------------------');
    writeln('---===[ PENJUMLAHAN MATRIX ]===---');
    writeln('-----------------------------------');
    write('Masukkan jumlah baris : '); readln(baris);
    write('Masukkan jumlah kolom : '); readln(kolom);
    writeln('---===[ INPUT MATRIX A ]===---');
    writeln('Matrix : ');
    y := 12;
    for i := 1 to baris do 
    begin
        x := 4;
        for j := 1 to kolom do
        begin
            gotoxy(x,y);
            readln(matrixA[i,j]);;
            x := x + 4;
        end;
        y := y + 1;
    end;
    writeln;
    writeln('---===[ INPUT MATRIX B ]===---');
    writeln('Matrix : ');
    y := y + 4;
    for i := 1 to baris do 
    begin
        x := 4;
        for j := 1 to kolom do
        begin
            gotoxy(x,y);
            readln(matrixB[i,j]);
            x := x + 4;
        end;
        y := y + 1
    end;
    writeln;
    writeln('---===[ HASIL PENJUMLAHAN ]===---');
    y := y + 3;
    for i := 1 to baris do 
    begin
        x := 4;
        for j := 1 to kolom do
        begin
            hasilmatrix[i,j] := matrixA[i,j] + matrixB[i,j];
            gotoxy(x, y);
            write(hasilmatrix[i,j]);
            x := x + 4;
        end;
        y := y + 1;
    end;
    writeln;
    readln;
end.
