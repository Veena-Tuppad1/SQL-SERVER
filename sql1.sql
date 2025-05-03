create database amazon_db;  #to create a new database
use db1;
select database(); #to check which databse is active
use amazon_db;  #to active the database
show tables; #it will list all the tables present in the selected database

#ACTIVATE amazon_db; #This will not work.,because its alraedy decided what commands we need to use

#To Create Table
CREATE TABLE CUSTOMER_TB(
CUST_NAME CHAR(20),
CUST_AGE INT,
CUST_PHON INT,
CUST_LOC CHAR(30)
);



CREATE TABLE PRODUCT_TB(
PRODUCT_NAME CHAR(20),
PRODUCT_PRICE INT
);

#*-->EVERYTHING

SELECT * FROM CUSTOMER_TB;  #THIS IS FOR VIEWING TABLE DATA



