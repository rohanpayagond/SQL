USE xworkz;

CREATE TABLE bags(id int not null,brand varchar(20) not null,price bigint not null,color varchar(15) not null,is_stretchable boolean not null,is_leather boolean not null,
					warranty int not null,material varchar(20) not null,weight float not null,is_waterproof boolean not null);

INSERT INTO bags VALUES(1,'Skybags',899,'Grey',false,false,1,'Nylon',132.45,true);
INSERT INTO bags VALUES(2,'Adidas',984,'Blue',true,false,2,'Polyster',125.47,true);
INSERT INTO bags VALUES(3,'American Tourister',750,'White',false,true,1,'Leather',115.58,true);
INSERT INTO bags VALUES(4,'Reebok',699,'Red',true,false,1,'Canvas',131.58,true);
INSERT INTO bags VALUES(5,'Dell',999,'Black',false,true,1,'Nylon',128.69,true);
INSERT INTO bags VALUES(6,'Wildcraft',1210,'Green',false,false,1,'Nylon',132.45,true);
INSERT INTO bags VALUES(7,'Puma',1540,'Pink',true,false,2,'Polyster',131.69,true);
INSERT INTO bags VALUES(8,'Fastrack',1154,'Blackish White',true,false,1,'Cordura',130.35,true);
INSERT INTO bags VALUES(9,'Gear',1589,'Lavender',false,false,2,'Nylon',132.45,true);
INSERT INTO bags VALUES(10,'Globus',499,'White',false,true,2,'Canvas',130.35,true);

SELECT * FROM bags;
DESC bags;

INSERT INTO bags VALUES(10,'Globus',499,'White',null,true,2,'Canvas',130.35,true);
INSERT INTO bags VALUES(5,'Dell',999,null,false,true,1,'Nylon',128.69,true);
INSERT INTO bags VALUES(2,'Adidas',984,'Blue',true,false,2,null,125.47,true);
INSERT INTO bags VALUES(4,'Reebok',null,'Red',true,false,1,'Canvas',131.58,true);
INSERT INTO bags VALUES(7,'Puma',1540,'Pink',true,false,2,'Polyster',131.69,null);

INSERT INTO bags VALUES(9,'Gear',1589,'Lavender',false,false,2,'Nylon',132.45,true);
INSERT INTO bags VALUES(10,'Globus',499,'White',false,true,2,'Canvas',130.35,true);
INSERT INTO bags VALUES(3,'American Tourister',750,'White',false,true,1,'Leather',115.58,true);
INSERT INTO bags VALUES(4,'Reebok',699,'Red',true,false,1,'Canvas',131.58,true);
INSERT INTO bags VALUES(5,'Dell',999,'Black',false,true,1,'Nylon',128.69,true);


CREATE TABLE clothes(id int unique,brand varchar(20) unique,color varchar(20) unique,material varchar(20) unique,price bigint unique,
					weight double unique,length double unique,durability double unique,density float unique,stretchable_size double unique);

INSERT INTO clothes VALUES(1,'Raymond','White','Silk',1299,125.47,10.57,1.5,59.59,10.57);
INSERT INTO clothes VALUES(2,'Peter England','Black','Cotton',1319,124.58,9.58,1,58.54,9.54);
INSERT INTO clothes VALUES(3,'Crocodile','Navy Blue','Leather',1420,120.54,10.48,1.4,58.59,10.44);
INSERT INTO clothes VALUES(4,'Gucci','Dark Blue','Synthetic',1099,124.39,11.21,0.9,56.59,10.77);
INSERT INTO clothes VALUES(5,'Nike','Grey','Composite',1199,121.08,10.22,1.2,59.88,10.69);
INSERT INTO clothes VALUES(6,'Pepe Jeans','Green','Polyster',1210,124.01,11.99,1.7,58.49,10.49);
INSERT INTO clothes VALUES(7,'US Polo','Pink','Nylon',1450,126.25,10.87,0.98,59.78,11.58);
INSERT INTO clothes VALUES(8,'Allen Solly','Red','Woolen',1499,124.99,9.57,1.32,59.99,11.57);
INSERT INTO clothes VALUES(9,'Calvin Klein','Violet','Acrylic',1599,127.98,11.20,1.45,58.19,11.99);
INSERT INTO clothes VALUES(10,'Adidas','Whitish Red','Polypropylene',1088,12747,11.57,1.72,57.59,11.78);

