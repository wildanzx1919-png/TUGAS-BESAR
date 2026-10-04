program Soal4;
uses crt;

var
  pilihan: integer;
  a, b, hasil: real;
  ulang: char;

begin
clrscr;
  repeat
    writeln;
    writeln('KALKULATOR');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi: ');
    readln(pilihan);
    write('Masukkan angka pertama: ');
    readln(a);
    write('Masukkan angka kedua: ');
    readln(b);

    case pilihan of
      1:
        begin
          hasil := a + b;
          writeln('Hasil = ', hasil:0:2);
        end;
      2:
        begin
          hasil := a - b;
          writeln('Hasil = ', hasil:0:2);
        end;
      3:
        begin
          hasil := a * b;
          writeln('Hasil = ', hasil:0:2);
        end;
      4:
        begin
          if b <> 0 then
          begin
            hasil := a / b;
            writeln('Hasil = ', hasil:0:2);
          end
          else
            writeln('Error: Tidak dapat dibagi dengan 0.');
        end;
      5:
        begin
          writeln('DIV = ', trunc(a) div trunc(b));
          writeln('MOD = ', trunc(a) mod trunc(b));
        end;

    else
      writeln('Pilihan tidak tersedia.');
    end;

    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

  until (ulang = 'T') or (ulang = 't');

end.