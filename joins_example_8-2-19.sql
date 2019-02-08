create Database Harini_BookStore;
use Harini_BookStore;

create table Users(U_id char(5) primary key,
Name varchar(20) NOT NULL,
eMail varchar(20) unique,
Addr varchar(40) NOT NULL,
City varchar(20)NOT NULL,
ZipCode integer(10) NOT NULL);

desc Users;

create table Checkout(Chck_id integer(4) primary key,
Chck_date DATE NOT NULL,
Return_date DATE DEFAULT '0000-00-00',
U_id char(5) REFERENCES Users(U_id),
B_id integer(4) REFERENCES Books(B_id)
);

desc Checkout;

create Table Books(B_id integer(4) PRIMARY KEY,
ISBN integer(15) unique,
Title VARCHAR(50) not null,Author Varchar(40) not null,
Edition char(8) DEFAULT 'FIRST');

insert into Users values('A10','GOPI','gopi@gmail.com','xygajksdbvujasd','chennai',600053);
insert into Users values('B13','sampada','sam@gmail.com','xygajksdbvujasd','chrompet',600033);
insert into Users values('B14','sandya','sand@gmail.com','xygajksdbvujasd','tambaram',603452);
insert into Users values('X10','swathi','swea@gmail.com','xygajksdbvujasd','kanchi',608222);
insert into Users values('T19','harini','hari@gmail.com','xygajksdbvujasd','banglore',607686);

select * from Users;

insert into Checkout values(1,'2017-12-23','2017-12-30','A10',101);
insert into Checkout values(2,'2014-1-12','2015-12-30','B13',101);
insert into Checkout(Chck_id,Chck_date,U_id,B_id) values(3,'2012-10-2','A10',102);
insert into Checkout values(4,'2013-8-3','2015-12-30','X10',103);
insert into Checkout (Chck_id,Chck_date,U_id,B_id) values(5,'2018-4-13','T19',104);
insert into Checkout (Chck_id,Chck_date,U_id,B_id) values(6,'2016-2-13','B13',104);



select * from Checkout;

insert into  Books values(101,13146461,'Alice in wonderland','lewis','SECOND');
insert into  Books values(102,31434135,'Game of thrones','RR.Martin','EIGHTH');
insert into  Books(B_id,ISBN,Title,Author) values(103,32168431,'Half Girlfriend','Chetan');
insert into  Books values(104,88989546,'Two States','Bhagat','SEVENTH');
insert into Books values(105,24234324,'SQL PADINGA','GOPI','TENTH');

select * from Books



/*Ques:
User Details who purchased books
Query:*/
select u.Name,u.eMail,c.Chck_date,c.Return_date from Users u Inner Join Checkout c on u.U_id=c.U_id;



/*Ques:
User details regardless of purchasing books
Query:*/
select u.Name from Users u left Join Checkout c on u.U_id=c.U_id;



/*Ques:
Books not purchased
Query:*/
select b.Title,b.Author from  Checkout c right Join Books b on b.B_id=c.B_id where c.Chck_id is NULL;

/*Ques:
Get Users who have not returned books
Query:*/
select u.Name from Users u left join Checkout c on u.U_id=c.U_id where Return_date='0000-00-00';

/*Ques:
Get Users who have not returned books and there corresponding book names [left join returns even null values i.e who has not purchased]
Query:*/
select u.Name,b.Title from Users u left join Checkout c on u.U_id=c.U_id inner join Books b on b.B_id=c.B_id where Return_date='0000-00-00';









-------------------------------------------------------------------------------------------------------------------------------------------------------------------
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 8.0.13 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create Database Harini_BookStore;
Query OK, 1 row affected (0.20 sec)

mysql> use Harini_BookStore;
Database changed
mysql>
mysql> create table Users(U_id char(5) primary key,
    -> Name varchar(20) NOT NULL,
    -> eMail varchar(20) unique,
    -> Addr varchar(40) NOT NULL,
    -> City varchar(20)NOT NULL,
    -> ZipCode integer(10) NOT NULL);
