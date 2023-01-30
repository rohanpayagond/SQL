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





CREATE TABLE bank_info(id int not null,b_name varchar(40) unique not null,b_id int not null,no_of_customers int not null,
						loan_status varchar(30) default 'ACTIVE',location varchar(30) not null);
                        
CREATE TABLE cust_info(id int not null,c_name varchar(40),balance bigint not null,c_id int not null,b_id int not null,
						c_location varchar(40));
                        
CREATE TABLE loan_info(id int not null,loan_type varchar(30),loan_amount bigint not null,c_id int not null);

INSERT INTO bank_info VALUES(1,'Karnataka',501,1050,'ACTIVE','BTM');
INSERT INTO bank_info VALUES(2,'ICICI',502,1420,'ACTIVE','JP nagar');
INSERT INTO bank_info VALUES(3,'BOI',503,1245,'ACTIVE','Jaynagar');
INSERT INTO bank_info VALUES(4,'SBI',504,1045,'ACTIVE','Banashankri');
INSERT INTO bank_info VALUES(5,'Vijaya',505,1324,'ACTIVE','Rajajinagar');
INSERT INTO bank_info VALUES(6,'Syndicate',506,1125,'ACTIVE','Majestic');
INSERT INTO bank_info VALUES(7,'Canara',507,1210,'ACTIVE','RR Nagar');
INSERT INTO bank_info VALUES(8,'SBM',508,1524,'ACTIVE','Hosur');
INSERT INTO bank_info VALUES(9,'Union Bank',509,1364,'ACTIVE','Marthalli');
INSERT INTO bank_info VALUES(10,'IDFC',510,1205,'ACTIVE','Prakash Nagar');
SELECT * FROM bank_info;
DROP TABLE bank_info;
SELECT * FROM bank_info ORDER BY id;


INSERT INTO cust_info VALUES(1,'Raghu',10540,701,502,'RR Nagar');
INSERT INTO cust_info VALUES(2,'Shivu',12450,702,511,'Rajajinagar');
INSERT INTO cust_info VALUES(3,'Chidu',12140,703,504,'Marthalli');
INSERT INTO cust_info VALUES(4,'Malatesh',11204,704,512,'JP nagar');
INSERT INTO cust_info VALUES(5,'Madhu',12015,705,506,'Jayanagar');
INSERT INTO cust_info VALUES(6,'Sharat',12340,706,514,'Banashankri');
INSERT INTO cust_info VALUES(7,'Darshan',12017,707,508,'Navaranga');
INSERT INTO cust_info VALUES(8,'Manoj',10278,708,515,'Rajkumar');
INSERT INTO cust_info VALUES(9,'Akash',12457,709,505,'Majestic');
INSERT INTO cust_info VALUES(10,'Chetan',14578,710,515,'Prashant Colony');
SELECT * FROM cust_info;
DROP TABLE cust_info;

SELECT * FROM cust_info INNER JOIN loan_info ON b_id=b_id;
SELECT * FROM cust_info LEFT JOIN loan_info ON b_id=b_id;

INSERT INTO loan_info VALUES(1,'Home Loan',25415,701);
INSERT INTO loan_info VALUES(2,'Education Loan',25458,711);
INSERT INTO loan_info VALUES(3,'Car Loan',21364,709);
INSERT INTO loan_info VALUES(4,'Bike Loan',26458,701);
INSERT INTO loan_info VALUES(5,'Site Loan',32654,714);
INSERT INTO loan_info VALUES(6,'Student Loan',23564,716);
INSERT INTO loan_info VALUES(7,'Business Loan',25635,705);
INSERT INTO loan_info VALUES(8,'Installment Loan',36365,719);
INSERT INTO loan_info VALUES(9,'Marriage Loan',32669,718);
INSERT INTO loan_info VALUES(10,'Home Loan',36589,708);
SELECT * FROM loan_info;
DROP TABLE loan_info;



CREATE TABLE shoes(id int,name varchar(20),price int,no int);
INSERT INTO shoes VALUES(1,'Nike',2500,8,'London');
INSERT INTO shoes VALUES(2,'Puma',2200,9,'Europe');
INSERT INTO shoes VALUES(3,'Adidas',1850,10,'America');
INSERT INTO shoes VALUES(4,'Crocs',1999,9,'NewYork');
INSERT INTO shoes VALUES(5,'Jordans',3565,7,'Russia');
SELECT * FROM shoes;

ALTER TABLE shoes ADD COLUMN country varchar(20);
ALTER TABLE shoes DROP COLUMN country;
ALTER TABLE shoes RENAME COLUMN country TO location;
ALTER TABLE shoes MODIFY COLUMN location varchar(10);
TRUNCATE TABLE shoes;

