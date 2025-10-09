uses crt;

var
nilai : integer;

begin
    clrscr;
    write('Masukkan nilai : '); readln(nilai);

    // // statement if
    // if (nilai <= 65) then
    // writeln('Anda tidak lulus');

    // statement if else
    // if (nilai <= 65) then
    //    begin
    //       writeln('Anda tidak lulus')
    //    end
    // else
    //    begin
    //       writeln('Anda lulus!');
    //    end;

    // statement tiga kondisi
    // if (nilai = 100) then
    //     begin
    //         writeln('Perfect')
    //     end
    // else if (nilai <=  65) then
    //     begin
    //         writeln('Anda tidak lulus')
    //     end
    // else
    //     begin
    //        writeln('Anda lulus')
    //     end;

    // nested if
    // if (nilai <= 65) then
    //     begin
    //         writeln('Anda tidak lulus');
    //     end
    // else
    //     begin
    //         if (nilai = 100) then
    //             begin
    //                 writeln('Anda lulus dan hebat');
    //             end
    //         else
    //             begin
    //                 writeln('Anda lulus');
    //             end
      
    //statement case of
    // case nilai of
    //     1: writeln('Senin');
    //     2: writeln('Selasa');
    //     3: writeln('Rabu');
    //     4: writeln('Kamis');
    //     5: writeln('Jumat');
    //     6: writeln('Sabtu');
    //     7: writeln('Minggu');
    // else
    //     writeln('Input tidak valid');
    // end;

    case nilai of
        85..100: writeln('A');
        80..84: writeln('B+');
        75..79: writeln('B');
        70..74: writeln('C+');
        65..69: writeln('C');
        60..64: writeln('D');
    else
        writeln('E');
    end;
end.