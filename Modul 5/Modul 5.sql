-- Modul    : 5 (JOIN)
-- Nama     : Sylvana Baiq Murtijanto 
-- NIM      : 23241075
-- Kelas    : B

-- Menggunakan Database
USE pti_mart;

-- JOIN
-- Menggabungkan dua buah tabel berdasarkan kolom yang sama

-- Praktik 1
-- Ambil nama pelanggan yang pernah bertransaksi
-- artinya ambil kolom kode_pelanggan, nama_pelanggan, dan qty dari
-- penggabungan tabel penjualan dan tabel pelanggan
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan AS tp
JOIN ms_pelanggan AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Praktik 2
-- Menggabungkan dua tabel tanpa memeperhatikan relational keys
-- Ambil nama pelanggan yang pernah bertransaksi
-- menggabungkan tabel penjualan dan tabel pelanggan tanpa
-- memperhatikan kolom yang menjadi primary key
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
FROM tr_penjualan AS tp
JOIN ms_pelanggan AS mp ON TRUE;

-- INNER JOIN
-- Join yang mengambil data dari dua sisi tabel yang berhubungan
-- Praktik 3
-- Ambil kode pelanggan, nama pelanggan, nama produk, qty dari hasil join tabel penjualan dan tabel pelanggan
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
FROM tr_penjualan AS tp
INNER JOIN ms_pelanggan AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;

-- Latihan Mandiri
-- Join untuk ketiga tabel pada pti_mart dengan INNER JOIN
SELECT * FROM ms_pelanggan
INNER JOIN tr_penjualan 
INNER JOIN ms_produk ON TRUE;

-- Join ketiga tabel dengan urutan ms_pelanggan, tr_penjualan dan ms_produk pada pti_mart dengan LEFT JOIN
-- filter untuk qty yang tidak bernilai NULL dengan operator IS NOT NULL
SELECT * FROM ms_pelanggan AS mp
LEFT JOIN tr_penjualan AS tp ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT JOIN ms_produk AS msp ON tp.kode_produk = msp.kode_produk
WHERE tp.qty IS NOT NULL;

-- Join ketiga tabel dengan urutan ms_pelanggan, tr_penjualan dan ms_produk pada pti_mart dengan INNER JOIN
-- tampilkan grouping untuk kolom kategori produk dan penjumlahan qty
SELECT msp.kategori_produk, SUM(tp.qty) AS total_qty
FROM ms_pelanggan AS mp
INNER JOIN tr_penjualan AS tp ON mp.kode_pelanggan = tp.kode_pelanggan
INNER JOIN ms_produk AS msp ON tp.kode_produk = msp.kode_produk
GROUP BY msp.kategori_produk;

-- JOIN ms_produk dengan tabel ms_produk dengan kolom relationship kode_produk
SELECT mp1.kode_produk, mp2.kode_produk
FROM ms_produk AS mp1
JOIN ms_produk AS mp2 ON mp1.kode_produk = mp2.kode_produk;





