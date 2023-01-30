CREATE DATABASE theory;
/*
DDL : DATA DEFINITION LANGUAGE
Used to Create and Manage the Structure of the DATABASE.

Commands;
1.CREATE
CREATE DATABASE database_name--creates a new DATABASE.
CREATE TABLE table_name--creates a new TABLE.

2.ALTER
Add the new column to existing table.
Drop the column from the existing table.
Rename the column.
Change the datatype of the existing column.

Syntax for Adding Column to the existing table:
ALTER TABLE table_name ADD COLUMN column_name datatype.

Syntax for dropping the column from existing table
ALTER TABLE table_name DROP COLUMN column_name.

Syntax to Rename the column from the table.
ALTER TABLE table_name RENAME COLUMN old column_name TO new column_name.

Syntax for Changing the Datatype of existing column.
ALTER TABLE table_name MODIFY COLUMN column_name new datatype.

DROP : Syntax : ALTER TABLE table_name DROP COLUMN column_name

RENAME : Syntax : ALTER TABLE table_name RENAME COLUMN column_name

TRUNCATE : Used to Delete the Data from the Table 
Syntax : TRUNCATE TABLE table_name.

SELECT * FROM table_name : Used to fetch the data from the Table.

DML : DTAT MANIPULATION LANGUAGE.
Used to Manage or Modify the Data inside the Table.

Commands;
INSERT
UPDATE
DELETE

Syntax for Inserting Values to the Existing Table
INSERT INTO table_name VALUES(data1,data2data3.......);


AND : If BOTH the Condidtions are True then it returns TRUE value.				12/12/22
COND1   COND2   RESULT
True	False	False
False	True	False
False	False	False
True	True	True
Syntax : UPDATE table_name SET column_name = ' ' WHERE column_name = '  ' AND column_name = ' '; 
		:DELETE FROM table_name WHERE column_name = ' ' AND column_name = ' ';
        

OR : If ONE CONDITION is True then it returns TRUE value.
COND1   COND2   RESULT
True	False	True
False	True	True
False	False	False
True	True	True
Syntax : SELECT * FROM table_name WHERE column_name = ' '  OR column_name = ' '; 
		: UPDATE table_name SET column_name = ' ' WHERE column_name = ' ' OR column_name = '';

IN : To avoid the use of Multiple OR CONDITIONS.
Syntax : SELECT * FROM table_name WHERE column_name IN(data,data1,data,);
		: UPDATE table_name SET column_name = ' ' WHERE column_name IN(data,data1,.....);
        : DELETE FROM table_name WHERE column_name IN(data,data1,.........);
        
        
NOT IN : Excludes the Values.				[DO NOT USE IN UPDATE AND DELETE]
Syntax : SELECT * FROM table_name WHERE column_name NOT IN(data,data1,......);


BETWEEN : It is used to Fetch the Data within the Range.			[DO NOT USE IN UPDATE AND DELETE]
Syntax : SELECT * FROM table_name WHERE column_name BETWEEN data AND data;


ORDER BY : It is Used to Fetch the Data in ASCENDING or DESCENDING ORDER.
Syntax : SELECT * FROM table_name ORDER BY column_name DESC;


UPPER : Used to fetch the data in Upper Case.It is a Temporary Name.					  15/12/22
Syntax : SELECT * FROM table_name;
SELECT UPPER (column_name)AS converted FROM table_name;

LOWER :  Used to fetch the data in Lower Case.
Syntax : SELECT LOWER (column_name)AS converted FROM table_name;

CONCAT : Used to Join the Two Data.
Syntax : SELECT CONCAT(data,data1) AS MERGE;
Syntax : SELECT CONCAT(column_name,column_name1) AS combined from table_name;

LENGTH : Used to check the length of the data.
Syntax : SELECT LENGTH(column_name) FROM table_name ORDER BY column_name DESC.

INSTR : (IN-STRING) Used to get the Position of the Characters.
SYntax : SELECT INSTR('data','char') AS position;
Ex		: SELECT INSTR('FORD','R') AS position;
SYntax : SELECT INSTR(column_name,'char'),column_name FROM table_name;

SUBSTR : (SUB-STRING) Used to get the part character from the String.
Syntax : SELECT SUBSTR(original_string,start_position,characters_to_be_fetched).
		: SELECT SUBSTR('data',2,5) AS substr;
		: SELECT SUBSTR('MAHINDRA',2,7) AS substr;
        : SELECT SUBSTR(column_name ,3,9) FROM table_name.
        
LTRIM :(LEFT-REMOVE) Used to remove the Leading spaces from the Data.
Syntax : SELECT LTRIM('   PHANTOM') AS remove;
		: SELECT LTRIM(column_name) FROM table_name;
        
        
RTRIM :(RIGHT-REMOVE) Used to remove the Trialing spaces from the Data.
Syntax : SELECT RTRIM('FIGO    ') AS remove.
	   : SELECT RTRIM(column_name) FROM table_name;
       
       : SELECT RTRIM(LTRIM(column_name)) FROM table_name;		//Removes Left and Right spaces both
       

AGGREGATE Functions :																				16/12/22
1.COUNT : Gives the number of data present in the table.
SELECT COUNT(*)from table_name;
SELECT COUNT(column_name)FROM table_name;

2.SUM : It gives the total value by adding all the data.
SELECT SUM(column_name)FROM table_name;
SELECT SUM(column_name)AS total FROM table_name;

3.MAX : Gives the maximum value from the column.
SELECT MAX(column_name)FROM table_name;

4.MIN : GIves the minimum value from the column.
SELECT MIN(column_name)FROM table_name;

5.AVG : Gives the average value of the column.
SELECT AVG(column_name)FROM table_name.

NOTE : If data is present in the Column we cannot change from varchar to int.
ALTER TABLE table_name MODIFY COLUMN column_name int;

	: But we can change from int to varchar from the existing column.
    ALTER TABLE table_name MODIFY COLUMN column_name varchar(20);
    
6.DISTINCT : Used to avoid the Duplicate Values from the Table.
SELECT DISTINCT(column_name)from table_name;

CONSTRAINTS : Ued to Limit the type of Data by inserting data into the table.	(COLUMN-LEVEL CONSTRAINTS)			19/12/22
1) NOT NULL : Cannot accept any NULl values but can accept DUplicate values.
Syntax : CREATE TABLE cricket(id int not null,type varchar(20) not null,players_name varchar(20));
		: DESC cricket;
        
2) UNIQUE : Cannot accept Duplicate values but can accept null values.
SYntax : CREATE TABLE olymic_games(id int not null,games varchra(20) unique,country varchar(20) not null unique);
        
 3) CHECK : To limit the Range of value.
 SYntax : CREATE TABLE shoes(id int unique,brand varchar(20) not null unique,price bigint,check (price>=500));
		: INSERT INTO shoes VALUES(1,'Adidas',5000);
        : INSERT INTO shoes VALUES(2,'Puma',499);
        : CREATE TABLE games(id int not null,name varchar(30) unique,no_of_players int,prize_money int,
			check(no_of_players>=11) and prize_money>100000));
		: INSERT INTO games VALUES(1,'Cricket',10,100005);
		
        
PRIMARY KEY : It Uniquely identifies Each and Every row of the Table.				   (TABLE-LEVEL CONSTRAINTS)		20/12/22															
			By default it have NOT NULL and UNIQUE Constraints.
            Only ONE Primary is allowed for each Table.
            When Primary Key is used for Multiple Columns is called COMPOSITE Primary Key.
            
Syntax : CREATE TABLE apartments(id int primary key,a_name varchar(20) not null,
		 location varchar(30) not null,no_of_rooms int not null);
         INSERT INTO apartments VALUES(1,'Prestige','BTM',4);
         
         CREATE TABLE hotel_name(id int,h_name varchar(40),location varchar(33) not null,no_of_workers int not null,
         ratings int not null,primary(id,h_name));
         INSERT INTO hotel VALUES(1,'Gokul','BTM',24,4);
         INSERT INTO hotel VALUES(1,'Udupi','JAYANAGAR',21,7);
         
         
FOREIGN KEY : Foreign Key will ALways refers to the PRIMARY KEY of a Table.
			 Primary Key present in Parent Table.
             Foreign Key present in Child Table.
             Cannot DROP Primary Key Table Bcoz it will be Referring to FOreign Key.
             
Syntax : CREATE TABLE bank_details(id int not null,b_name varchar(20),b_id int primary key ,b_location varchar(30),
		  no_of_customers int notn null);
          
          CREATE TABLE cust_details(id int not null,c_name varchar(50),b_id int,balance bigint not null,
           location varchar(30) unique,foreign key(b_id) references bank_details (b_id));
           
           
DATE FUNCTIONS : day of year,day of month, quarter,add date,day of week.
				SELECT dayofyear('2022-12-22');			format('YYYY-MM-DD;);
				
                SELECT dayofmonth('2022-04-15') AS day;----------------day will be printed
                SELECT dayname('2000-06-10);------------day will be printed.
                SELECT datediff('2022-12-20','2022-04-13')-----------gives the difference btwn 2dates.
                SELECT quarter('2022-09-25');----------
                
                SELECT adddate('2022-11-20', interval 5day);----------(2022-11-15..adds 5day);
                SELECT adddate('2022-10-27', interval -5day);---------(2022-10-22)..removes 5day);

syntax : CREATE TABLE movie(id int not null,m_name varchar(30),release_date DATE,created_by varchar(30)default 'Sunil',created at time stamp);
		

For ADDING CONSTRAINTS to the Existing Column
Syntax : ALTER TABLE table_name ADD CONSTRAINT alias name UNIQUE(column_name);

		CREATE TABLE freedom_fighter(id inr,name varchar(20),birth_place varchar(20),birth_date date,region ,)
		ALTER TABLE freedom_fighter ADD CONSTRAINT freedom_fight_uk UNIQUE(name);
        ALTER TABLE freedom_fighter ADD COLUMN age int not null;
        ALTER TABLE freedom_fighter ADD CONSTRAINT age_check CHECK(age>=20);
        ALTER TABLE freedom_fighter ADD CONSTRAINT freedom_pk PRIMARY KEY(id);
        ALTER TABLE freedom_fighter ADD CONSTRAINT 
        
For DROPPING CONSTRAINTS from Existing Table.	
		ALTER TABLE freedom_fighter DROP CONSTRAINT freedom_figh_uk;
        ALTER TABLE freedom_fighter DROP CONSTRAINT age_check;
        ALTER TABLE freedom_fighter DROP PRIMARY KEY;
        

		
LPAD 	: ADDING data to the existing Data at the LeftSide.
		: FInal length should be greater than original string length.
SYntax	: SELECT LPAD (originalstring,finallengthofstring,valuetobeadded);
		: SELECT LPAD('XWORKZ',15,'BTM');
RPAD : 
Syntax	: SELECT RPAD('xworkz',10,'rrr');


GROUP BY : It is used to group the identical data into Single Value.
Synatx	: SELECT COUNT (*),region FROM freedom_fighters GROUP BY region;
		: SELECT MAX(balance),acc_type FROM bank_data GROUP BY acc_type;
        

HAVING : It is used to Filter the Data whatever Group By returns.Cannot be used to filter Aggregate Data.
		: SELECT COUNT(*),as total,acc_type FROM bank_data GROUP BY acc_type.
		: SELECT MAX(balance)AS max_amt,acc_type FROM bank_data GROUP BY acc_type HAVING max_amt <4564874;


VIEWS : It is an Virtual Table and can Access the Subset of Columns from Table.View doesnt have its own Data.
Syntax : CREATE VIEW viewname AS SELECT * FROM table_name;
		: CREATE VIEW ban_view AS SELECT * FROM bank_data;


JOINS : IT joins the 2Tables with same data on some conditions.
1) INNER JOIN : It returns the same data on some Column Condition.
Syntax : SELECT * FROM table_name INNER JOIN table_name ON CONDITION;
	   : SELECT * FROM a INNER JOIN b ON a.id=b.id;
       : SELECT * FROM a INNER JOIN b ON a.name=b.name;
       
       For joining 3Columns;
       : SELECT * FROM a INNER JOIN b ON a.id=b.id INNER JOIN c ON b.id=c.id;
       : SELECT * DROM a INNER JOIN b ON a.name=b.name INNER JOIN c ON b.name=c.name;


LEFT JOIN : It returns All the ROW from the Left Table.
		  : It returns ALL the Row from the Left Table And Same Data From Right Table.
Syntax : SELECT * FROM d LEFT JOIN e on d.id=e.id;
		:  SELECT * FROM d LEFT JOIN e on d.id=e.id LEFT JOIN c on c.id=e.id;----------For 3Tables.
        
        
RIGHT JOIN : It returns All the Row from the Right Table.
Syntax : SELECT * FROM d RIGHT JOIN e on d.id=e.id;
		: SELECT * FROM e RIGHT JOIN d on e.name=d.name;


CROSS JOIN : It joins Each and every Row of 1st Table is Joined with Each and every Row of 2nd Table.
Syntax : SELECT * FROM table_name,table_name2;        

LOCK : 
Syntax : Lock TABLE table_name read;
UNBLOCK_TABLES;


How to find the Duplicate Values from the Table.
SELECT COUNT(b_id), b_id FROM cust_info GROUP BY b_id HAVING COUNT(b_id)>1; 

EVEN AND ODD RECORDS : 
Syntax : SELECT * FROM cust_info WHERE MOD(id,2)=0;



SUBQUERIES : 
Subquery is called query in a query.
Subquery ,Inner query,Nested query.
Subquery will be always Executed First.
The result of subquery will be passed to main query.
Syntax : SELECT b_name FROM bank_info WHERE b_id =(SELECT b_id FROM cust_info WHERE c_name='Raghu');
		: SELECT column_name FROm table_name WHERE column_name=(SELECT column_name FROM table_name2 WHERE column_name='Data');
        
		: SELECT column_name FROm table_name WHERE column_name IN (SELECT column_name FROM table_name2 WHERE column_name IN 'Data','Data2','Data3');

		: UPDATE bank_info SET loan_type ='Deactive' WHERE b_id in(SELECT b_id FROM cust_info WHERE c_id IN(SELECT c_id FROM loan_info WHERE loan_type = 'Agricultural loan'));
		
		: DELETE FROM loan_info WHERE c_id=(SELECT c_id FROM cust_info WHERE b_id =(SELECT b_id FROM bank_info WHERE b_name='Karnataka Bank')); 


CREATE TABLE cricket(id int primary key AUTO_INCREMENT,series_name varchar(30),type ENUM('Test','ODI','T20')NOT NULL,overs int);
SELECT * FROM cricket;

INSERT INTO cricket(series_name,type,overs)VALUES('PaytmODI','ODI',50);
INSERT INTO cricket(series_name,type,overs)VALUES('IPL',3,20);
INSERT INTO cricket(series_name,type,overs)VALUES('Test',1,40);
INSERT INTO cricket(series_name,type,overs)VALUES('Biglash',2,35);



