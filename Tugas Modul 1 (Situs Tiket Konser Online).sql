-- membuat database
CREATE DATABASE situs_tiket_konser_online;

-- menggunakan database 'situs_tiket_konser_online'
USE situs_tiket_konser_online;

-- membuat tabel dalam database 'situs_tiket_konser_online'
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
	id_transaksi varchar(10),
    id_tiket VARCHAR(10),
    customer_id VARCHAR(25),
    nama_kategori VARCHAR(10),
    harga INT,
    qty INT,
    tgl_beli DATETIME,
    metode_pembayaran VARCHAR(50),
    total_harga INT);
    
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

-- mengisi data pada tabel customer
INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000001', 'Customer 1', 'customer1@gmail.com', '087987654321');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000002', 'Customer 2', 'customer2@gmail.com', '087987654321');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000003', 'Customer 3', 'customer3@gmail.com', '087987654321');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000004', 'Customer 4', 'customer4@gmail.com', '087987654321');

INSERT INTO customer(customer_id, nama_lengkap, email, no_telepon)
VALUES ('0000000005', 'Customer 5', 'customer5@gmail.com', '087987654321');

-- mengisi data pada tabel tiket
INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('Reg1000000', 'Regular', '1500000');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('Plt0200000', 'Platinum', '2750000');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('VIP3400000', 'VIP', '3500000');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('Ktg3450000', 'kategori4', '0');

INSERT INTO tiket(id_tiket, nama_kategori, harga)
VALUES ('Ktg3456000', 'kategori5', '0');

-- mengisi data pada tabel transaksi_jualbeli
INSERT INTO transaksi_jualbeli(id_transaksi, id_tiket, customer_id, nama_kategori, harga, qty, tgl_beli, metode_pembayaran, total_harga)
VALUES  ('1029384756', 'Reg9384756', '1849276305', 'Regular', '1500000', '1', '2022-10-25', 'DANA', '1500000'),
		('9283746501', 'VIP3746501', '9023187461', 'VIP', '3500000', '3', '2022-05-10', 'M-Banking', '10500000'),
        ('7812653094', 'VIP2653094', '7392641058', 'VIP', '3500000', '1', '2023-01-04', 'OVO', '3500000'),
        ('4501928376', 'Plt1928376', '4309582176', 'Platinum', '2750000','2', '2023-03-01', 'Bank BNI', '5500000'),
        ('6390482175', 'Reg0482175', '5678013492', 'Regular', '2750000','5', '2022-02-10', 'DANA', '7500000');

-- mengakses isi data pada tabel
SELECT * FROM customer;
SELECT * FROM tiket;
SELECT * FROM transaksi_jualbeli;
