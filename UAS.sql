-- Nama     : Sylvana Baiq Murtijanto 
-- NIM      : 23241075
-- Kelas    : B
-- UAS

-- Menggunakan Database
USE pti_mart;

-- Soal 1 
SELECT kode_pelanggan, nama_produk, qty, harga, qty * harga AS total_jual 
FROM tr_penjualan
HAVING total_jual > 200000
ORDER BY harga ASC;

-- Soal 2
SELECT mp.nama_pelanggan, tp.qty AS transaksi
FROM tr_penjualan AS tp
JOIN ms_pelanggan AS mp ON TRUE;

-- Soal 3
SELECT mp.nama_produk, mp.kategori_produk, tp. qty, mp.harga 
FROM ms_produk AS mp
INNER JOIN tr_penjualan AS tp
WHERE mp.nama_produk IS NOT NULL
GROUP BY nama_produk;

