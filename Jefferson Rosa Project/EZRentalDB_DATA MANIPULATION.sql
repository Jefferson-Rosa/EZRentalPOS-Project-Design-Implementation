Select * FROM CUSTOMER;

--Insert statements For Customer
Insert INTO CUSTOMER
VALUES(DEFAULT,'Bob','Smith','23-APR-1992','9 Saxton Road',
'Apt2','NewYork','NY','11235','Brooklyn','475-847-0217',
'oj0-67@houseloaded.com','535362130','05-JUNE-2000',NULL,'R');

Insert INTO CUSTOMER
VALUES(DEFAULT,'Rox','Rose','13-Jun-1997','290 Laurel Street',
'Apt1','NewYork','NY','11218','Brooklyn','576-847-1419',
'asdioj@gmail.com','1568720','15-JUNE-2005',NULL,'R');

Insert INTO CUSTOMER
VALUES(DEFAULT,'Meg','Rodrigrez','1-Jun-2005','9 Saxton Road','Apt2',
'NewYork','NY','10468','Bronx','897-025-0385',
'linkme@gmail.com','15978541','18-OCT-2000',NULL,'C');

Insert INTO CUSTOMER
VALUES(DEFAULT,'Jeff','Armstrong','27-APR-2001','301 1st Ave.',
'Apt12','Levittown','NY','11756','NewYork','147-347-1217',
'rockgrirox@gmail.com','598362130','07-JUNE-2002',NULL,'C');

Insert INTO CUSTOMER
VALUES(DEFAULT,'Yume','Nao','05-OCT-1999','8995 Newbridge Street',
'Apt2','Tonawanda','NY','11235','New York','475-847-0217',
'richard@gmail.com','89454336','15-JUNE-2001',NULL,'R');

--End of insert statements for CUSTOMER--

Select * FROM COMPANY;

--Insert Statements for COMPANY TABLE--

Insert INTO COMPANY 
VALUES(1,'RentalBuy','931 Pearl Lane
','931 Pearl Lane','East Elmhurst','NY','11370','NewYork','Richard Richsinson',
'456-741-1546','RentalBuyinc@gmail.com',123.53);

Insert INTO COMPANY 
VALUES(2,'Staple','65 Tanglewood Street
','65 Tanglewood Street','Brooklyn','NY','11212','NewYork','Copper Richsinson',
'369-741-1546','Staple@gmail.com',80.53);

Insert INTO COMPANY 
VALUES(3,'EZTools','9538 Glenlake St.
','9538 Glenlake St.','New York','NY','10025','NewYork','Lenny Hawk',
'456-741-1546','EZTools@gmail.com',50.53);

Insert INTO COMPANY 
VALUES(4,'BoxnBox','50 Military Drive
','50 Military Drive','Buffalo','NY','14224','NewYork','Randy Wrangler',
'369-258-1546','BoxnBox@gmail.com',23.53);

Insert INTO COMPANY 
VALUES(5,'Woopers','129 Leeton Ridge St.
','129 Leeton Ridge St.','Jamaica','NY','11435','NewYork','Bob Smith',
'456-741-1546','Woopers@gmail.com',42.23);

--End of Insert Statements for COMPANY--

Select * FROM CORPORATECUSTOMER;

--Insert Statements for CORPORATECUSTOMER--

INSERT INTO CORPORATECUSTOMER
VALUES(1,1);

INSERT INTO CORPORATECUSTOMER
VALUES(2,2);

INSERT INTO CORPORATECUSTOMER
VALUES(3,3);

INSERT INTO CORPORATECUSTOMER
VALUES(4,4);

INSERT INTO CORPORATECUSTOMER
VALUES(5,5);

--End of Insert Statements for CORPORATECUSTOMER--

Select * FROM CREDITCARD;

--Insert Statements for CreditCard

Insert INTO CREDITCARD
VALUES (5411406697268879,'Box  Smith','Amazon','03-APR-2030','9915 Monroe St.',
'Apt#5','Newburgh','NY','12550','New York',1000,1);

