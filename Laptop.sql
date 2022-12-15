use xworkz;
create table laptop(sl_no int,company_name varchar(20),price bigint,RAM int,ROM int,processor varchar(10),windows int,color varchar(20),display_inches double,warranty int);

insert into laptop values(1,'Dell',55000,8,128,'i3',10,'Silver',12.6,1);
insert into laptop values(2,'Lenovo',57000,4,256,'i5',11,'Black',12.5,2);
insert into laptop values(3,'HP',52500,12,256,'i7',9,'Blue',13.3,1);
insert into laptop values(4,'Toshiba',51579,4,256,'i9',10,'Red',13,1);
insert into laptop values(5,'Asus',59785,12,128,'i7',10,'White',12.9,2);
insert into laptop values(6,'Sony',47987,8,256,'i5',11,'Black Matt',14.2,1);
insert into laptop values(7,'Razer',48507,4,300,'i9',9,'Green',12.8,2);
insert into laptop values(8,'Acer',44586,16,350,'i5',8,'Violet',13.4,1);
insert into laptop values(9,'Apple',66547,16,250,'i7',11,'Orange',13.8,3);
insert into laptop values(10,'Microsoft',69875,20,250,'i3',10,'Black & White',14.2,1);
insert into laptop values(11,'Samsung',47586,4,350,'i9',10,'Red & Black',13.4,2);
insert into laptop values(12,'LG',44658,2,300,'i5',11,'Grey',13.3,1);
insert into laptop values(13,'Xiomi',38659,4,150,'i7',9,'Silver & White',15.2,3);
insert into laptop values(14,'Vaio',49658,4,250,'i9',8,'Red & White',11.4,1);
insert into laptop values(15,'iball',38569,2,350,'i5',10,'Black & Blue',12.8,1);
insert into laptop values(16,'HCL',42365,12,125,'i7',9,'Green & Blue',13.5,1);
insert into laptop values(16,'HCL',42365,12,125,'i7',9,'Green & Blue',13.5,1);
insert into laptop values(17,'Huawei',35896,4,250,'i3',11,'Silver & Blue',13.3,1);
insert into laptop values(18,'Realme',38475,4,256,'i7',8,'Greyish White',12.9,2);
insert into laptop values(19,'Infinix',37584,2,300,'i5',9,'Matt Black',13.7,1);
insert into laptop values(20,'Lava',32658,16,128,'i3',7,'Gun Metal',12.8,2);

select * from laptop;

delete from laptop where company_name = 'HCL' AND price = 42365;
select * from laptop where RAM = 16 and ROM = 350;

select * from laptop where price = 35896  OR color = 'Grey'; 

select * from laptop where company_name in('Dell','Lava');

select * from laptop where color not in('Red','Blue'); 
select * from laptop where RAM not in(8,4,2,16);

select * from laptop where company_name between 'Dell' and 'LG';
select * from laptop where ROM between 128 and 300;

select * from laptop order by sl_no desc;

select  upper(company_name)as covert from laptop;
select lower(color) as covert from laptop;

select concat(RAM,ROM)as combine from laptop;
select concat(company_name,price)as combine from laptop;

select length (color)from laptop;

select instr('Acer','r')as position;
select instr(color,'e')color from laptop;

select substr('Samsung',2,7)as substr;
select substr(company_name,3,6)from laptop;

insert into laptop values(21,'Lava   ',32658,16,256,'i5',10,'    Blackish Whit',12.8,3);
select ltrim(color)from laptop;
select rtrim(company_name)from laptop;



