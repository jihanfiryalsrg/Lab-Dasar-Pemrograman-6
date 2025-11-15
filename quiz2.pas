uses crt;

{---------------------------------------------------------}
{ 1️⃣ Procedure dengan Parameter (Masukan)                }
{---------------------------------------------------------}
{ Procedure untuk mencetak luas persegi }
procedure CetakLuasPersegi(sisi: integer);

{Variable untuk menyimpan luas persegi }
var
  luas: integer;

{ MEngitung luas persegi dan menampilkannya }
begin
  luas := sisi * sisi;
  writeln('Hasil (Procedure)  -> Luas persegi = ', luas);
end;

{---------------------------------------------------------}
{ 2️⃣ Function dengan Parameter Masukan                  }
{---------------------------------------------------------}
{ Function untuk menghitung luas persegi }
function HitungLuasPersegi(sisi: integer): integer;

{ Menghitung dan mengembalikan luas persegi }
begin
  HitungLuasPersegi := sisi * sisi;
end;

{---------------------------------------------------------}
{                  PROGRAM UTAMA                         }
{---------------------------------------------------------}
{ Variable untuk menyimpan input dan hasil }
var
  sisi: integer;
  hasil: integer;

{ Menjalankan program utama dengan prosedur dan fungsi }
begin
  clrscr;
  writeln('=== PERBANDINGAN PROCEDURE DAN FUNCTION ===');
  writeln;
  
  { Meminta input dari user }
  write('Masukkan panjang sisi persegi: ');
  readln(sisi);
  writeln;

  { Memanggil procedure (tidak mengembalikan nilai) }
  CetakLuasPersegi(sisi);

  { Memanggil function (mengembalikan nilai) }
  hasil := HitungLuasPersegi(sisi);
  writeln('Hasil (Function)   -> Luas persegi = ', hasil);

  { Menampilkan catatan perbedaan }
  writeln;
  writeln('Catatan: Procedure hanya menampilkan hasil.');
  writeln('         Function bisa digunakan untuk proses lanjut.');
  readln;
end.