Insert INTO CREDITCARD
VALUES (5105903518925977,'Roxie Lex','Amazon','14-JUN-2025','41 Pin Oak St.',
'Apt#3','Yonkers','NY','10701','New York',500,1);

Insert INTO CREDITCARD
VALUES (5194176023813994,'Lenny Hawk','Wallmart','03-APR-2030','13 W. Surrey St.',
'Apt#6','Spring Valley','NY','10977','New York',250,1);

Insert INTO CREDITCARD
VALUES (5176620860731399,'Box  Smith','Twitch','25-SEP-2026','46 Sunbeam St.',
'Apt#1','Astoria','NY','11105','New York',347,0);

Insert INTO CREDITCARD
VALUES (5447022440523615,'Box  Smith','Macys','07-DEC-2027','17 2nd Street',
'Apt#23','New York','NY','10016','New York',574,1);

--End of insert Statements for CreditCard

Select * from CUSTOMER_CREDITCARD;

--Insert Statements for CUSTOMER_CREDITCARD 

Insert INTO CUSTOMER_CREDITCARD
VALUES(5411406697268879,1);

Insert INTO CUSTOMER_CREDITCARD
VALUES(5105903518925977,2);

Insert INTO CUSTOMER_CREDITCARD
VALUES(5194176023813994,3);

Insert INTO CUSTOMER_CREDITCARD
VALUES(5176620860731399,4);

Insert INTO CUSTOMER_CREDITCARD
VALUES(5447022440523615,5);

--END Of statements for CUSTOMER_CREDITCARD 

Select * from CUSTOMERUSERACCOUNT;

--Create Table statements for CUSTOMERUSERACCOUNT

Insert INTO CUSTOMERUSERACCOUNT
VALUES (DEFAULT,'Jeff','defi542@','Jeff@gmail.com');

Insert INTO CUSTOMERUSERACCOUNT
VALUES (DEFAULT,'Richard','h54dfs@','Richard@gmail.com');

Insert INTO CUSTOMERUSERACCOUNT
VALUES (DEFAULT,'Bob','5617@89@','bobys@gmail.com');

Insert INTO CUSTOMERUSERACCOUNT
VALUES (DEFAULT,'Link','cupcakes6','linkdabest@gmail.com');

Insert INTO CUSTOMERUSERACCOUNT
VALUES (DEFAULT,'Sora','pancakes12','Soracoralora@gmail.com');

--End of Create Table statements for CUSTOMERUSERACCOUNT

--First Selection Statement returning one record with all columns

Select * from CUSTOMER where CUSTOMERID = 1;

--Second Selection Statement returning multiple records

Select * from CUSTOMER where CustomerType = 'R';

--Third Selection Statement returning one or multiple records and columns that queries three tables

Select cor.CompanyID,co.CompanyName,cu.FirstName,cu.LastName,cu.CustomerType
From CORPORATECUSTOMER cor,COMPANY co,CUSTOMER cu WHERE co.CompanyID = 1;


--Update Statements

UPDATE COMPANY SET CompanyName = 'BiliBili', AddressLine1 = '2277  Oak Street Apt#2',
AddressLine2 = '2277  Oak Street Apt#2', City = 'Old Forge', StateCode = 'NY',ZipCode = '13420',
Country = 'Old Forge', ContactName = 'Annika M Ramos' ,ContactPhone = '315-369-5311' ,
ContactEmail = 'sjror3tvbg@temporary-mail.net',CompanyDailyRentalRate = 25.65
WHERE CompanyID = 1;

UPDATE CUSTOMER_CREDITCARD SET CustomerID = 1 WHERE CustomerID = 2;

--Delete Statements

--First Delete Statement
Delete FROM COMPANY where CompanyID = 1;

--Second Delete Statement
Delete FROM CORPORATECUSTOMER WHERE CompanyID = 2;

--End Of Delete Statements