program bintang;        

uses crt;                      

var
  i, j: integer;                 // Variabel berbentuk angka (integer) 

begin
  clrscr;                        


  for i := 1 to 3 do              // Pengulangan dari baris 1 sampai 3
  begin
    for j := 1 to i do
      write('*');                 // Mencetak bintang sebanyak nilai i
    writeln;                      // Menambah baris baru
  end;


  for i := 1 to 5 do              // Pengulangan dari baris 1 sampai 5
  begin
    case i of                     // Menggunakan case untuk mengatur jumlah bintang pada tiap baris
      1: for j := 1 to 8 do write('*');   
      2: for j := 1 to 7 do write('*');   
      3: for j := 1 to 6 do write('*');   
      4: for j := 1 to 7 do write('*');   
      5: for j := 1 to 8 do write('*');   //Memasukkan jumlah bintang sesuai soal
    end;
    writeln;                      //Menambah baris baru
  end;

end.