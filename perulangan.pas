uses crt;

var 
  i, j : integer;
  password : string;

begin
  clrscr;

//   for i := 1 to 5 do
//     writeln('Hello world');

//    for i := 1 to 5 do
//        begin
//            for j := 1 to i do
//                write('*');
//            writeln;
//        end;

//       i := 1;

//       while i <= 10 do
//           begin
//               if i mod 2 = 0 then
//                   write(i, '');
//               i := i + 1;
//           end;

      repeat
          write('Masukkan password anda'); readln
          (password);
      until (password = '12345');
      writeln('Berhasil login');
end.