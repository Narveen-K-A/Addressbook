CREATE DATABASE cfaddressbook;

USE cfaddressbook;

CREATE TABLE registerdata(Firstname varchar(20),
						Emailid varchar(20),
						Username varchar(20),
						Userpassword varchar(20),
						Cpassword varchar(20));

SELECT * FROM registerdata;

CREATE TABLE createdata(Personid IDENTITY (1,1) int NOT NULL,
						Title varchar(5),
						Firstname varchar(20),
						Lastname varchar(20),
						Gender varchar(20),
						Dateofbirth varchar(20),
						Addressofuser varchar(20),
						Street varchar(20),
						Emailid varchar(20),
						Phonenumber varchar(20)
						PRIMARY KEY (Personid));

DROP TABLE createdata;

SELECT * FROM createdata;

