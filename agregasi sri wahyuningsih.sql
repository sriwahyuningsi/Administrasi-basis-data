-- ORDER BY, GROUP BY, ASC DESC, HAVING
use tugas2;
-- menggunakan database tugas2
use tugas2;

-- menggunakan ORDER BY untuk mengurut data 
-- ambil nama kolom nama-produk, gty pada tabel penjualan, dan duurutkan berdasarkan kolom qty
select nama_produk, qty
from tr_penjualan_dqlab
order by qty; 

-- ambil nama kolom nama_produk, qty pada tabel penjualan dan urutkan berdasarkan qty dan nama_produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty, nama_produk;

-- latihan1 
-- ambil semua kolom dari table tr_penjualan_dqlab
select*from  tr_penjualan_dqlab order by  qty, tgl_transaksi;

-- ambil smua kolom dari tabel ms_pelanggan_dqlab dengan mengurutkan berdasarkan alamat 
select * from  ms_pelanggan_dqlab order by alamat;

-- order by dengan asc dan decs
select nama_produk, qty
from tr_penjualan_dqlab
order by qty desc;

-- ambil nama produk, qty daritabel pen
select nama_produk, qty 
from tr_penjualan_dqlab
order by qty desc, nama_produk ASC;

-- latihan2

-- ambil semua kolom tr_penjualan_dqlab  dengan mengurutkan tgl_transaksi secara desc dan qty secara asc
select*from tr_penjualan_dqlab order by tgl_transaksidesc, qty asc;

-- tampilakan semua kolom dari tabel ms_pelanggan dengan megurutkan nama pelanggan secra desc
select*from ms_pelanggan order by nama_pelanggan desc;

-- tampilkan semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat secara desc 
select*from ms_pelanggan_dqlab order by alamat desc;

-- order by dari hasil perhitungan 
-- ambil nama_produk, qty, harga, total, beli urutkan berdasasrkan total beli 
select nama_produk, qty, harga, qty*harga as total_beli 
from tr_penjualan_dqlab
order by total_beli desc;

-- latihan 3
-- urutkan dengan ekspresi total harga memngunakan juimlah diskon dikali harga dikurangi diskon
select 250000 - (250000*(10/100));

-- order by dengan WHERE 
-- ambil nama_produk, qty dari tabel penjualan dengan nama_produk berawalan f, urutkan berdasarkan qty terbanyak
select nama_produk, qty 
from tr_penjualan_dqlab
where nama_produk like 'F%' 
order by qty desc;

-- latihan 4
-- ambil semua kolom dari transaksi_penjualan yang memiliki diskon dan urutan berdasarkan harga tertinggi 
select* from tr_penjualan_dqlab order by harga desc, diskon_persen > 0; 

-- tampilakn semua kolom, kualitas penjualan yang memiliki harga minimal seratus ribu rupiah dan diurutkan berdasrkan harga tertinggi 
select nama_produk, qty, harga from  tr_penjualan_dqlab where harga >= 100000 order by harga desc;

-- tampilkan  kolom nama_produk,qty  pembelian dan harga dari tranaksi penjualan yang memiliki harga minimal seratus ribu rupiah atau nama_produk awalan karakter T dan urutkna berdasarkan diskon tertinggi
select nama_produk, qty , harga from tr_penjualan_dqlab where harga >= 100000 or nama_produk like  'T%' order by harga desc;

-- fungsi agrerasi 
-- ambil semua nilai qty dari  seluruh  row pada tabel transaksi 

select sum(qty) from tr_penjualan_dqlab;

-- menghitung jumlah seluruh row pada tabel transaksi 
select count(*)  from tr_penjualan_dqlab;
select count(*) from ms_pelanggan_dqlab;
select count(*) from ms_produk_dqlab;

-- menghitung penjumlahan qty dan menghitung seluruh row 
select sum(qty), count(*) 
from tr_penjualan_dqlab;

-- menghitung rata rata qty nilai tertinggi dari qty dan nilain terendah 
select avg(qty), min(qty), max(qty)
from tr_penjualan_dqlab;

-- count(distinct)
-- menghitung nilai unik dari nama_produk di  tabe tr_penjualan_dqlab
select count(distinct nama_produk), count(nama_produk)
from tr_penjualan_dqlab;

-- nama produk dan fungsi agrerasi untuk nilai qty pada tabel tr_penjualan_dqlab
select nama_produk, max(qty)
from tr_penjualan_dqlab;

-- group by
-- mengambil gruoping nilai dari nama_produk
select nama_produk from tr_penjualan_dqlab
group by nama_produk;

-- ambil grouping nilai dari kolom nama_produk dari qty
select nama_produk, qty
from tr_penjualan_dqlab
group by 1,2;

-- ambil jumlah qty dari grouping nama_produk terhadap seluruh row pada tabel transasksi
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk;

-- ambil jumlah qty dari hasil grouping nama_produk terhadap seluruh row tabel penjualan urutkan qty terbesar 
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
order by sum(qty) desc;

-- ambil jumlah qty 2 dari hasil grouping nama produk terhadap seluruh row pada tabel transaksi
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) > 2
order by sum(qty) desc;

-- latihan mandiri 
select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) > 2
order by sum(qty) desc;

select nama_produk, sum(qty)
from tr_penjualan_dqlab
group by nama_produk
having sum(qty) = 9
order by sum(qty) desc;

select nama_produk, harga, jumlah (qty)
from tr_penjualan_dqlab
group by nama_produkorder 
order by harga desc;







