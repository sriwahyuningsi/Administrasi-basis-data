-- ORDER BY, GROUP BY, ASC DESC, HAVING

-- menggunakan database dqlabpraktek2
use dqlabpraktek2;

-- menggunakan ORDER BY untuk mengurut data 
-- ambil nama kolom nama_produk, qyt pada tabel penjualan, dan diurutkan berdasarkan kolom qty
select nama_produk, qty
from tr_penjualan_dqlab
order by qty;

-- ambil nama kolom nama_produk, qty pada tabel penjualan dan urutkan berdasarkan qty dan nama_produk
select nama_produk, qty
from tr_penjualan_dqlab
order by qty, nama_produk;

-- latihan1
-- ambil semua kolom dari tabel tr_penjualan_dqlab dengan mengurutkan 
select*from tr_penjualan_dqlab order by qty,tgl_transaksi;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan
select*from ms_pelanggan_dqlab order by  nama_pelanggan;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat
select*from ms_pelanggan_dqlab order by alamat;

-- ORDER BY dengan ASC dan desc
-- ambil nama_produk, qty dari tabel penjualan urutakan dengan DESC qty
select nama_produk, qty 
from tr_penjualan_dqlab 
order by qty desc;

-- ambil nama_produk, qty dari tabel pen
select nama_produk, qty 
from tr_penjualan_dqlab 
order by qty desc, nama_produk ASC;

-- ambil semua kolom tabel tr_penjualan dengan mengurutkan tgl_transaksi secara desc dan qty secara asc
select*from tr_penjualan_dqlab order by tgl_transaksi desc, qty asc;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara desc
select*from ms_pelanggan_dqlab order by nama_pelanggan desc;

-- ambil semua kolom dari tabel ms_pelanggan dengan mengurutkan berdasarkan alamat secara desc
select*from ms_pelanggan_dqlab order by alamat desc;

-- ORDER BY dari hasil perhitungan
-- ambil nama_produk, qty, harga, total_beli urutkan berdasarkan total beli
select nama_produk, qty, harga, qty*harga as total_beli
from tr_penjualan_dqlab
order by total_beli desc;



-- latihan mandiri
-- urutkan dengan ekspresi total harga menggunakan rumusan jumlah diskon dikali harga barang dikurangi diskon
select 250000 - (250000*(10/100));

-- ORDER BY dengan WHERE
-- ambil nama_produk , qty  dari tabel penjualan dengan nama_produk berawalan F, urutkan berdasarkan qty terbanyak
select nama_produk, qty 
from tr_penjualan_dqlab
where nama_produk like 'F%'
order by qty desc;

select diskon_persen from tr_penjualan_dqlab
where diskon_persen > 0;

-- taampilkan semua kolom dari tr_penjualan yang memiliki diskon dan urutkan bersarkan harga tertinggi
select*from tr_penjualan_dqlab order by harga desc, diskon_persen > 0;
-- tampilkan semua kolom nama_produk, kualitas penjualan dan harga dari tr_penjualan yang memiliki harga minimal seratus ribu rupiah dan diurutkanberdasarkan harga tertinggi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga >= 100000 order by harga desc;
-- tampilkan kolom nama_produk, qty pembelian dan harga dari tr_penjualan yang memiliki harga minimal seratus ribu rupiah atau nama produk berawalan karakter T dan diurutan berdasarkan diskon tertringgi
select nama_produk, qty, harga from tr_penjualan_dqlab where harga >= 100000 or nama_produk like 'T%'order by harga desc;

