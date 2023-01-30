use xworkz;
CREATE TABLE vegetables(name varchar(20), price_kg int, shape varchar(15), color varchar(15), healthy varchar(10));

ALTER TABLE vegetables ADD COLUMN vitamins varchar(10);

ALTER TABLE vegetables DROP COLUMN healthy;

ALTER TABLE vegetables RENAME COLUMN vitamins TO healthy;

ALTER TABLE vegetables MODIFY COLUMN healthy varchar(15);

INSERT INTO vegetables VALUES('onion',50,'circular','white','yes');
INSERT INTO vegetables VALUES('potato',35,'circular','brown','yes');
INSERT INTO vegetables VALUES('beetroot',70,'oval','red','yes');
DESC vegetables;

SELECT * FROM vegetables;

CREATE TABLE vegetables(name varchar(20), price_kg int, shape varchar(15), color varchar(15), healthy varchar(10));
SELECT * FROM vegetables;

INSERT INTO vegetables VALUES('LADYS FINGER',30,'STICk','GREEN','YES');
INSERT INTO vegetables VALUES('TOMATO',50,'ROUND','RED','YES');
INSERT INTO vegetables VALUES('POTATO',25,'OVAL','BROWN','YES');
INSERT INTO vegetables VALUES('BEANS',28,'ELONGATED','GREEN','YES');
INSERT INTO vegetables VALUES('CABBAGE',25,'ROUND','GREEN AND WHITE','YES');
INSERT INTO vegetables VALUES('CARROT',45,'ELONGATED','ORANGE','YES');
INSERT INTO vegetables VALUES('CUCUMBER',540,'ELONGATED','GREEN','YES');
INSERT INTO vegetables VALUES('ONION',35,'ROUND','WHITE','YES');
INSERT INTO vegetables VALUES('BRINJAL',70,'PEAR-SHAPED','PURPLE','YES');
INSERT INTO vegetables VALUES('PUMPKIN',80,'CICRCULAR','ORANGE','YES');

SELECT lower(name) AS converted from vegetables;
rollback;

SELECT CONCAT(name,color) AS combined from vegetables;

SELECT LENGTH(name) FROM vegetables;

SELECT INSTR('ONION','I') AS position;
SELECT INSTR(name,'R') FROM vegetables;





use xworkz;
CREATE TABLE cars(Company_Name varchar(20), Car_Name varchar(20), Gears int, Airbags varchar(20), Price_Lakhs bigint);

INSERT INTO cars VALUES('ROLLS_ROYCE','PHANTOM',5,'PRESENT',7.2);
INSERT INTO cars VALUES('TOYOTA','ENDEVOUR',6,'PRESENT',10.5);
INSERT INTO cars VALUES('BMW','X6',5,'PRESENT',9.8);
INSERT INTO cars VALUES('FORD','FIGO',4,'PRESENT',6.42);
INSERT INTO cars VALUES('VOLKSWAGEN','VIRTUS',5,'PRESENT',11.89);
INSERT INTO cars VALUES('MAHINDRA','SCORPIO',5,'PRESENT',14.89);
INSERT INTO cars VALUES('HONDA','CITY',4,'ABSENT',6.58);
INSERT INTO cars VALUES('AUDI','A6',6,'PRESENT',9.57);
INSERT INTO cars VALUES('RENAULT','DUSTER',5,'ABSENT',12.54);
INSERT INTO cars VALUES('CHEVROLET','BEAT',4,'ABSENT',5.59);

SELECT * FROM cars;

UPDATE cars SET Company_Name = 'FORD' WHERE Car_Name = 'FIGO';
COMMIT;
ROLLBACK ;
DELETE FROM cars WHERE Company_Name = 'AUDI';
ALTER TABLE cars DROP COLUMN  isSafe;

INSERT INTO cars VALUES('HONDA','CITY XD',5,'ABSENT',7.54);
INSERT INTO cars VALUES('RENAULT','DUSTER',5,'ABSENT',11.24);
INSERT INTO cars VALUES('BMW','X3',4,'PRESENT',8.54);

SELECT * FROM cars WHERE Company_Name = 'HONDA' AND Car_Name = 'PHANTOM';

SELECT * FROM cars WHERE Company_Name = 'BMW'  OR Car_Name = 'CITY'; 

SELECT * FROM cars WHERE Car_Name IN('X6','FIGO','VIRTUS','GHOST'); 

SELECT * FROM cars WHERE Company_Name NOT IN('HONDA','BMW','FORD');

SELECT * FROM cars WHERE Car_Name BETWEEN 'FIGO' AND 'X3';
SELECT * FROM cars;

SELECT * FROM cars WHERE Price_Lakhs BETWEEN 7 AND 10;

SELECT * FROM cars ORDER BY Price_Lakhs DESC; 
SELECT * FROM cars ORDER BY Car_Name DESC;

 SELECT UPPER (Car_Name)AS converted FROM cars;
 
 

 