Query OK, 0 rows affected (0.47 sec)

mysql>
mysql> desc Users;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| U_id    | char(5)     | NO   | PRI | NULL    |       |
| Name    | varchar(20) | NO   |     | NULL    |       |
| eMail   | varchar(20) | YES  | UNI | NULL    |       |
| Addr    | varchar(40) | NO   |     | NULL    |       |
| City    | varchar(20) | NO   |     | NULL    |       |
| ZipCode | int(10)     | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

mysql>
mysql> create table Checkout(Chck_id integer(4) primary key,
    -> Chck_date DATE NOT NULL,
    -> Return_date DATE DEFAULT '0000-00-00',
    -> U_id char(5) REFERENCES Users(U_id),
    -> B_id integer(4) REFERENCES Books(B_id)
    -> );
Query OK, 0 rows affected (0.36 sec)

mysql>
mysql> desc Checkout;
+-------------+---------+------+-----+------------+-------+
| Field       | Type    | Null | Key | Default    | Extra |
+-------------+---------+------+-----+------------+-------+
| Chck_id     | int(4)  | NO   | PRI | NULL       |       |
| Chck_date   | date    | NO   |     | NULL       |       |
| Return_date | date    | YES  |     | 0000-00-00 |       |
| U_id        | char(5) | YES  |     | NULL       |       |
| B_id        | int(4)  | YES  |     | NULL       |       |
+-------------+---------+------+-----+------------+-------+
5 rows in set (0.00 sec)

mysql>
mysql> create Table Books(B_id integer(4) PRIMARY KEY,
    -> ISBN integer(15) unique,
    -> Title VARCHAR(50) not null,Author Varchar(40) not null,
    -> Edition char(8) DEFAULT 'FIRST');
Query OK, 0 rows affected (0.49 sec)

mysql>
mysql> insert into Users values('A10','GOPI','gopi@gmail.com','xygajksdbvujasd','chennai',600053);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Users values('B13','sampada','sam@gmail.com','xygajksdbvujasd','chrompet',600033);
Query OK, 1 row affected (0.09 sec)

mysql> insert into Users values('B14','sandya','sand@gmail.com','xygajksdbvujasd','tambaram',603452);
Query OK, 1 row affected (0.07 sec)

mysql> insert into Users values('X10','swathi','swea@gmail.com','xygajksdbvujasd','kanchi',608222);
Query OK, 1 row affected (0.06 sec)

mysql> insert into Users values('T19','harini','hari@gmail.com','xygajksdbvujasd','banglore',607686);
Query OK, 1 row affected (0.09 sec)

mysql>
mysql> select * from Users;
+------+---------+----------------+-----------------+----------+---------+
| U_id | Name    | eMail          | Addr            | City     | ZipCode |
+------+---------+----------------+-----------------+----------+---------+
| A10  | GOPI    | gopi@gmail.com | xygajksdbvujasd | chennai  |  600053 |
| B13  | sampada | sam@gmail.com  | xygajksdbvujasd | chrompet |  600033 |
| B14  | sandya  | sand@gmail.com | xygajksdbvujasd | tambaram |  603452 |
| T19  | harini  | hari@gmail.com | xygajksdbvujasd | banglore |  607686 |
| X10  | swathi  | swea@gmail.com | xygajksdbvujasd | kanchi   |  608222 |
+------+---------+----------------+-----------------+----------+---------+
5 rows in set (0.00 sec)

mysql>
mysql> insert into Checkout values(1,'2017-12-23','2017-12-30','A10',101);
Query OK, 1 row affected (0.04 sec)

mysql> insert into Checkout values(2,'2014-1-12','2015-12-30','B13',101);
Query OK, 1 row affected (0.09 sec)

mysql> insert into Checkout(Chck_id,Chck_date,U_id,B_id) values(3,'2012-10-2','A10',102);
Query OK, 1 row affected (0.07 sec)

mysql> insert into Checkout values(4,'2013-8-3','2015-12-30','X10',103);
Query OK, 1 row affected (0.07 sec)

