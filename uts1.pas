program uts1;
uses crt;

var     //deklarasi variabel
jb,jp1,jp2,jp3,jp4:integer;         //Variabel yg berbentuk integer
hb,hp1,hp2,hp3,hp4,th,thd1,thd2,td:real;        //Variabel yg berbentuk real
mp:string;      //Variabel yg berbentuk real

begin
clrscr;
    writeln ('Daftar Harga :');
    writeln ('1. Buku      = Rp 25.000');
    writeln ('2. Pulpen    = Rp  5.000');
    writeln ('3. Pensil    = Rp  3.000');
    writeln ('4. Penghapus = Rp  2.000');
    writeln ('5. Penggaris = Rp  4.000');
    writeln (' ');      //Daftar Harga
    
    write ('Masukkan Jumlah Buku      : ');
    readln (jb);        //Memasukkan jumlah buku
    
    write ('Masukkan Jumlah Pulpen    : ');
    readln (jp1);       //Memasukkan jumlah pulpen
    
    write ('Masukkan Jumlah Pensil    : ');
    readln (jp2);       //Memasukkan jumlah pensil
    
    write ('Masukkan Jumlah Penghapus : ');
    readln (jp3);       //Memasukkan jumlah penghapus
   
    write ('Masukkan Jumlah Penggaris : ');
    readln (jp4);       //Memasukkan jumlah penggaris
    
    writeln (' ');
    
    write ('Pembayaran (QRIS/tunai)   : ');
    readln (mp);        //Memasukkan metode pembayaran
    
    hb := jb * 25000;
    hp1 := jp1 * 5000;
    hp2 := jp2 * 3000;
    hp3 := jp3 * 2000;
    hp4 := jp4 * 4000;
    th := hp1 + hp2 + hp3 + hp4 + hb ;      //Menghitung total harga awal
    
    writeln ('Total Harga sebelum discount  = Rp ', th:0:0);


    begin
    if th>=100000 then
        begin
        thd1 := th - (th * 0.1);        //Total setelah diskon 1
        td := th * 0.1;     //Total diskon 1
        end

    else
        begin
        thd1 :=th;      //Total setelah diskon 1
        td := 0;     //Total diskon 1
        end;
    end;

    begin
    if mp = 'QRIS' then
        begin
        thd2 := thd1 - 5000;        //Total setelah diskon 2
        td := td + 5000;        //Total diskon 2
        end
    else
        begin
        thd2 := thd1 + (thd1 * 0.05);        //Total setelah diskon 2
        td := td;        //Total diskon 2
        end;
    end;

    writeln ('Seluruh potongan dan discount = Rp ',td:0:0);     //Jumlah total diskon

    writeln ('Total Akhir                   = Rp ',thd2:0:0);       //Jumlah harga setelah diskon


    

end.