UPDATE shoes SET id=3 WHERE name='Adidas' AND price=1850;
UPDATE shoes SET location='Russia' WHERE id=5 AND price=2200;
DELETE FROM shoes WHERE id=2 AND price=1204;
use theory;

UPDATE shoes SET id=4 WHERE name='Crocs' OR location='NewYork';
DELETE FROM shoes WHERE location='America' or id=3;

SELECT * FROM shoes WHERE location='America' OR id=4;
SELECT * FROM shoes WHERE location='Europe' AND name='Puma';
SELECT * FROM shoes WHERE id IN(1,2);
SELECT * FROM shoes WHERE name IN('Crocs','Adidas');
SELECT * FROM shoes WHERE id NOT IN(1,5);

SELECT * FROM shoes WHERE id BETWEEN 1 AND 5; 
SELECT * FROM shoes WHERE no BETWEEN 9 AND 7;
SELECT * FROM shoes WHERE name BETWEEN 'Nike' AND 'Crocs';

SELECT * FROM shoes ORDER BY name;
SELECT * FROM shoes ORDER BY id;

SELECT UPPER (name) AS Changed FROM shoes;
SELECT UPPER (location) AS changes From shoes;
SELECT LOWER (name) AS chnges FROM shoes;
SELECT LOWER (location) AS changed FROM shoes;

SELECT CONCAT ('Puma','Adidas') AS MERGE;
SELECT CONCAT(name,location) AS combined FROM shoes;
SELECT CONCAT (id,price) AS combine FROM shoes;
SELECT CONCAT ('ROHAN',' ', 'Payagond') AS mergerd;

SELECT LENGTH('Puma') AS length;
SELECT LENGTH('adidas' 's')FROM shoes;
SELECT LENGTH(name) FROM shoes;
SELECT LENGTH(location) FROM shoes;

SELECT INSTR(location,'r') FROM shoes;
SELECT INSTR('ROHAN','a') AS position;

SELECT substr('Europe',1,3)AS position;
SELECT SUBSTR(name,2,5) FROM shoes;

SELECT ltrim(name) FROM shoes;
SELECT rtrim(location) FROM shoes;
SELECT ltrim('    Puma') as remove;
SELECT ltrim('Puma   ') as remove;
SELECT LENGTH('    RP') AS position;
SELECT LTRIM(RTRIM('   PUMA    ')) as remove;

SELECT count(name) FROM shoes;
SELECT count(*) FROM shoes;
SELECT COUNT(LOCATION) FROM shoes;

SELECT SUM(id) FROM shoes;
SELECT SUM(price) AS total FROm shoes;

SELECT MAX(id) FROM shoes;
SELECT MAX(price) FROM shoes;
SELECT MIN(id) FROM shoes;
SELECT MIN(price) from shoes;
SELECT AVG(id) FROM shoes;
SELECT AVG(price) FROM shoes;  
SELECT AVG(name) FROm shoes;

ALTER TABLE shoes MODIFY COLUMN id varchar(20);
DESC shoes;

ALTER TABLE shoes MODIFY COLUMN name int;



CREATE TABLE chappal(id int unique,name varchar(20),price int not null check(price>=1000),number int not null check(number>=2));
desc chappal;
SELECT dayofmonth('2022-10-25')AS day;
SELECT dayname('2020-10-20');
SELECT dayname('2023-05-13');
SELECT datediff('2020-08-10','2020-05-15');
SELECT datediff('2020-05-15','2020-05-10');
SELECT quarter('2020-04-20');


ALTER TABLE chappal ADD CONSTRAINT name_uk UNIQUE(name);
desc shoes;
ALTER TABLE chappal DROP CONSTRAINT name_uk;
ALTER TABLE chappal DROP CONSTRAINT name;
ALTER TABLE shoes ADD CONSTRAINT id_uk unique(id);
ALTER TABLE shoes DROP CONSTRAINT id_uk;
ALTER TABLE shoes Drop CONSTRAINT name_uk;

SELECT lpad('Payagond',15,'Rohan');
SELECT rpad('ROHAN',10,'RP');

SELECT COUNT(*)AS total,name FROM shoes;
SELECT MAX(price) FROm shoes;
SELECT MIN(id)FROM shoes;

SELECT MAX(price)AS max_amt FROM shoes GROUP BY price ;
SELECT MIN(id)as min_id FRoM shoes GROUP BY id HAVING min_id<5;

CREATE VIEW rohan AS SELECT * FROM shoes;
desc rohan;



