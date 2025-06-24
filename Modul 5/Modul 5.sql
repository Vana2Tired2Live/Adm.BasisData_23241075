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
JOIN ms_pelanggan AS mp
ON TRUE;

-- INNER JOIN
-- Join yang mengambil data dari dua sisi tabel yang berhubungan
-- Praktik 3
-- Ambil kode pelanggan, nama pelanggan, nama produk, qty
-- dari hasil join tabel penjualan dan tabel pelanggan
SELECT tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
FROM tr_penjualan AS tp
INNER JOIN ms_pelanggan AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan;


