program Pertemuan_2_Tugas;
uses crt;

type matrix = array [1..100, 1..100] of integer;

var matrixA, matrixB, hasilmatrix: matrix;
    i, j, k, x ,y, baris, kolom: integer;

begin
    clrscr;
    writeln('-----------------------------------');
    writeln('---===[ PERKALIAN MATRIX ]===---');
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
    writeln('---===[ HASIL PERKALIAN ]===---');
    y := y + 3;
    for i := 1 to baris do 
    begin
        x := 4;
        for j := 1 to kolom do
        begin
            hasilmatrix[i,j] := 0;
            for k := 1 to kolom do
            begin
                hasilmatrix[i,j] := hasilmatrix[i,j] + (matrixA[i,k] * matrixB[k,j]);
            end;
            gotoxy(x, y);
            write(hasilmatrix[i,j]);
            x := x + 4;
        end;
        y := y + 1;
    end;
    writeln;
    readln;
end.
