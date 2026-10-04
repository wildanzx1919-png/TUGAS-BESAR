program Soal8;
uses crt;
var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, lembur, bonus, total: longint;

begin
clrscr;
  write('Masukkan golongan (A/B/C): ');
  readln(golongan);
  write('Masukkan total jam kerja: ');
  readln(jamKerja);

  case golongan of
    'A', 'a': gajiPokok := 1500000;
    'B', 'b': gajiPokok := 2000000;
    'C', 'c': gajiPokok := 2500000;
  else
    begin
      writeln('Golongan tidak valid.');
      halt;
    end;
  end;

  if jamKerja > 40 then
    jamLembur := jamKerja - 40
  else
    jamLembur := 0;
  lembur := jamLembur * 20000;

  if (golongan = 'C') or (golongan = 'c') then
  begin
    if jamKerja > 50 then
      bonus := 100000
    else
      bonus := 0;
  end
  else
    bonus := 0;
  total := gajiPokok + lembur + bonus;

  writeln;
  writeln('rincian gaji');
  writeln('Gaji Pokok : Rp', gajiPokok);
  writeln('Lembur     : Rp', lembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', total);
end.