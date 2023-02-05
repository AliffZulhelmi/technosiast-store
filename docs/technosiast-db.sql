CREATE DATABASE technosiast
CREATE TABLE staff(
    NokpStaf VARCHAR(12),
    NamaStaf VARCHAR(60),
    PassStaf VARCHAR(20),
    
    PRIMARY KEY (NokpStaf)
);
CREATE TABLE pembeli(
    NokpPembeli VARCHAR(12),
    NamaPembeli VARCHAR(60),
    PassPembeli VARCHAR(30),
    
    PRIMARY KEY (NokpPembeli)
);
CREATE TABLE jenama (
    KodJenama VARCHAR(10),
    NamaJenama VARCHAR(60),
    
    PRIMARY KEY (KodJenama)
);
CREATE TABLE telefon(
    KodBarang INT(2) AUTO_INCREMENT,
    NamaBarang VARCHAR(3),
    KodJenama VARCHAR(10),
    Harga DOUBLE(7,2),
    Storan INT(5),
    NokpStaf VARCHAR(12),
 
    PRIMARY KEY (KodBarang),
    
    FOREIGN KEY (NokpStaf)
    REFERENCES staff(NokpStaf)
    ON DELETE CASCADE ON UPDATE CASCADE,
    
    FOREIGN KEY (KodJenama)
    REFERENCES jenama (KodJenama)
    ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO jenama
(KodJenama, NamaJenama)
VALUES
('APL01' , 'APPLE'),
('POC01' , 'POCO'),
('RLM01' , 'REALME'),
('VIV01' , 'VIVO');

INSERT INTO pembeli
(NokpPembeli, NamaPembeli, PassPembeli)
VALUES
('0123455' , 'SAMAD KAZAR' , '123459'),
('0123454' , 'SOL AHMAD' , '123460'),
('0123453' , 'SHAH AMIR' , '123461'),
('0123455' , 'AIREL ALI' , '123462');

INSERT INTO staff
(NokpStaf, NamaStaf, PassStaf)
VALUES
('0123455' , 'AMAR VELL' , '122479'),
('0123454' , 'WAFY FD' , '122480'),
('0123453' , 'KHABIR MYV' , '122481'),
('0123455' , 'NAFIS LCV' , '122482');