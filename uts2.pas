program tebakangka;     
uses crt;                       

var
  angka, tebakan: integer;       // Deklarasi varibel angka (integer)
                          

begin
  clrscr;                  
  
  angka := 3;                    // Masukkan angka yang benar (3)

  // Program akan berulang sampai berhasil menebak angka dengan benar
  repeat
    write('Masukkan tebakan kamu : ');   
    readln(tebakan);

    // Program melihat apakah angka tebakan yang di input terlalu besar, terlalu kecil, atau sudah tepat
    if tebakan > angka then
      writeln('Terlalu besar!')           // Jika tebakan lebih besar dari angka yg benar
    else if tebakan < angka then
      writeln('Terlalu kecil!')           // Jika tebakan lebih kecil dari angka yg benar
    else
      writeln('Selamat, kamu benar!');    // Jika tebakan sama dengan angka yg benar

  until tebakan = angka;                  // Ulangi terus sampai tebakan benar

end.