-- MODUL 2 (SELECT)
-- Membuat 10 query SELECT dari database yang dibuat
-- 1. Mengambil kolom nama_lengkap pada tabel customer 
SELECT nama_lengkap FROM customer;

-- 2. Mengambil lebih dari 1 kolom (nama_kategori dan harga) pada tabel tiket
SELECT nama_kategori, harga FROM tiket;

-- 3. Mengambil seluruh kolom pada tabel customer
SELECT * FROM customer;

-- 4. Menggunakan PREFIX nama tabel untuk kolom email pada tabel customer  
SELECT customer.email FROM customer; 

-- 5. Menggunakan nama database dan tabel sebagai PREFIX untuk kolom id_tiket
SELECT data_tiket_konser_online.transaksi_jualbeli.id_tiket FROM transaksi_jualbeli;

-- 6. Menggunakan nama database dan tabel PREFIX untuk kolom nama_kategori,harga
SELECT data_tiket_konser_online.tiket.nama_kategori, harga FROM tiket;

-- 7. Mengganti sementara nama kolom id_transaksi dengan ALIAS pada tabel transaksi_jualbeli
SELECT id_transaksi AS ID FROM transaksi_jualbeli;

-- 8. Mengganti sementara nama kolom nama_lengkap dan email dengan ALIAS pada tabel customer
SELECT nama_lengkap AS NL, email AS AZ FROM customer;

-- 9. Mengkombinasikan PREFIX dan ALIAS pada kolom id_tiket pada tabel tiket
SELECT tiket.id_tiket AS TKT FROM tiket;

-- 10. Mengkombinasikan PREFIX dan ALIAS dari database pada tabel transaksi_jualbeli untuk kolom tgl_beli, metode_pembayaran
SELECT data_tiket_konser_online.transaksi_jualbeli.tgl_beli AS TGL, metode_pembayaran AS MP FROM transaksi_jualbeli;