mysql> insert into Checkout (Chck_id,Chck_date,U_id,B_id) values(5,'2018-4-13','T19',104);
Query OK, 1 row affected (0.10 sec)

mysql> insert into Checkout (Chck_id,Chck_date,U_id,B_id) values(6,'2016-2-13','B13',104);
Query OK, 1 row affected (0.06 sec)

mysql>
mysql>
mysql>
mysql> select * from Checkout;
+---------+------------+-------------+------+------+
| Chck_id | Chck_date  | Return_date | U_id | B_id |
+---------+------------+-------------+------+------+
|       1 | 2017-12-23 | 2017-12-30  | A10  |  101 |
|       2 | 2014-01-12 | 2015-12-30  | B13  |  101 |
|       3 | 2012-10-02 | 0000-00-00  | A10  |  102 |
|       4 | 2013-08-03 | 2015-12-30  | X10  |  103 |
|       5 | 2018-04-13 | 0000-00-00  | T19  |  104 |
|       6 | 2016-02-13 | 0000-00-00  | B13  |  104 |
+---------+------------+-------------+------+------+
6 rows in set (0.00 sec)

mysql>
mysql> insert into  Books values(101,13146461,'Alice in wonderland','lewis','SECOND');
Query OK, 1 row affected (0.04 sec)

mysql> insert into  Books values(102,31434135,'Game of thrones','RR.Martin','EIGHTH');
Query OK, 1 row affected (0.16 sec)

mysql> insert into  Books(B_id,ISBN,Title,Author) values(103,32168431,'Half Girlfriend','Chetan');
Query OK, 1 row affected (0.07 sec)

mysql> insert into  Books values(104,88989546,'Two States','Bhagat','SEVENTH');
Query OK, 1 row affected (0.06 sec)

mysql> insert into Books values(105,24234324,'SQL PADINGA','GOPI','TENTH');
Query OK, 1 row affected (0.06 sec)

mysql>
mysql> select * from Books
    ->
    ->
    ->
    -> /*Ques:
   /*> User Details who purchased books
   /*> Query:*/
    -> select u.Name,u.eMail,c.Chck_date,c.Return_date from Users u Inner Join Checkout c on u.U_id=c.U_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select u.Name,u.eMail,c.Chck_date,c.Return_date from Users u Inner Join Checkout' at line 6
mysql>
mysql>
mysql>
mysql> /*Ques:
   /*> User details regardless of purchasing books
   /*> Query:*/
mysql> select u.Name from Users u left Join Checkout c on u.U_id=c.U_id;
+---------+
| Name    |
+---------+
| GOPI    |
| sampada |
| GOPI    |
| swathi  |
| harini  |
| sampada |
| sandya  |
+---------+
7 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> /*Ques:
   /*> Books not purchased
   /*> Query:*/
mysql> select b.Title,b.Author from  Checkout c right Join Books b on b.B_id=c.B_id where c.Chck_id is NULL;
+-------------+--------+
| Title       | Author |
+-------------+--------+
| SQL PADINGA | GOPI   |
+-------------+--------+
1 row in set (0.00 sec)

mysql>
mysql> /*Ques:
   /*> Get Users who have not returned books
   /*> Query:*/
mysql> select u.Name from Users u left join Checkout c on u.U_id=c.U_id where Return_date='0000-00-00';
+---------+
| Name    |
+---------+
| GOPI    |
| harini  |
| sampada |
+---------+
3 rows in set (0.00 sec)

mysql>
mysql> /*Ques:
   /*> Get Users who have not returned books and there corresponding book names [left join returns even null values i.e who has not purchased]
   /*> Query:*/
mysql> select u.Name,b.Title from Users u left join Checkout c on u.U_id=c.U_id inner join Books b on b.B_id=c.B_id where Return_date='0000-00-00';
+---------+-----------------+
| Name    | Title           |
+---------+-----------------+
| GOPI    | Game of thrones |
| harini  | Two States      |
| sampada | Two States      |
+---------+-----------------+
3 rows in set (0.00 sec)

mysql>
