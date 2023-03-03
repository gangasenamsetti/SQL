       SQL
**Table is a database object which is used to store data in relational database
**DDL--->data definition language
**DATATYPES IN SQL
  1.varchar or varchar2(in orcale)
  2.number(date....)

RULES FOR NAMING TABLE:
1.it should start with letter
2.it should not exceed more than 30 characters
3.connot contain sql reserved words like temp

**connect-->in connect enter username and password as system
**show user;
**create user ganga identified by password(system);
  //user will be created
**show all user
**clear screen;
**alter user ganga identified by system; //to alter the user
   alter user ganga identified by 12345; //change password using alter command
**drop user ganga;
  drop user ganga cascade;

**ROLE
  create role salesman;
  grant salesman to ganga;
 
  grant create session to anshu; //to grant access to anshu
  grant create table to anshu;
** connect anshu/1234567 (username/password)

**grant unlimited tablespace to test1;

______________________________________________________________________________

             ***DDL(DATA DEFINITION LANGUAGE) COMMANDS***
CREATING TABLE
1.create table books
  2  (
  3  book_id number(4),
  4  book_title varchar2(20),
  5  author varchar2(20),
  6  publisher varchar2(20),
  7  prize number(7)
  8  );

**alter is used in adding,modifying and dropping
ADDING A COLUMN INTO TABLE
  1.alter table books2
  2  add phone_no number(10);

MODIFYING A COLUMN
  1. alter table books2
  2  modify prize number(3);

DROPPING A COLUMN IN TABLE(drop a column in table)
  1.alter table books2
  2  drop column book_title;

RENAME
rename books to books2;

DROPPING A TABLE
  drop table student;

TRUNCATE
**Truncate will be applied on rows.removes rows from table but not columns
 truncate table student;

**desc books; //it is case sensitive(DESC will also give o/p) decribe command

________________________________________________________________________________________

          ***DML(DATA MANUPULATIO LANGUAGE)***
**DML  commands are not permenant
CREATING TABLE
 create table instructor
  2  (
  3  inst_id number(4),
  4  name varchar2(20),
  5  dob date,
  6  post varchar2(20),
  7  phone_no number(10)
  8  );

INSERTING DATA
insert into instructor values(101,'ganga','10-mar-03','lechurer',12345);

DISPLAYING CONTENT
 select *from instructor;
desc tablename;

UPDATING
 update instructor set name='isha' where inst_id=101;
 update instructor set dob='02-feb-03' where inst_id=105;

INSERTING VALUES BY PARAMETER VALUE TYPE
 insert into instructor values(&a,&b,&c,&d,&e);
Enter value for a: 105
Enter value for b: 'prasad'
Enter value for c: '02-feb-02'
Enter value for d: 'lecurer'
Enter value for e: 2458

WHERE
 select name,inst_id from instructor where post='lechurer';
  select name,inst_id from instructor where phone_no=2458;
 select name,inst_id from instructor;

TRUNCATE AND DELETE AND DROP
**Truncate is used to delete complete rows
  TRUNCATE TABLE table_name;
**delete deletes particular row from table with where condition
  DELETE FROM TableName WHERE condition;
**drop is used drop the table from database
  DROP TABLE table_name;

 select * from emp where e_gender!='female';
 select * from emp where e_name like('%a'); //selects ename which ends with a
 select e_name,e_sal from emp where e_id in ('101','102','103');
 
BETWEEN-->used to fetch the data between the range
select e_id,e_name,e_sal from emp where e_sal between 10000
 and 30000; //it includes the end values also

DATA CONSTRAINTS
**It uses integrity constraints to prevent invalid data entry
  1.column level constarints
  2/table level constarints

UNIQUE AND PRIMARY
**The UNIQUE constraint ensures that all values in a column are different
**unique can be applied to column leVel -->can store null value
**primary can be applied on both column and row level -->cannot store null values

LIKE
**This is used to list all the rows in a table whose column values matches specified pattern
  select * from emp where e_name like('%a'); //selects ename which ends with a

IN
**IN operator is used in column whether to check if a column is presen or not
  select e_name,e_sal from emp where e_id in ('101','102','103');

CHECK
**it is also called as bussiness integrity rule constraints
**it can be used on column level or table level also
it allow u to define a condition that a value entered into a table must satisfy before it can be accepted

FORIEGN KEY
**CALLED AS REFRENCIAL INTEGRITY CONSTRAINTS-->refers primary key in another table
**defined in child table and table containing reference column in the parent table

CONSTRAINTS
1.not null-->only on column level
2.unique--->both column and table level
3.primary key-->both column and table level
4.check(business integrity rule contsriants)---->both col and table level
5.DEFAULT---->only on column level
6.foriegn key--->both table and column level


**TO KNOW WHETHER IT IS A CHILD TABLE
<child_col> <datatype> [contsraint_name] references <parent_table> [<parent_column>]


JOINS
**used to relate information in different tables
**used to combine columns from different tables
 1.equi join
2.cartesian join
3.outer join
4.self join

(INNER) JOIN: Returns records that have matching values in both tables
LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
