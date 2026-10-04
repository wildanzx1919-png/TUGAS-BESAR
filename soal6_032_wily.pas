program Soal6;
uses crt;

var
  tugas, uts, uas, nilaiAkhir, kehadiran: real;
  status, indeks: string;

begin
clrscr;
  write('Masukkan Nilai tugas: ');
  readln(tugas);
  write('Masukkan Nilai uts: ');
  readln(uts);
  write('Masukkan Nilai uas: ');
  readln(uas);
  write('Masukkan Kehadiran (%): ');
  readln(kehadiran);

  nilaiAkhir := (tugas * 0.30) +
                (uts * 0.30) +
                (uas * 0.40);

  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'lulus'
  else
    status := 'tidak lulus';
  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 70 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Status      : ', status);
  writeln('Indeks Huruf : ', indeks);
end.