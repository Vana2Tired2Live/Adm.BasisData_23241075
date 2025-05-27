-- Modul    : 4 (ORDER BY, Fungsi Agregasi, GROUP BY, HAVING)
-- Nama     : Sylvana Baiq Murtijanto 
-- NIM      : 23241075
-- Kelas    : B

-- Menggunakan Database
USE pti_mart;

-- ORDER BY
-- Ambil nama produk dan qty dari tabel penjualan urutkan qty
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty;

-- Ambil nama produk dan qty dari tabel penjualan urutkan qty dan nama produk
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty, nama_produk;

-- LATIHAN MANDIRI
-- Tampilkan semua kolom dari tabel penjualan, urutkan berdasarkan qty dan tanggal transaksi
SELECT * FROM tr_penjualan ORDER BY qty, tgl_transaksi;

-- Tampilkan semua kolom dari tabel pelanggan, urutkan berdasarkan nama pelanggan
SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan;

-- Tampilkan semua kolom dari tabel pelanggan, urutkan berdasarkan alamat
SELECT * FROM ms_pelanggan ORDER BY alamat;

--------------------------------------------------------------------------------------

-- ORDER BY ASC dan DESC
-- Ambil nama produk dan qty dari tabel penjualan diurutkan qty dari besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC;

-- Ambil nama produk dan qty dari tabel penjualan diurutkan qty dan nama produk dari besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan ORDER BY qty DESC, nama_produk DESC;

-- LATIHAN MANDIRI
-- Tampilkan semua kolom dari tabel penjualan, urutkan tanggal transaksi secara descending, qty secara ascending
SELECT * FROM tr_penjualan ORDER BY tgl_transaksi DESC, qty ASC;

-- Tampilkan semua kolom dari tabel pelanggan, urutkan berdasarkan nama pelanggan secara descending
SELECT * FROM ms_pelanggan ORDER BY nama_pelanggan DESC;

-- Tampilkan semua kolom dari tabel pelanggan, urutkan berdasarkan alamat secara descending
SELECT * FROM ms_pelanggan ORDER BY alamat DESC;

--------------------------------------------------------------------------------------

-- ORDER BY dari hasil Perhitungan
-- Ambil nama produk, qty, harga, harga*qty dari tabel penjualan diurutkan harga*qty besar-kecil
SELECT nama_produk, harga, qty, harga*qty AS total
FROM tr_penjualan
ORDER BY total DESC;

-- LATIHAN MANDIRI
-- Mengurutkan tabel penjualan dengan total harga menggunakan rumusan qty*harga-diskon
SELECT nama_produk, qty, harga, diskon_persen, harga*qty AS total_harga,
diskon_persen/100*harga AS harga_diskon, ((harga*qty) - (diskon_persen/100*harga)) AS total_bayar
FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY diskon_persen DESC, total_bayar DESC;

--------------------------------------------------------------------------------------

-- ORDER BY menggunakan WHERE
-- Ambil nama_produk, qty, dari tr_penjualan yang nama produknya diawali F, urut qty
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk LIKE 'F%'
ORDER BY qty DESC;

-- LATIHAN MANDIRI
-- Tampilkan semua kolom dari tabel penjualan yang memiliki diskon dan diurutkan berdasarkan harga tertinggi
SELECT * FROM tr_penjualan
WHERE diskon_persen > 0
ORDER BY harga DESC;

-- Tampilkan kolom nama produk, qty, harga dari transaksi yang memiliki harga minimal 100.000 dan diurutkan berdasarkan harga tertinggi
SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE harga >= 100000
ORDER BY harga DESC;

-- Tampilkan kolom nama produk, qty, harga dari transaksi yang memiliki harga minimal 100.000 atau nama produk berawalan 'T'
-- Diurutkan berdasarkan diskon tertinggi
SELECT nama_produk, qty, harga
FROM tr_penjualan
WHERE harga >= 100000 OR nama_produk LIKE 'T%'
ORDER BY diskon_persen DESC;

--------------------------------------------------------------------------------------

