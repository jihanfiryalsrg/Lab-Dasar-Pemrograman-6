uses crt;

{---------------------------------------------------------}
{ 4️⃣ Procedure dengan Parameter (Masukan)                }
{---------------------------------------------------------}
procedure CetakLuasSegitiga(alas, tinggi: integer);
var
  luas: real;
begin
  luas := 0.5 * alas * tinggi;
  writeln('Hasil (Procedure)  -> Luas segitiga = ', luas:0:2);
end;

{---------------------------------------------------------}
{ 5️⃣ Function dengan Parameter Masukan                  }
{---------------------------------------------------------}
function HitungLuasSegitiga(alas, tinggi: integer): real;
begin
  HitungLuasSegitiga := 0.5 * alas * tinggi;
end;

{---------------------------------------------------------}
{                  PROGRAM UTAMA                         }
{---------------------------------------------------------}
var
  alas, tinggi: integer;
  hasil: real;
begin
  clrscr;
  writeln('=== PERBANDINGAN PROCEDURE DAN FUNCTION ===');
  writeln;
  write('Masukkan alas segitiga  : '); readln(alas);
  write('Masukkan tinggi segitiga: '); readln(tinggi);
  writeln;

  { Memanggil procedure (tidak mengembalikan nilai) }
  CetakLuasSegitiga(alas, tinggi);

  { Memanggil function (mengembalikan nilai) }
  hasil := HitungLuasSegitiga(alas, tinggi);
  writeln('Hasil (Function)   -> Luas segitiga = ', hasil:0:2);
  
  writeln;
  writeln('Catatan: Procedure hanya menampilkan hasil.');
  writeln('         Function bisa digunakan untuk proses lanjut.');
  readln;
end.