SELECT * FROM clothes;
DESC clothes;

INSERT INTO clothes VALUES(9,'Calvin Klein','Violet','Acrylic',1599,127.98,11.20,1.45,58.19,11.99);
INSERT INTO clothes VALUES(4,'Gucci','Dark Blue','Synthetic',1099,124.39,11.21,0.9,56.59,10.77);
INSERT INTO clothes VALUES(5,'Nike','Grey','Composite',1199,121.08,10.22,1.2,59.88,10.69);
INSERT INTO clothes VALUES(1,'Raymond','White','Silk',1299,125.47,10.57,1.5,59.59,10.57);
INSERT INTO clothes VALUES(2,'Peter England','Black','Cotton',1319,124.58,9.58,1,58.54,9.54);

INSERT INTO clothes VALUES(null,'ZUdio','Reddish White',null,1489,1217.54,10.84,null,54.69,10.11);
INSERT INTO clothes VALUES(12,null,'Greenish Blue','Pure Cotton',1410,1207.54,10.14,1.22,57.14,9.47);
INSERT INTO clothes VALUES(13,'LEvis','Bluish White','Polythene',1514,1257.4,10.74,0.84,54.44,9.55);
INSERT INTO clothes VALUES(14,'LEE','Mixed Black','Silky Cotton',1215,null,10.47,.89,58.79,null);


CREATE TABLE soft_drinks (sl_no int check(sl_no>=1),brand varchar(20),price bigint check(price>=150),minerals int check(minerals<=10),
							litres double check(litres>=1),mfg_year int check(mfg_year>2015),color varchar(20),exp_year int check(exp_year<=2028));

INSERT INTO soft_drinks VALUES(1,'Sprite',189,10,1.25,2018,'Green',2025);
INSERT INTO soft_drinks VALUES(2,'Pepsi',199,10,1.5,2017,'Blue',2028);
INSERT INTO soft_drinks VALUES(3,'ThumsUp',179,9,1,2018,'White',2026);
INSERT INTO soft_drinks VALUES(4,'Jeera',185,9,1.25,2016,'Black',2025);
INSERT INTO soft_drinks VALUES(5,'7Up',155,8,1.59,2019,'Green',2024);
INSERT INTO soft_drinks VALUES(6,'Mirinda',159,8,2.25,2020,'Orange',2024);
INSERT INTO soft_drinks VALUES(7,'Fanta',215,7,1.20,2020,'Orange',2028);
INSERT INTO soft_drinks VALUES(8,'Dew',154,10,1.25,2019,'White',2022);
INSERT INTO soft_drinks VALUES(9,'Coke',184,9,2.0,2018,'Black',2023);
INSERT INTO soft_drinks VALUES(10,'KF',220,8,1.49,2020,'Golden',2027);

SELECT * FROM soft_drinks;

INSERT INTO soft_drinks VALUES(11,'Coke',184,9,2.0,2018,'Black',2029);
INSERT INTO soft_drinks VALUES(12,'Jeera',185,9,0.5,2016,'Black',2025);
INSERT INTO soft_drinks VALUES(13,'7Up',155,8,1.59,2019,'Green',2024);
INSERT INTO soft_drinks VALUES(14,'Sprite',189,15,1.25,2018,'Green',2025);
INSERT INTO soft_drinks VALUES(2,'Pepsi',199,10,1.5,2017,'Blue',2028);

DESC soft_drinks;




