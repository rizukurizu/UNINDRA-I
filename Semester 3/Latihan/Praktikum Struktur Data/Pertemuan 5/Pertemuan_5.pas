program UpdateDataLinkedList;
uses crt;
type
  TipeData = record
    isi: string;
    next: ^TipeData;
  end;

  PointerTipeData = ^TipeData;

var
  head, nowData: PointerTipeData;
  masukanDataPertama, masukanDataBerikutnya: string;

procedure update(isi: string);
begin
  nowData^.next^.isi := isi;
end;

procedure tambahData(var node: PointerTipeData; isi: string);
begin
  New(node);
  node^.isi := isi;
  node^.next := nil;
end;

begin
  New(head);
  write('data pertama: ');
  readln(masukanDataPertama);
  head^.isi := masukanDataPertama;
  head^.next := nil;

  write('data berikutnya: ');
  readln(masukanDataBerikutnya);
  tambahData(head^.next, masukanDataBerikutnya);

  nowData := head;

  writeln('Data pertama : ', head^.isi);
  writeln('Data berikutnya : ', head^.next^.isi);

  write('Update Data Now: ');
  readln(masukanDataBerikutnya);
  update(masukanDataBerikutnya);

  writeln('Update Data Now :', nowData^.next^.isi);

  writeln('Data pertama : ', head^.isi);
  writeln('Data berikutnya : ', nowData^.next^.isi);
  readln;
end.
