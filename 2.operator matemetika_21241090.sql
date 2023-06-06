-- select statment dengan 1 nilai literal 
select 77 as bil_bulat; -- nilai literal bilangan bulat (integer)
select 'jakarta'as string_; -- nilai literal tipedata string
select '2023/05/16' as tipe_date; -- nilai literal pada tipedata date
select 77 < 3 as tipe_boolean; -- nilai literal pada tipe data boolean, 1 = true, dan 0 = false

-- select statment dengan beberapa nilai literal 
select 77 as angka, true as nilai_logika, 'undikma' as teks;

-- select statment dengan NULL 
select NULL as kosong;

-- operator  matematika
select 5%2 as sisa_bagi, 5/2 as hasil_bagi, 5 DIV 2 as hasil_bagi_2;

-- latihan mandiri 
select 4*2 as sisa_kali, (4*8)%7 hasil_kali_bagi, (4*8) MOD 7 as hasil_bagi;

-- operator matematika untuk menghasilkan total beli (qty * harga) pada tabel tr_penjualan
use tugas2;
select qty*harga as total_beli from tr_penjualan_dqlab;
select nama_produk, qty, harga, qty*harga as total_beli from  tr_penjualan_dqlab;

-- operator perbandingan 
select 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5<>4;
select 1=true, 1=false, 5>=5, 5.2=5.20000, NULL = 1, NULL=NULL;
select qty > 3 from tr_penjualan_dqlab;

-- fungsih 
select now(), year('2022-05-03'), datediff('2022-05-16', '2022-05-01'), day(now()); 
-- fungsi pada tabel tr_penjualan

-- mendapatkan lastest buy dari produk 
select datediff(now(), tgl_transaksi) as latest_buy from tr_penjualan_dqlab;
select nama_produk, datediff(now(), tgl_transaksi) as latest_buy from tr_penjualan_dqlab;

-- klausal  WHERE filtering atau penyringan 
-- ambil nama produk, dan qty dari tebel tr_penjualan_dqlab yang qty lebih dari 2
select nama_produk, qty
from tr_penjualan_dqlab
where qty > 2; 

-- multi kriteria klausal where
-- ambil mana_produk, dan qty, dari tebel tr_penjualan_dqlab, yang qty lebig dari 2 dan bulan transaksi 6
select nama_produk, qty, tgl_transaksi
from tr_penjualan_dqlab
where qty > 2 AND month(tgl_transaksi) = 6; 

 