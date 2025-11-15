uses crt;

{--------------------------------------------}
{ 1️⃣ Procedure Sederhana: Menampilkan Pesan  }
{--------------------------------------------}
procedure sapa_user;
begin
    writeln('Selamat datang di Live Coding Pertemuan 6');
end;

{----------------------------------------------------}
{ 2️⃣ Function dengan Parameter Array: Hitung Rata-rata }
{----------------------------------------------------}
function rata_rata(n : integer; data : array of integer):
real;

var
    i, total : integer;
begin
    total := 0;
    for i := 0 to n - 1 do
        total := total + data[i];
    rata_rata := total / n;
end;

{---------------------------------------------}
{ 3️⃣ Function Rekursif: faktorial dari n!     }
{---------------------------------------------}
function faktorial (n : integer) : longint;
begin
    if n = 1 then 
        faktorial := 1
    else
        faktorial := n * faktorial(n - 1);
end;

{---------------------------------------------}
{               PROGRAM UTAMA                 }
{---------------------------------------------}
var
    bil : array[1..5] of integer;
    i, n, nilai : integer;

// MAIN PROGRAM
begin
    clrscr;
    // sapa_user;
    // sapa_user;
    // sapa_user;

    // write('Masukkan jumlah angka : '); readln(n);

    // for i := 1 to n do
    //     begin
    //         write('Data ke-', i, ': '); readln(bil[i]);
    //     end;

    // writeln('Rata-rata (pakai function) : ', rata_rata(n, bil):0:2);

    write('Masukkan angka faktorial : '); readln(nilai);
    writeln(faktorial(nilai));
end.