
CREATE DATABASE IF NOT EXISTS VakifEserleriDB;
USE VakifEserleriDB;


CREATE TABLE EserTurleri (
    tur_id INT PRIMARY KEY AUTO_INCREMENT,
    tur_adi VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Bolgeler (
    bolge_id INT PRIMARY KEY AUTO_INCREMENT,
    bolge_adi VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Yerler (
    yer_id INT PRIMARY KEY AUTO_INCREMENT,
    yer_adi VARCHAR(100) NOT NULL,
    bolge_id INT,
    il VARCHAR(20),
    ilce VARCHAR(30),
    FOREIGN KEY (bolge_id) REFERENCES Bolgeler(bolge_id)
);

CREATE TABLE DepoBolumleri (
    bolum_id INT PRIMARY KEY AUTO_INCREMENT,
    bolum_adi VARCHAR(50) NOT NULL,
    kat_no INT NOT NULL
);

CREATE TABLE Raflar (
    raf_id INT PRIMARY KEY AUTO_INCREMENT,
    bolum_id INT NOT NULL,
    raf_no INT NOT NULL,
    FOREIGN KEY (bolum_id) REFERENCES DepoBolumleri(bolum_id)
);

CREATE TABLE Eserler (
    eser_id INT PRIMARY KEY AUTO_INCREMENT,
    eser_no INT NOT NULL UNIQUE,
    sira_no INT,
    envanter_no VARCHAR(20) NOT NULL,
    adet INT DEFAULT 1,
    tur_id INT NOT NULL,
    kayit_tarihi DATE NOT NULL,
    yer_id INT NOT NULL,
    raf_id INT,
    uzunluk_cm INT,
    genislik_cm INT,
    durum VARCHAR(20) DEFAULT 'Depoda',
    FOREIGN KEY (tur_id) REFERENCES EserTurleri(tur_id),
    FOREIGN KEY (yer_id) REFERENCES Yerler(yer_id),
    FOREIGN KEY (raf_id) REFERENCES Raflar(raf_id)
);

CREATE TABLE EserAciklamalari (
    aciklama_id INT PRIMARY KEY AUTO_INCREMENT,
    eser_id INT NOT NULL,
    aciklama_tipi VARCHAR(20) NOT NULL,
    aciklama_metni TEXT NOT NULL,
    FOREIGN KEY (eser_id) REFERENCES Eserler(eser_id)
);


INSERT INTO EserTurleri (tur_adi) VALUES
('HALI'), ('KILIM'), ('CÝCÝM'), ('SECCADE'), ('DÝÐER');

INSERT INTO Bolgeler (bolge_adi) VALUES
('Doðu Anadolu'), ('Batý Anadolu'), ('Ýç Anadolu'), ('Karadeniz'), ('Belirtilmemiþ');

INSERT INTO Yerler (yer_adi, bolge_id, il, ilce) VALUES
('Kastamonu Merkez', 4, 'Kastamonu', 'Merkez'),
('Milas Ulu Camii', 2, 'Muðla', 'Milas'),
('Elazýð Harput Sare Hatun Camii', 1, 'Elazýð', 'Harput'),
('Ankara Vakýflar Bölge Müdürlüðü', 3, 'Ankara', 'Çankaya'),
('Çorum Ýskilip Hacý Þaban Mutaflar Camii', 4, 'Çorum', 'Ýskilip'),
('Belirtilmemiþ', 5, NULL, NULL);

INSERT INTO DepoBolumleri (bolum_adi, kat_no) VALUES
('Ana Depo', 18), ('Ana Depo', 19), ('Ana Depo', 20),
('Özel Eserler', 19), ('Restorasyon', 18);

INSERT INTO Raflar (bolum_id, raf_no) VALUES
(2, 1), (2, 2), (3, 1), (4, 1), (1, 1);


INSERT INTO Eserler (eser_no, sira_no, envanter_no, adet, tur_id, kayit_tarihi, yer_id, raf_id, uzunluk_cm, genislik_cm, durum) VALUES
(139050, 49, '37.1337', 1, 2, '2007-07-01', 1, 1, 280, 84, 'Depoda'),
(139051, 50, '48.06.73', 1, 2, '2007-07-01', 2, 1, 258, 74, 'Depoda'),
(138462, 51, '23.529', 1, 1, '2007-07-01', 3, 2, 147, 92, 'Depoda'),
(138463, 52, '37.668', 1, 1, '2007-07-01', 1, 2, 160, 94, 'Depoda'),
(139223, 53, '37.665', 1, 1, '2007-07-01', 1, 1, 113, 86, 'Restorasyonda'),
(138151, 54, '06.1155', 1, 2, '2007-07-01', 4, 3, 315, 70, 'Depoda'),
(138781, 55, '19.1741', 1, 3, '2007-07-01', 5, 1, 177, 59, 'Sergide'),
(137777, 1, '06.1196', 1, 2, '2007-07-01', 4, 1, 415, 81, 'Depoda'),
(138143, 2, '06.402', 1, 1, '2007-07-01', 4, 3, 115, 68, 'Depoda'),
(138144, 3, '06.417', 1, 1, '2007-07-01', 4, 3, 78, 82, 'Depoda'),
(138145, 4, '06.423', 1, 1, '2007-07-01', 4, 3, 116, 78, 'Depoda'),
(137425, 5, '1695', 1, 1, '2007-07-01', 6, 3, 122, 82, 'Depoda'),
(139534, 6, '06.427', 1, 1, '2007-07-01', 4, 3, 131, 79, 'Depoda'),
(137778, 7, '06.437', 1, 1, '2007-07-01', 4, 3, 111, 84, 'Depoda'),
(137431, 22, '06.404', 1, 1, '2007-07-01', 4, 5, 119, 75, 'Depoda'),
(138457, 23, '48.06.169', 1, 1, '2007-07-01', 2, 3, 69, 103, 'Depoda'),
(139536, 24, '06.430', 1, 1, '2007-07-01', 4, 3, 124, 80, 'Depoda'),
(139219, 25, '06.409', 1, 1, '2007-07-01', 4, 3, 128, 94, 'Depoda'),
(138148, 26, '06.406', 1, 1, '2007-07-01', 4, 3, 131, 96, 'Depoda'),
(138458, 27, '06.412', 1, 1, '2007-07-01', 4, 3, 109, 70, 'Depoda'),
(138149, 28, '06.425', 1, 1, '2007-07-01', 4, 3, 143, 93, 'Depoda');


INSERT INTO EserAciklamalari (eser_id, aciklama_tipi, aciklama_metni) VALUES
(2, 'Tarihsel', 'Bahçeli Anadolu kilim desenleri grubuna ait'),
(3, 'Teknik', 'Yün malzeme, doðal boyalý'),
(1, 'Koruma', 'UV ýþýnlarýna duyarlý, özel koruma gerektirir'),
(5, 'Tarihsel', '17. yüzyýl sonu Osmanlý dönemi halýsý'),
(7, 'Teknik', 'Renkli cicim dokuma, yerel motifler'),
(10, 'Tarihsel', 'Ankara bölgesine ait geleneksel desenler');

