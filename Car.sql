CREATE DATABASE rohan;


CREATE TABLE cars(id int not null,brand varchar(25)primary key,color varchar(20) not null,price int unique,hp int not null);
use xworkz;
INSERT INTO cars VALUES(1,'Toyata','Red',25,200);
SELECT * FROM cars;


use rohan;
CREATE TABLE institute(id int not null,name varchar(30) primary key,location varchar(30)unique,students int not null,trainers int not null); 

INSERT INTO institute VALUES(1,'PYSPIDERS','MAJESTIC',70,25);
SELECT * FROM institute;

