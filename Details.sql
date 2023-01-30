CREATE DATABASE details;
use details;
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

SELECT * FROM bank_info INNER JOIN cust_info ON bank_info.id=cust_info.id;
SELECT * FROM bank_info b LEFT JOIN cust_info c ON b.b_id=c.b_id;
SELECT * FROM cust_info c LEFT JOIN ioan_info l ON c.c_id=l.c_id;
SELECT * FROM cust_info c RIGHT JOIN loan_info l ON c.c_id=l.c_id;
SELECT * FROM bank_info,cust_info;

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
commit;

SELECT * FROM bank_info,cust_info;

LOCK TABLE loan_info READ;
UNLOCK TABLES;

SELECT COUNT(b_id), b_id FROM bank_info GROUP BY b_id HAVING COUNT(b_id)>1; 

SELECT * FROM cust_info WHERE MOD(id,2)=0;
SELECT * FROM cust_info WHERE MOD(id,3)=1;
SELECT * FROM loan_info WHERE MOD(id,2)=2;
SELECT * FROM cust_info LIMIT 5;

SELECT b_name FROM bank_info WHERE b_id =(SELECT b_id FROM cust_info WHERE c_name='Raghu');
SELECT c_name FROM cust_info WHERE c_id = (SELECT c_id FROM loan_info WHERE loan_type='Home Loan');
SELECT b_name FROM bank_info WHERE b_id=(SELECT b_id FROM cust_info WHERE c_id=( SELECT c_id FROM loan_info WHERE loan_type='Marriage Loan'));

UPDATE bank_info SET loan_status ='Deactive' WHERE b_id in(SELECT b_id FROM cust_info WHERE c_id IN(SELECT c_id FROM loan_info WHERE loan_type = 'Bike loan'));

DELETE FROM loan_info WHERE c_id IN(SELECT c_id FROm cust_info WHERE b_id IN(SELECT b_id FROM bank_info WHERE b_name='ICICI'));

UPDATE bank_info SET loan_amount=99999 WHERE b_id IN(SELECT b_id FROM cust_info WHERE c_id In(SELECT c_id FROM loan_info WHERE loan_type='Education Loan'));

UPDATE bank_info SET location='KR puram' WHERE b_id IN(SELECT b_id FROM cust_info WHERE c_id In(SELECT c_id FROM loan_info WHERE c_location='Banashankri'));




