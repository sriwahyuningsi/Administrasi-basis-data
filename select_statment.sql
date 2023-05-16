-- menggunakan database tugas1
use tugas1;

-- cek tabel yang tersedia
show tables;

-- cek deskripsi tiap table
desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- select 1 kolom dari table ms_produk_dqlab
select nama_produk from ms_produk_dqlab;

-- select 1 kolom dari tabel ms_pelanggan dan tr_penjualan
select nama_pelanggan from ms_pelanggan_dqlab;
select tgl_transaksi from tr_penjualan_dqlab;

-- select 2 atau lebih kolom dari tabek ms_produk_dqlab
select nama_produk, harga from ms_produk_dqlab;

-- mengambil kolom kode pelanggan, tanggal transaksi dan total harga dari tabel 
select kode_pelanggan, tgl_transaksi from tr_penjualan_dqlab;

-- mengambil seluruh kolom dari tabel 
-- ambil seluruh kolom pada tabel ms_pelanggan_dqlab
select * from ms_pelanggan_dqlab;

-- prefix dan alias 
-- prefix nama tabel 
select ms_produk_dqlab.nama_produk, ms_produk_dqlab.harga from ms_produk_dqlab;
 
 -- prefix dari nama database dan tabel 
 select tugas1.ms_produk_dqlab.nama_produk from ms_produk_dqlab;
 
 -- alias dari nama kolom 
 select nama_produk as np, harga price from ms_produk_dqlab;
 
 -- alias dari nama tabel 
 select nama_produk from ms_produk_dqlab as msp;
  
  -- alias bertemu dengan prefix
  select msp.nama_produk from ms_produk_dqlab as msp
  
  
 




 