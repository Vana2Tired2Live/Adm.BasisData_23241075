-- membuat database
CREATE DATABASE data_tiket_konser_online;

-- menggunakan database 'tiket_konser_online'
USE data_tiket_konser_online;

-- membuat tabel dalam database 'data_tiket_konser_online'
CREATE TABLE customer (
	customer_id varchar(25),
    nama_lengkap varchar(50),
    email varchar(75),
    no_telepon varchar(15));
    
CREATE TABLE tiket (
	id_tiket varchar(10),
	nama_kategori varchar(10),
    harga int);
    
CREATE TABLE transaksi_jualbeli (
	id_transaksi VARCHAR(10),
    tgl_beli DATETIME,
    id_tiket VARCHAR(10),
    customer_id VARCHAR(25),
    nama_kategori VARCHAR(10),
    qty INT,
    metode_pembayaran VARCHAR(50),
    total_harga INT);
     
ALTER TABLE transaksi_jualbeli MODIFY id_transaksi varchar(10) FIRST;
     
-- Mengupdate primary key tabel
ALTER TABLE customer
ADD PRIMARY KEY (customer_id);

ALTER TABLE tiket
ADD PRIMARY KEY (id_tiket);

ALTER TABLE transaksi_jualbeli
ADD PRIMARY KEY (id_transaksi);
    
-- mengupdate foreign key tabel transaksi_jualbeli
ALTER TABLE transaksi_jualbeli
ADD CONSTRAINT FK_customerTransaksi
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

ALTER TABLE transaksi_jualbeli
ADD CONSTRAINT FK_tiketTransaksi
FOREIGN KEY (id_tiket) REFERENCES tiket(id_tiket);

-- membuat data customer
INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES	('01', 'Santi', 'santi01@gmail.com','081234567890'),
		('02', 'Yanto', 'yanto02@gmail.com','085791234567'),
        ('03', 'Samsul', 'samsul03@gmail.com','089654321098'),
        ('04', 'Mahmud', 'Mahmud04@gmail.com','08177482868'),
        ('05', 'Siti', 'siti05@gmail.com','0892378678');
SELECT * FROM customer;	

-- mengisi data pada tabel tiket
INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('REG9664300', 'REGULAR', '1500000'),
		('PLT7889200', 'PLATINUM', '2750000'),
        ('VIP1457700', 'VIP', '3500000'),
        ('KTG5728800', 'KATEGORI04', '40000'),
        ('KTG4522100', 'KATEGORI05', '35000');
SELECT * FROM tiket;
        
-- membuat data customer
INSERT INTO transaksi_jualbeli (id_transaksi, id_tiket, customer_id, nama_kategori, qty, tgl_beli, metode_pembayaran, total_harga)
VALUES	('transaksi21', 'VIP1457700', '01','VIP', '1', '2023-04-10', 'M-BANKING', '3500000'),
		('transaks31', 'REG7889200', '02','REGULER','2', '2023-04-11', 'E-WALLET', '3000000'),
        ('transak41', 'VIPO9664300', '03','VIP','3', '2023-04-13', 'DANA', '10500000'),
        ('trans51', 'PLT5728800', '04','PLATINUM','4', '2023-04-14', 'BRIMO', '11000000'),
        ('tra61', 'PLT4522100', '05','PLATINUM','2', '2023-04-15', 'OVO', '5500000');
SELECT *FROM transaksi_jualbeli;

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
