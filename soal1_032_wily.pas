program Soal1;
uses crt;

var
  N, i: integer;
  harga, total, diskon, bayar: real;

begin
clrscr;
  write('Masukkan jumlah barang: ');
  readln(N);
  total := 0;
  for i := 1 to N do
  begin
    write('Masukkan harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := total * 0.10
  else
    diskon := total * 0.20;
  bayar := total - diskon;

  writeln;
  writeln('RINCIAN BELANJA');
  writeln('Total Belanja : Rp', total:0:2);
  writeln('Diskon        : Rp', diskon:0:2);
  writeln('Total Bayar   : Rp', bayar:0:2);
end.