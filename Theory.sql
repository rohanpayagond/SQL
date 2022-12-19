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
		:DELETE FROM table_name WHERE column_name = ' '; AND column_name = ' ';
        

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
		





