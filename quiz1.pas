uses crt, math;

{ Function untuk menentukan apakah suatu bilangan prima atau tidak }
function IsPrime(n: integer): boolean;
var
      i, batas: integer;
begin
  // TODO 1: Handle bilangan kurang dari 2
  {Bilangan kurang dari 2 bukan bilangan prima
  jadi langsung kembalikan FALSE dan keluar dari fungsi.}
      if n < 2 then
          begin
              IsPrime := false;
                  exit;
          end;
  
  // TODO 2: Handle bilangan 2
  {Angka 2 adalah bilangan prima.
  Jadi langsung kembalikan TRUE.}
      if n = 2 then
          begin
              IsPrime := true;
                  exit;
          end;
  
  // TODO 3: Handle bilangan genap
  {Bilangan genap selain 2 bukan bilangan prima.
  jadi langsung kembalikan FALSE dan keluar dari fungsi.}
      if n mod 2 = 0 then
          begin
              IsPrime := false;
                  exit;
          end;
  
  // TODO 4: Cek faktor ganjil sampai akar kuadrat n
  {Bilangan prima hanya memiliki 2 faktor, yaitu 1 dan dirinya sendiri.
  jadi kita perlu mengecek apakah ada faktor lain dari 3 samppai kuadrat n.}
  batas := trunc(sqrt(n)); // membuat batasan cek sampai akar kuadrat berapa
      for i := 3 to batas do
          begin
              if n mod i = 0 then
                  begin
                      IsPrime := false;
                          exit;
                  end;
          end; 
  
  // TODO 5: Return true jika lolos semua pengecekan
  {Jika sudah melewati semua pengecekan di atas,
  berarti n adalah bilangan prima.}
  IsPrime := true;
end;

{ Program Utama }
var
    n : integer;

begin
  clrscr;
  
  repeat
    writeln;
    // minta user masukkan
    {Input bilangan yang akan dicek apakah prima atau bukan}
    write('Masukkan bilangan : ');
    readln(n);
    
    // Memanggil function IsPrime
    {Memanggil fungsi IsPrime untuk mengecek apakah n adalah bilangan prima}
    if IsPrime(n) then
        writeln('Bilangan prima ')
    else
    {Menampilkan hasil jika n bukan bilangan prima}
        writeln('Bukan bilangan prima ');
    {Selesai jika user memasukkan angka 5}
    until n = 5;

{Akhiri program}
writeln;
write('Program selesai.');
end.