CREATE DATABASE seal_fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('Laki-Laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);



-- insert jurusan
insert into jurusan (kode,nama) values ('APBL','Administrasi Publik');
insert into jurusan (kode, nama) values ("PTIF", "Pendidikan Teknik Informatika");

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) 
values (1, "20210087", "Aldy", "Laki-Laki", "Kawangkoan", "2002-03-30", "Woloan 1 Utara");
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (2, "20210078", "Injil", "perempuan", "Tomohon", "2003-01-06", "Kamasi 1");

-- insert mahasiswa
update mahasiswa set alamat = "Perum GWI" where id = 1;

-- insert mahasiswa
delete from mahasiswa where id = 2;