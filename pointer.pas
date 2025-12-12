uses crt, sysutils;

var 
    angka :integer; //variabel biasa
    alamat_angka : ^integer; //pointer ke integer

begin
    clrscr;

    angka := 10;
    alamat_angka := @angka; //pointer yan menunjuk ke alamat VARIABEL "angka"

    writeln('Isi variabel "angka" = ', angka);
    writeln('Alamat variabel "angka" = ', PtrUInt(@angka));
    writeln('Isi pointer = ' PtrUInt(alamat_angka));
    writeln('Isi nilai yang diambil pointer = ', alamat_angka^);

end;