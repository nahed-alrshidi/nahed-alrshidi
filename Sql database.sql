CREATE TABLE Resource
(Resources_ID INT NOT NULL,
Name VARCHAR (20) NOT NULL,
location. VARCHAR (50) NOT NULL,
PRIMARY KEY (Resources_ID ) );

CREATE TABLE Res-phone
(branch No INT NOT NULL,
Phone NUMBER (10) NOT NULL,
PRIMARY KEY (Resorces No, Phone),
FOREIGN KEY (Resorces No) REFERENCES Branch (Resorces ID ) );

CREATE TABLE Staff
(SSN CHAR (9) NOTNULL,
Fname VARCHAR (20) NOTNULL,
Lname VARCHAR (20) NOTNULL,
Age INT NOTNULL,
gender VARCHAR (10) NOTNULL,
salary NUMBER(9) NOTNULL,
Privilege VARCHAR (50) NOTNULL,
PRIMARY KEY(SSN));

CREATE TABLE Sta-phone
(SSN CHAR (9) NOT NULL,
Phone NUMBER (10) NOT NULL,
PRIMARY KEY (SSN, Phone),
FOREIGN KEY (SSN) REFERENCES Staff (SSN));

CREATE TABLE Member
(ID CHAR (9) NOTNULL,
Fname VARCHAR (20) NOTNULL,
Lname VARCHAR (20) NOTNULL,
type VARCHAR (20) NOTNULL,
DateOfBirth DATE,
Email VARCHAR (20), NOTNULL,
bulding CHAR (15) NOT NULL,
PRIMARY KEY(ID),
FOREIGN KEY (building) REFERENCES Member address(bulding) );

CREATE TABLE member-phone
(member-ID CHAR (9) NOT NULL,
Phone NUMBER (10) NOT NULL,
PRIMARY KEY (ID, Phone),
FOREIGN KEY (ID) REFERENCES Member (ID));

CREATE TABLE Member-address
(city VARCHAR (20) NOT NULL,
bulding CHAR (15) NOT NULL,
street VARCHAR (20) NOT NULL,
PRIMARY KEY (building));
REATE TABLE Book
(ISBN CHAR(10) NOT NULL,
name VARCHAR (30) NOT NULL,
Author VARCHAR (30) NOT NULL,
publisher VARCHAR (50) NOT NULL,
state VARCHAR (20) NOT NULL,
PRIMARY KEY(ISBN));

CREATE TABLE Resorces -book
(ISBN CHAR (10) NOT NULL,
Br-No INT NOT NULL,
PRIMARY KEY (ISBN, Resorces -No),
FOREIGN KEY (ISBN) REFERENCES Book (ISBN),
FOREIGN KEY (Resorces -No) REFERENCES Resorces (Resorces number));


CREATE TABLE BOOK (
ISBN INT NOT NULL PRIMARY KEY ,
NAME VARCHAR(50) NOT NULL,
STATE VARCHAR(20) NOT NULL ,
AUTHOR_ID  VARCHAR(50) NOT NULL,
PUBLISHER_ID  VARCHAR(50) NOT NULL,

CREATE TABLE Item
(Item-number CHAR(10) NOTNULL,
publisher VARCHAR(50) NOYNULL,
type VARCHAR(50) NOYNULL,
PRIMARY KEY(Item-number),
FOREIGN KEY (type) REFERENCES Des-item(type));

CREATE TABLE Des-item
(type VARCHAR (20) NOT NULL,
Description VARCHAR (70),
PRIMARY KEY (type));

CREATE TABLE Resorces-item
(Item-No CHAR (10) NOT NULL,
R-No INT NOT NULL,
PRIMARY KEY (Item-No, R-No)
FOREIGN KEY (Item-No) REFERENCES Item (Item-number)
FOREIGN KEY (R-No) REFERENCES Resorce(Resorce number) );

CREATE TABLE Room
(Room-ID INT NOT NULL,
State VARCHAR (30) NOT NULL,
type VARCHAR (30) NOT NULL,
Location VARCHAR (30) NOT NULL,
PRIMARY KEY (Room-number));

CREATE TABLE Resources -Room
(Room-No INT NOT NULL,
RNo INT NOT NULL,
PRIMARY KEY (Room-No, RNo)
FOREIGN KEY (Room-No) REFERENCES Room (Room-number)
FOREIGN KEY (RNo) REFERENCES Resorce (Resorce number));



CREATE TABLE Loan
(Loan-number INT NOT NULL,
DateLoaned DATE NOT NULL,
PRIMARY KEY(Loan-number),
FOREIGN KEY (DateLoaned) REFERENCES Return-loan(DateLoaned) );

CREATE TABLE Return-loan
(DateLoaned DATE NOT NULL,
Due Date DATE NOT NULL,
PRIMARY KEY(DateLoaned));

CREATE TABLE Classification
(ID INT NOT NULL,
Name VARCHAR (20) NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Fine
( AmountOfFine CHAR(5) NOT NULL,
description VARCHAR(50) NOT NULL,
state VARCHAR(20) NOT NULL,
Due Date DATE NOT NULL,
PRIMARY KEY(Fine-number));


CREATE view vbookstatus as 
select ISBN,NAME,STATUS,PUBLISHER_ID,AUTHOR_ID
from BOOK


create user USER_ONE
IDENTIFIED by 12345
default tablespace users
temporary tablespace temp
QUOTA 500K on users;

grant connect to USER_ONE;
grant SELECT ON vbookstatus to USER_ONE;



