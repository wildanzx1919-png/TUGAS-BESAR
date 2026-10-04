program Soal2;
uses crt;

var
  password: string;
  i: integer;
  benar: boolean;

begin
clrscr;
  benar := false;
  i := 1;

  repeat
    write('Masukkan kata sandi: ');
    readln(password);
    if password = 'pascal123' then
    begin
      writeln('Login Berhasil! selamat Datang');
      benar := true;
      break;
    end
    else
    begin
      writeln('Kata sandi salah');
      i := i + 1;
    end;

  until i > 3;

  if not benar then
    writeln('Akses Ditolak! akun terkunci.');
end.