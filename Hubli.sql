CREATE DATABASE hubli;

use hubli;

CREATE TABLE monuments(id int,name varchar(30) not null,country varchar(25),height int);
SELECT * FROM monuments;

INSERT INTO monuments VALUES(1,'TAJ MAHAL','INDIA',450);


CREATE TABLE anime(id int not null,name varchar(20) not null,yearOfRelease int unique,noOfCharacters int not null,budget int not null);

INSERT INTO anime VALUES(1,'Naruto',2014,42,35);
SELECT * FROM anime;



CREATE TABLE tree(name varchar(35) unique ,type varchar(30) primary key,location varchar(30) unique,height int not null,type_of_leaf varchar(30)not null,shape_of_leaf varchar(30)unique,width int not null,age int not null,fruit_bearing boolean not null,flower_bearing boolean not null);
INSERT INTO tree VALUES('Banyan','Elm','Africa',125,'Serrate','Spear',74,88,false,true);
SELECT * FROM tree;


use hubli;
SELECT * FROM bag;

SELECT * FROM bag WHERE name='WildCraft' AND id=1;

use hubli;
SELECT * FROM soap;

UPDATE soap SET color='Golden', fragrance='Jasmine' WHERE name='Dove';

DELETE FROM soap WHERE name='Lux';

use hubli;
select * from ac;

drop table windows;
select * from windows;

select * from biscuit;

select * from cake;
drop table cake;

select * from watch;

select * from bulb;

select * from spects;


