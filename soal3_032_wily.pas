program Soal3;
uses crt;
var
  N, pilihan, i: integer;

begin
clrscr;
  write('Masukkan nilai N: ');
  readln(N);
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori deret: ');
  readln(pilihan);

  i := 1;

  while i <= N do
  begin
    if (i mod 5 = 0) then
    begin
      i := i + 1;
      continue;
    end;
    if pilihan = 1 then
    begin
      if i mod 2 = 0 then
      begin
        i := i + 1;
        continue;
      end;
    end
    else if pilihan = 2 then
    begin
      if i mod 2 <> 0 then
      begin
        i := i + 1;
        continue;
      end;
    end;

    write(i, ' ');
    i := i + 1;
  end;

  writeln;
end.