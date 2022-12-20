CREATE DATABASE btm;

CREATE TABLE pg(sl_no int not null,name varchar(30) unique,location varchar(30)unique,price int not null
				,no_of_people int primary key);
SELECT * FROM pg;
DROP TABLE pg;
SELECT * FROM pg ORDER BY sl_no DESC;

INSERT INTO pg VALUES(1,'Krishna PG','BTM',6000,98);
INSERT INTO pg VALUES(2,'Akshay PG','Jayanagar',6300,97);
INSERT INTO pg VALUES(3,'Venkat PG','JPNagar',5500,90);
INSERT INTO pg VALUES(4,'Balu PG','RRNagar',5000,85);
INSERT INTO pg VALUES(5,'Hari PG','Rajajinagar',5200,80);
INSERT INTO pg VALUES(6,'Kishan PG','Marathalli',6200,88);
INSERT INTO pg VALUES(7,'Raghu PG','VijayNagar',7000,75);
INSERT INTO pg VALUES(8,'Chidu PG','SilkBoard',6500,55);

use btm;
CREATE TABLE earphone(sl_no int not null,brand varchar(30) ,price int unique,
						color varchar(30),weight double,primary key (brand,color,weight));
SELECT * FROM earphone;
DROP TABLE earphone;

INSERT INTO earphone VALUES(1,'JBL',2500,'Grey',132.57);
INSERT INTO earphone VALUES(2,'Noise',2300,'White',130.57);
INSERT INTO earphone VALUES(3,'SKullCandy',1299,'Red',138.57);
INSERT INTO earphone VALUES(4,'Nokia',1200,'Pink',137.57);
INSERT INTO earphone VALUES(5,'Boat',3489,'Black',133.57);
INSERT INTO earphone VALUES(6,'Connect',3499,'Blue',135.57);
INSERT INTO earphone VALUES(7,'JBL',2599,'Green',129.57);


CREATE TABLE college(id int not null,name varchar(30) not null unique,location varchar(30) primary key,pincode bigint unique);

INSERT INTO college VALUES(1,'Akash','Bangalore',560031);
INSERT INTO college VALUES(2,'Akshay','Hubli',560030);
INSERT INTO college VALUES(3,'Bhaskar','Mysore',560032);
INSERT INTO college VALUES(4,'Balu','Belgaum',560033);
INSERT INTO college VALUES(5,'Arjun','Haveri',560034);
INSERT INTO college VALUES(6,'Ajay','Udupi',560035);
INSERT INTO college VALUES(7,'Chetan','Gadag',560036);
INSERT INTO college VALUES(8,'Kumar','Kodagu',560037);
SELECT * FROM college;
SELECT * FROM college ORDER BY id;

CREATE TABLE bank_info(sl_no int not null,name varchar(20) unique,location varchar(30),mobile_no bigint unique,
						foreign key(location) references college (location));

INSERT INTO bank_info VALUES(1,'Sanjay','Bangalore',989865895);
INSERT INTO bank_info VALUES(2,'Suraj','Belgaum',989865795);
INSERT INTO bank_info VALUES(3,'Gagan','Udupi',987867895);
INSERT INTO bank_info VALUES(4,'Samarth','Mysore',989865875);
INSERT INTO bank_info VALUES(5,'Vijay','Kodagu',988865895);
INSERT INTO bank_info VALUES(6,'Dharam','Haveri',989862895);
INSERT INTO bank_info VALUES(7,'Rahul','Hubli',989847895);
INSERT INTO bank_info VALUES(8,'Sanket','Gadag',989863895);
SELECT * FROM bank_info;

SELECT * FROM bank_info ORDER BY sl_no;

