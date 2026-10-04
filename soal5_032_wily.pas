program Soal5;
uses crt;

var
  M, N, i, j: integer;
  nilai, total, rata: real;
  lulus, tidakLulus: integer;

begin
clrscr;
  write('Masukkan jumlah mahasiswa: ');
  readln(M);
  write('Masukkan jumlah tugas: ');
  readln(N);

  lulus := 0;
  tidakLulus := 0;

  for i := 1 to M do
  begin
    total := 0;
    writeln;
    writeln('Mahasiswa ke-', i);
    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);
      total := total + nilai;
    end;

    rata := total / N;
    writeln('Rata-rata: ', rata:0:2);
    if rata >= 65 then
    begin
      writeln('Status: lulus');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('Status: tidak lulus');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('REKAPITULASI');
  writeln('Total mahasiswa lulus      : ', lulus);
  writeln('Total mahasiswa tidak lulus : ', tidakLulus);
end.