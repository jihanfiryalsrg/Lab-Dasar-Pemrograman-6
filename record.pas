uses crt;

{--------------------------------------------}
{ 1️⃣ TYPE DEFINITION                          }
{--------------------------------------------}
type
    TAlamat = record
        jalan : string[50];
        kota : string[50];
        kode_pos : integer;
    end;

    TMahasiswa = record
        nama : string[50];
        umur : integer;
        ipk : real;
        alamat : TAlamat; //nested record
    end;

{--------------------------------------------}
{ 2️⃣ VARIABLE DECLARATION                     }
{--------------------------------------------}

var
    mhs : TMahasiswa;
    dataMhs : array[1..100] of TMahasiswa; //array record
    n, i : integer;

{============================================================}
{                    SECTION 1                               }
{      IMPLEMENTASI SIMPLE RECORD + NESTED RECORD            }
{============================================================}

begin
  clrscr;

  { INPUT DATA }
    // write('Nama : '); readln(mhs.nama);
    // write('Umur : '); readln(mhs.umur);
    // write('IPK : '); readln(mhs.ipk);

    // writeln('-- Space untuk alamat --');
    // write('Jalan : '); readln(mhs.alamat.jalan);
    // write('Kota : '); readln(mhs.alamat.kota);
    // write('Kode pos : '); readln(mhs.alamat.kode_pos);

  { OUTPUT }
//   writeln('HASIL OUTPUT');
//   writeln('Nama : ', mhs.nama);
//   writeln('Umur : ', mhs.umur);
//   writeln('IPK : ', mhs.ipk);
//   writeln('Alamat : ', mhs.alamat.jalan, ', ', mhs.alamat.kota, ', ', mhs.alamat.kode_pos);

{============================================================}
{                    SECTION 2                               }
{       IMPLEMENTASI RECORD + WITH ... DO                    }
{============================================================}

  { WITH DO untuk nested record }

  { OUTPUT }
    // with mhs do
    //     begin
    //         writeln('Nama : ', nama);
    //         writeln('Umur : ', umur);
    //         writeln('IPK : ', ipk);
    //     end;
    
    // with mhs.alamat do
    //     begin
    //         writeln('Alamat : ', jalan, ', ', kota, ', ', kode_pos);
    //     end;


{============================================================}
{                    SECTION 3                               }
{                ARRAY OF RECORD                             }
{============================================================}

  { INPUT ARRAY }
      write('Masukkan jumlah mahasiswa : '); readln(n);

      for i := 1 to n do
          begin
              writeln('Mahasiswa ke-', i);
              write('Nama ; '); readln(dataMhs[i].nama);
              write('Umur ; '); readln(dataMhs[i].umur);
              write('IPk ; '); readln(dataMhs[i].ipk);

              writeln('Alamat');
              write('Jalan : '); readln(dataMhs[i].alamat.jalan);
              write('Kota : '); readln(dataMhs[i].alamat.kota);
              write('Kode Pos : '); readln(dataMhs[i].alamat.kode_pos);

              writeln;
              writeln('DAFTAR MAHASISWA');
            end;

  { OUTPUT ARRAY }

    for i := 1 to n do
        begin
            writeln('Mahasiswa ke-', i);

            with dataMhs[i] do
                begin
                    write('Nama : ', nama);
                    write('Umur : ', umur);
                    write('IPK : ', ipk);
                end;

            with dataMhs[i].alamat do
                begin
                    write('Jalan : ', jalan);
                    write('Kota : ', kota);
                    write('Kode Pos : ', kode_pos);
                end;
        end;
end.