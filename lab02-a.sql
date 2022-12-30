DROP TABLE IF EXISTS Soft CASCADE;
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Rooms CASCADE;
DROP TABLE IF EXISTS PCs CASCADE;
DROP TABLE IF EXISTS Installs CASCADE;

CREATE TABLE Soft(
ID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
Sname VARCHAR (100) NOT NULL,
Ver INT NOT NULL,
quant INT NOT NULL
);

CREATE TABLE Employees(
ID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
Lname VARCHAR (100) NOT NULL,
Fname VARCHAR (100) NOT NULL,
Mname VARCHAR (100) NOT NULL
);

CREATE TABLE Rooms(
ID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
Num INT NOT NULL,
Emp_id INT NOT NULL REFERENCES Employees (ID)
);

CREATE TABLE PCs(
ID INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
Note VARCHAR (100) NULL,
Ip_addr VARCHAR (100) NOT NULL,
mac_addr VARCHAR (100) NOT NULL,
Room_id INT NOT NULL REFERENCES Rooms (ID)
);

CREATE TABLE Installs(
Pc_id INT NOT NULL REFERENCES PCs (ID),
Soft_id INT NOT NULL REFERENCES Soft (ID)
);

INSERT INTO Soft (Sname, Ver, Quant) VALUES
('MacOS', 9, 12),
('IOS', 16, 150),
('Unity', 22, 15),
('Windows', 11, 12),
('VirtualBox', 7, 12);

INSERT INTO Employees (Lname, Fname, Mname) VALUES
('Попова', 'София', 'Данииловна'),
('Данилов', 'Богдан', 'Максимович'),
('Иванов', 'Илья', 'Владиславович'),
('Лукьянов', 'Станислав', 'Романович'),
('Ефремова', 'Мелисса', 'Александровна'),
('Бычков', 'Артур', 'Иванович'),
('Орлова', 'Арина', 'Константиновна'),
('Жуков', 'Георгий', 'Филиппович'),
('Логинов', 'Кирилл', 'Михайлович'),
('Медведевна', 'Варвара', 'Кирилловна');

INSERT INTO Rooms (Num, Emp_id) VALUES
(15, 10),
(9, 9),
(8, 8),
(7, 9),
(6, 7),
(5, 6),
(4, 5),
(3, 4),
(2, 3),
(1, 2),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5);

INSERT INTO PCs (Note, Ip_addr, Mac_addr, Room_id) VALUES
('Комп', '1239.708.234.342', 'db:33:ed:33:f6:33', 15),
('Комп', '1.55.755.115', 'cb:25:ef:29:26:32', 14),
('Комп', '08.979.36.12', 'fb:11:ab:71:18:51', 13),
('Комп', '414.770.209.114', '74:f5:66:45:06:c7', 12),
('Комп', '128.703.87.216', '62:17:1d:1e:d2:a8', 11),
('Комп', '17.179.221.111', 'ce:90:98:19:eb:61', 10),
('Комп', '36.47.209.211', 'a5:4b:04:0f:14:68', 9),
('Комп', '49.127.152.11', '60:3c:66:f3:37:ef', 8),
('Комп', '72.117.35.912', '65:08:50:bb:7a:a9', 7),
('Комп', '176.172.234.722', 'cc:75:9a:ed:2c:63', 6),
('Комп', '241.277.123.13', '57:f0:2a:78:93:ef', 5),
('Комп', '54.123.376.23', 'fd:6f:6c:0c:a6:21', 4),
('Комп', '131.2307.188.8', 'ab:75:df:7c:83:e0', 3),
('Комп', '233.587.233.2', '86:e5:6f:b3:f7:be', 2),
('Комп', '129.457.55.3', '6b:2b:2f:5f:66:ad', 1),
('Комп', '42.637.33.24', 'b2:a8:1a:56:fc:11', 1),
('Комп', '152.707.243.48', '9c:e8:68:40:d6:59', 2),
('Комп', '82.932.250.6', '49:31:82:a8:4b:21', 3),
('Комп', '923.933.44.6', '2e:6c:fa:77:d1:29', 4),
('Комп', '297.138.159,9', 'a9:f2:8f:b0:30:9c', 5),
('Комп', '67.243.48.20', 'e6:a6:78:c6:73:6a', 6),
('Комп', '168.43.20.7', 'a3:55:e0:3d:11:cd', 7),
('Комп', '1266.139.102.43', '03:55:de:bf:22:b5', 8),
('Комп', '266.613.2.2', '2e:af:ba:1c:94:25', 9),
('Комп', '996.103.53.5', '4b:81:02:82:03:6a', 10),
('Комп', '240.353.104.17', '6b:a0:6e:60:6d:65', 11),
('Комп', '155.153.165.3', 'a5:b5:a5:35:a5:a5', 12),
('Комп', '935.173.85.12', '94:04:14:34:b4:54', 13),
('Комп', '815.232.126.39', '35:38:34:38:31:33', 14),
('Комп', '953.332.49.4', 'ab:72:26:25:22:2b', 15);


INSERT INTO Installs (Pc_id, Soft_id) VALUES
(30, 5),
(29, 4),
(28, 3),
(27, 2),
(26, 1),
(25, 1),
(24, 2),
(23, 3),
(22, 4),
(21, 5),
(20, 5),
(19, 4),
(18, 3),
(17, 2),
(16, 1),
(16, 1),
(15, 2),
(14,3),
(13, 4),
(12, 5),
(11, 5),
(9, 4),
(8, 3),
(7, 2),
(6, 1),
(5, 1),
(4, 2),
(3, 3),
(2, 4),
(1, 5),
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 5),
(12, 4),
(13, 3),
(14, 2),
(15, 1),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5),
(21, 5),
(22, 4),
(23, 3),
(24, 2),
(25, 1),
(26, 1),
(27, 2),
(28, 3),
(29, 4),
(30, 5);
