-- Nama		: Sylvana Baiq Murtijanto
-- NIM		: 23241075
-- Kelas	: B
-- Modul	: 2 (SELECT)

-- membuat database
CREATE DATABASE pti_mart;

-- menggunakan database
USE pti_mart;

-- cek kolom dalam setiap tabel
DESCRIBE ms_pelanggan;
DESCRIBE ms_produk;
DESCRIBE tr_penjualan;

-- SELECT
-- Menggunakan SELCT untuk 1 Tabel
-- Mengambil kolom nama produk dari tabel produk
SELECT nama_produk FROM ms_produk;

-- Mengambil lebih dari satu kolom dari sebuah tabel
SELECT nama_produk, harga FROM ms_produk;

-- Mengambil semua kolom dari sebuah tabel
SELECT * FROM ms_produk;

-- LATIHAN
-- Mengambil Kode Produk dan Nama Produk dari tabel produk
SELECT kode_produk, nama_produk FROM ms_produk;

-- Mengambil seluruh kolom dari tabel penjualan
SELECT * FROM tr_penjualan;

-- PREFIX dan ALIAS
-- PREFIX, bagian objek database yang hirarkinya lebih tinggi
-- Menggunakan PREFIX nama tabel untuk kolom nama_produk dari tabel produk
SELECT ms_produk.nama_produk FROM ms_produk;

-- Menggunakan nama database dan tabel sebagai prefix untuk kolom nama_produk
SELECT pti_mart.ms_produk.nama_produk FROM ms_produk;

-- ALIAS, nama sementara untuk objek database
-- Mengganti sementara kolom nama_produk dengan ALIAS
SELECT nama_produk AS np FROM ms_produk;
SELECT nama_produk np FROM ms_produk;

-- Menganti sementara nama tabel dengan ALIAS
SELECT nama_produk FROM ms_produk AS msp;

-- Kombinasikan PREFIX dan ALIAS
SELECT ms_nama_produk FROM ms_produk AS msp;

-- CASE 1
SELECT nama_pelanggan, alamat FROM ms_pelanggan;

-- CASE 2
SELECT nama_produk, harga FROM ms_produk;





