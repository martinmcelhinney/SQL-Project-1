-- Part 2: Logical and Physical Design

-- 1. Create the corresponding Database using DDL:
-- Create a New Database called JimsShop
CREATE DATABASE PaulsShop;

-- 2. Create all the necessary tables identified above using DDL:
USE PaulsShop;

-- Create Product Table
CREATE TABLE Product(
SKU_Number BIGINT PRIMARY KEY,
Supplier_Number INT,
Product_Name VARCHAR(60),
Product_Category VARCHAR(30),
Size VARCHAR(20),
Item_Cost_Price DECIMAL(10,2),
Retail_Price DECIMAL(10,2),
Quantity_in_Stock INT
);

-- Create Supplier Table
CREATE TABLE Supplier(
Supplier_Number INT PRIMARY KEY,
SKU_Number BIGINT,
Supplier_Name VARCHAR(60),
Supplier_Address VARCHAR(80),
Supplier_Phone VARCHAR(20),
Supplier_Email VARCHAR(80)

);

-- Create Transact Table
CREATE TABLE Transact(
Transaction_Number INT PRIMARY KEY,
Customer_Number INT,
SKU_Number BIGINT,
Date_of_Transaction VARCHAR(20),
Quantity_Sold INT,
Total_Transaction_Value DECIMAL(10,2)

);

-- Create Customer Table
CREATE TABLE Customer(
Customer_Number INT PRIMARY KEY,
Transaction_Number INT,
Dispatch_Note_Number INT,
Customer_First_Name VARCHAR(24),
Customer_Last_Name VARCHAR(40),
Customer_Billing_Address_1 VARCHAR(80),
Customer_Billing_Address_2 VARCHAR(80),
Customer_Billing_Address_Postcode VARCHAR(20),
Customer_Billing_Phone VARCHAR(30),
Customer_Billing_Email VARCHAR(80)

);

-- Create Delivery Table
CREATE TABLE Delivery(
Dispatch_Note_Number INT PRIMARY KEY,
Transaction_Number INT,
Customer_Number INT,
Customer_Delivery_Address_1 VARCHAR(80),
Customer_Delivery_Address_2 VARCHAR(80),
Customer_Delivery_Postcode VARCHAR(80),
Customer_Delivery_Phone VARCHAR(30)

);

-- Create Email Table
CREATE TABLE Email(
Email_Newsletter_ID VARCHAR(80),
Customer_Billing_Email VARCHAR(80)
);

-- 3. Populate your tables with some data using DML (Insert into Statement)
/*4. Populate your database with DML insert statements OR using a large data set representing a sample one-year 
transaction (01/01/23 - 31/12/23) on each table, using data generators such as Mockaroo or generate data to generate synthetic data.*/ 

-- Insert Data into the Customer Table (Using Insert Into Statement)

insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (208571,2343732,321586, 'Iggy', 'Akker', '61138 Maryland Pass', 'Suite 28', '31-933-1006', '9733988128', 'iakker0@zdnet.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (412864,2301885,314020, 'Neal', 'Marre', '61493 Merchant Place', 'Suite 31', '93-195-4525', '7077220675', 'nmarre1@blogtalkradio.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (225402,2021015,338402, 'Georgiana', 'Fratczak', '5 Bunker Hill Park', '17th Floor', '72-560-1017', '9483893665', 'gfratczak2@un.org');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (137986,2153941,337579, 'Annadiane', 'Kief', '08 Marcy Place', 'PO Box 26030', '79-322-1885', '3466483127', 'akief3@theatlantic.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (397051,2505309,316595, 'Lammond', 'McCoid', '162 Cherokee Avenue', 'Suite 97', '05-416-7318', '5305482149', 'lmccoid4@prweb.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (214899,2746271,318708, 'Karlene', 'Wethey', '920 Hayes Park', 'PO Box 84432', '20-166-1209', '1362183274', 'kwethey5@weibo.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (481978,2528188,342179, 'Halsy', 'Hesse', '5 Brickson Park Park', 'Apt 1425', '00-901-1657', '8005947161', 'hhesse6@state.tx.us');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (200604,2800323,305351, 'Eunice', 'Jubert', '1 Eastwood Center', 'Room 350', '65-833-9549', '4408373351', 'ejubert7@tiny.cc');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (444263,2119829,348435, 'Mayer', 'Chrystal', '30847 Scott Way', '2nd Floor', '44-399-1004', '2046479686', 'mchrystal8@delicious.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (179975,2681712,345393, 'Adam', 'Joontjes', '43 Sutherland Court', 'PO Box 41448', '87-484-8610', '2037327944', 'ajoontjes9@statcounter.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (371141,2193476,318238, 'Ambrosio', 'Jutson', '697 Evergreen Pass', 'Suite 80', '16-203-0203', '8599622096', 'ajutsona@ucoz.ru');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (495269,2735950,326381, 'Gilles', 'Simpkiss', '1 Heath Plaza', 'Apt 1834', '89-824-9783', '2707368074', 'gsimpkissb@huffingtonpost.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (198570,2441854,320000, 'Nerty', 'Dearth', '642 Arapahoe Center', 'PO Box 12292', '92-653-8451', '8796404991', 'ndearthc@si.edu');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (352038,2985213,328772, 'Alexia', 'Tezure', '660 Algoma Circle', 'Apt 1854', '10-959-4619', '8717781866', 'atezured@economist.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (336107,2757817,341256, 'Franny', 'Noraway', '965 Butterfield Pass', 'Apt 702', '77-395-3238', '2129884517', 'fnorawaye@examiner.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (316283,2242997,336711, 'Jase', 'Breadon', '665 Prairie Rose Circle', 'Apt 1551', '37-392-9211', '5261228986', 'jbreadonf@chron.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (126566,2039710,326589, 'Cybill', 'Frane', '6 Holy Cross Drive', 'Suite 63', '37-677-9521', '8041453190', 'cfraneg@etsy.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (457643,2729200,331675, 'Ferrell', 'Sturr', '6 Welch Way', 'Apt 1432', '00-044-0564', '2942680543', 'fsturrh@mlb.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (325265,2917364,305801, 'Simeon', 'Pes', '1 Melby Drive', 'Suite 45', '08-302-2853', '6958200387', 'spesi@multiply.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (266162,2705378,304008, 'Austina', 'Moyser', '15395 Donald Crossing', '3rd Floor', '60-037-3984', '1988233338', 'amoyserj@storify.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (150244,2900033,336804, 'Marlo', 'Gyse', '3354 Lakeland Circle', 'Suite 47', '84-774-2694', '8003145962', 'mgysek@unc.edu');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (471520,2431887,315809, 'Kristel', 'Rockhall', '537 Kedzie Hill', 'Apt 855', '89-402-4036', '1104131244', 'krockhalll@qq.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (102389,2408710,340171, 'Rogerio', 'Raffles', '3520 Buena Vista Lane', 'Apt 1470', '55-390-5810', '7374537347', 'rrafflesm@discuz.net');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (239806,2304771,326763, 'Rossie', 'Bingall', '0931 Vahlen Trail', 'Room 1564', '32-819-8475', '3997328297', 'rbingalln@w3.org');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (366817,2970455,332429, 'Maribelle', 'Bauser', '1151 Transport Pass', '5th Floor', '82-704-0805', '3235601110', 'mbausero@patch.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (281880,2372617,346021, 'Pincas', 'Dryburgh', '4788 Rusk Plaza', 'PO Box 17036', '01-947-0957', '6207142698', 'pdryburghp@zdnet.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (173243,2799640,325960, 'Annamarie', 'Schoolcroft', '95663 Burning Wood Junction', 'Suite 16', '79-716-4335', '5393037400', 'aschoolcroftq@bluehost.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (346178,2332372,332040, 'Marley', 'Coolahan', '79 Gale Hill', '8th Floor', '38-239-7682', '4053388016', 'mcoolahanr@yellowbook.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (412454,2163417,313752, 'Kirk', 'Breede', '8591 Hoard Drive', 'Room 1205', '13-941-4418', '2399347710', 'kbreedes@icq.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (289252,2522142,305602, 'Emmi', 'Van Der Vlies', '91195 Surrey Parkway', 'Suite 70', '57-871-9272', '8915730975', 'evandervliest@wsj.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (404991,2458414,310064, 'Jacintha', 'Cariss', '19 Eagan Trail', '13th Floor', '18-753-1465', '1892801576', 'jcarissu@posterous.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (126960,2732050,318773, 'Boot', 'Upson', '1 Melvin Road', 'PO Box 10984', '83-194-4177', '6849051504', 'bupsonv@answers.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (360392,2404464,338289, 'Spense', 'Kremer', '739 Bunker Hill Junction', 'Room 234', '10-086-0236', '1335774050', 'skremerw@seesaa.net');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (143421,2487310,327696, 'Griselda', 'Lampe', '57497 Anniversary Point', 'PO Box 77634', '56-690-9297', '7678343405', 'glampex@hibu.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (271294,2256870,306158, 'Rossie', 'Mortell', '07 Elmside Center', 'Room 757', '67-955-8028', '9756940382', 'rmortelly@state.tx.us');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (204661,2861376,336119, 'Arri', 'Purnell', '63 Eagan Terrace', 'Room 1981', '56-593-2408', '6884746332', 'apurnellz@illinois.edu');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (103654,2778318,315325, 'Broderic', 'Lidyard', '7 Ramsey Lane', 'Apt 1652', '19-484-0824', '4378080673', 'blidyard10@newsvine.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (166193,2887741,309205, 'Benton', 'Robeiro', '7888 Redwing Alley', 'Room 1092', '15-588-6601', '8135783312', 'brobeiro11@wired.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (254549,2942720,333006, 'Katine', 'Mapston', '15095 Nevada Hill', 'PO Box 15098', '48-299-4964', '5346607036', 'kmapston12@instagram.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (383724,2490992,315878, 'Lenora', 'Whitloe', '01 Superior Plaza', 'Room 208', '11-699-3530', '7498658455', 'lwhitloe13@wsj.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (141382,2646395,348298, 'Jordana', 'Veryard', '00 Welch Hill', '8th Floor', '12-281-0193', '9191733109', 'jveryard14@people.com.cn');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (332284,2391016,300561, 'Halli', 'Golsworthy', '13158 Ludington Junction', '14th Floor', '56-803-5284', '1312076329', 'hgolsworthy15@unblog.fr');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (315644,2375964,301471, 'Jessalyn', 'Raisbeck', '9 2nd Court', '10th Floor', '58-080-6521', '5043290943', 'jraisbeck16@photobucket.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (149282,2328074,303079, 'Josy', 'Frammingham', '3 Hanover Hill', 'Apt 1266', '25-638-8417', '7186536067', 'jframmingham17@mashable.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (434955,2004447,330720, 'Waylen', 'Regus', '985 Delladonna Street', 'Room 349', '06-748-7497', '4514090646', 'wregus18@shinystat.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (152488,2275399,343852, 'Gae', 'Broggelli', '722 Jay Junction', '4th Floor', '95-735-1211', '3949367592', 'gbroggelli19@com.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (157586,2055000,316036, 'Kippie', 'Barsam', '115 Memorial Pass', 'Suite 52', '04-451-5036', '5982723282', 'kbarsam1a@diigo.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (466519,2366996,312203, 'Frasco', 'Willcox', '18 Debra Road', '8th Floor', '98-969-6292', '9583974600', 'fwillcox1b@smh.com.au');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (491500,2757066,340091, 'Barron', 'Bohlin', '2 Goodland Terrace', 'Apt 1325', '43-962-6069', '8583908976', 'bbohlin1c@cbc.ca');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (463256,2558941,340053, 'Margeaux', 'Yuryshev', '19635 Jana Alley', 'Suite 40', '67-417-1924', '1811900886', 'myuryshev1d@deliciousdays.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (279315,2485214,331139, 'Estevan', 'Grzelczyk', '3 Grasskamp Plaza', '19th Floor', '73-871-4281', '4772688100', 'egrzelczyk1e@123-reg.co.uk');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (313839,2546767,326292, 'Winne', 'Gingold', '632 Anniversary Court', '5th Floor', '20-087-7574', '3265134139', 'wgingold1f@cyberchimps.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (197175,2162630,309704, 'Red', 'Garrood', '639 Arizona Road', 'Apt 1019', '11-958-8557', '4196517742', 'rgarrood1g@parallels.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (448728,2984879,334825, 'Dredi', 'Puleston', '9 Twin Pines Street', '2nd Floor', '91-093-7876', '9267204711', 'dpuleston1h@wunderground.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (485845,2733661,343743, 'Helaine', 'MacAne', '3 Twin Pines Hill', 'Suite 47', '73-419-2380', '7506527992', 'hmacane1i@photobucket.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (295218,2989269,315612, 'Thornie', 'Brazener', '49227 Bluestem Pass', 'PO Box 6815', '26-223-9186', '6753284030', 'tbrazener1j@phpbb.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (298654,2146491,304451, 'Kizzee', 'Fantham', '13 Kipling Place', 'Apt 1441', '48-596-6521', '1784576182', 'kfantham1k@state.gov');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (382332,2317021,339417, 'Moll', 'Shearn', '2903 Everett Point', '7th Floor', '12-548-5830', '3549436655', 'mshearn1l@craigslist.org');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (356276,2920041,349864, 'Herrick', 'Crank', '918 Anniversary Point', 'PO Box 52974', '80-622-1722', '6744651232', 'hcrank1m@live.com');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (426872,2479844,335301, 'Oralia', 'Betteridge', '7 Sage Way', 'PO Box 90852', '24-411-7023', '6244833502', 'obetteridge1n@joomla.org');
insert into Customer (Customer_Number,Transaction_Number,Dispatch_Note_Number, Customer_First_Name, Customer_Last_Name, Customer_Billing_Address_1, Customer_Billing_Address_2, Customer_Billing_Address_Postcode, Customer_Billing_Phone, Customer_Billing_Email) values (101750,2232413,344672, 'Gage', 'Guwer', '03 Center Parkway', 'Apt 821', '97-619-8345', '7489904272', 'gguwer1o@nasa.gov');



-- Insert Data into Transaction Table (using Insert Into statement)

insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2343732,208571,1.28E+12,'2023/12/24',10,928.5);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2301885,412864,1.55E+12,'2023/09/26',9,359.91);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2021015,225402,1.55E+12,'2023/09/11',9,977.49);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2153941,137986,1.48E+12,'2023/12/02',4,159.2);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2505309,397051,1.76E+12,'2023/03/01',11,523.82);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2746271,214899,1.35E+12,'2023/11/12',7,897.05);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2528188,481978,1.55E+12,'2023/04/05',7,756.7);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2800323,200604,1.55E+12,'2023/11/10',1,114.22);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2119829,444263,1.36E+12,'2023/10/20',8,576.4);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2681712,179975,1.70E+12,'2023/11/25',12,1416.48);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2193476,371141,1.14E+12,'2023/05/31',11,1252.46);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2735950,495269,1.18E+12,'2023/03/23',1,73.54);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2441854,198570,1.52E+12,'2023/05/28',6,771.3);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2985213,352038,1.30E+12,'2023/12/28',2,230.54);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2757817,336107,1.51E+12,'2023/09/01',7,526.47);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2242997,316283,1.95E+12,'2023/03/20',9,556.38);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2039710,126566,1.04E+12,'2023/09/17',7,310.94);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2729200,457643,1.13E+12,'2023/05/31',9,377.01);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2917364,325265,1.92E+12,'2023/11/29',7,411.74);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2705378,266162,1.30E+12,'2023/05/02',11,846.01);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2900033,150244,1.71E+12,'2023/02/17',1,89.63);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2431887,471520,1.84E+12,'2023/02/26',1,70.44);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2408710,102389,1.07E+12,'2023/07/31',5,363.6);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2304771,239806,1.35E+12,'2023/12/01',10,300.3);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2970455,366817,1.91E+12,'2023/06/10',10,357.6);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2372617,281880,1.49E+12,'2023/10/23',10,1224.2);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2799640,173243,1.69E+12,'2023/08/19',5,586.55);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2332372,346178,1.89E+12,'2023/06/04',8,333.6);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2163417,412454,1.00E+12,'2023/01/19',6,198.36);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2522142,289252,1.93E+12,'2023/10/01',9,978.21);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2458414,404991,1.50E+12,'2023/03/09',5,336.35);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2732050,126960,1.93E+12,'2023/06/03',1,124.44);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2404464,360392,1.07E+12,'2023/09/17',5,194.4);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2487310,143421,1.33E+12,'2023/02/10',4,547.88);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2256870,271294,1.10E+12,'2023/03/22',12,724.32);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2861376,204661,1.36E+12,'2023/04/06',2,187.18);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2778318,103654,1.64E+12,'2023/06/12',2,195.36);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2887741,166193,1.83E+12,'2023/01/11',3,321.3);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2942720,254549,1.95E+12,'2023/05/05',1,81.26);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2490992,383724,1.85E+12,'2023/07/20',4,186.56);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2646395,141382,1.08E+12,'2023/09/19',11,659.34);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2391016,332284,1.02E+12,'2023/05/17',4,202.16);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2375964,315644,1.49E+12,'2023/04/23',12,1776.6);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2328074,149282,1.20E+12,'2023/11/01',3,77.46);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2004447,434955,1.02E+12,'2023/05/17',10,1293.9);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2275399,152488,1.09E+12,'2023/05/03',6,410.94);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2055000,157586,1.63E+12,'2023/02/02',11,759.33);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2366996,466519,1.28E+12,'2023/05/25',5,742.85);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2757066,491500,1.14E+12,'2023/08/08',4,451.12);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2558941,463256,1.54E+12,'2023/10/30',11,447.26);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2485214,279315,1.91E+12,'2023/10/01',2,258.9);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2546767,313839,1.13E+12,'2023/03/11',10,789.6);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2162630,197175,1.79E+12,'2023/05/09',1,131.03);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2984879,448728,1.98E+12,'2023/08/24',2,95.96);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2733661,485845,1.37E+12,'2023/10/16',6,729.12);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2989269,295218,1.51E+12,'2023/07/27',12,729.48);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2146491,298654,1.82E+12,'2023/05/15',3,361.71);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2317021,382332,1.94E+12,'2023/04/22',3,246.93);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2920041,356276,1.90E+12,'2023/10/08',5,320.75);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2479844,426872,1.67E+12,'2023/05/13',9,327.42);
insert into Transact (Transaction_Number,Customer_Number,SKU_Number, Date_of_Transaction, Quantity_Sold, Total_Transaction_Value) values (2232413,101750,1.56E+12, '2023/02/11',11,321.77);





-- Insert Data into Product Table (using Insert Into statement)


insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1275936383381,1483, 'Bil',195, '3XL',77.88,92,6);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1553602820331,1150, 'Selig',292, 'L',49.21,39,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1545823731410,1281, 'Kippar',554, 'S',146.91,108,0);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1478519788729,1317, 'Brooks',766, 'L',131.93,39,7);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1756943018820,1319, 'Stuart',838, 'L',127.82,47,5);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1346209520775,1432, 'Berne',746, 'S',110.41,128,0);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1551585027250,1443, 'Nickolas',791, '3XL',69.59,108,2);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1554381411674,1673, 'Paten',350, 'L',126.18,114,3);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1356079254108,1941, 'Esra',964, 'L',115.95,72,8);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1698877323153,1587, 'Nathanil',728, '2XL',130.44,118,8);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1137683246185,1718, 'Chris',262, 'XS',95.41,113,3);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1178413598749,1067, 'Immanuel',494, 'L',130.69,73,1);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1522593424937,1043, 'Trstram',437, 'M',93.41,128,8);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1296665034740,1912, 'Lek',109, 'S',85.9,115,4);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1514002455738,1300, 'Sawyer',885, '3XL',97.06,75,0);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1952888755562,1354, 'Hugo',428, 'XS',52.18,61,7);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1044502313415,1694, 'Chandler',729, 'S',141.4,44,5);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1128131542057,1910, 'Lemuel',110, 'L',47.9,41,2);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1919738020787,1588, 'Roddie',719, 'L',49.06,58,1);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1304626671240,1060, 'Ermanno',193, 'S',131.39,76,0);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1710141242434,1959, 'Jerome',792, 'XS',41.36,89,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1836697422562,1603, 'Uri',587, '2XL',27.95,70,0);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1069401345478,1575, 'Lindy',161, 'M',137.68,72,3);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1352223935561,1968, 'Dalston',532, 'M',32.67,30,8);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1909054566967,1901, 'Lorant',532, '3XL',28.15,35,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1489418615469,1174, 'Ferris',265, '2XL',80.44,122,3);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1694217340147,1940, 'Rochester',143, 'XL',56.19,117,2);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1894532577976,1545, 'Reuven',758, 'M',29.83,41,5);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1001538790844,1489, 'Buck',556, 'M',58.62,33,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1927277687879,1346, 'Borden',603, 'XL',88.32,108,4);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1504912077028,1799, 'Saul',351, 'S',25.97,67,1);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1928326444294,1753, 'Dur',241, 'S',124.28,124,7);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1071726219618,1247, 'Rex',535, '3XL',71.2,38,3);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1325965649646,1338, 'Vassili',349, 'L',31.98,136,8);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1096386325683,1560, 'Bax',313, 'S',96.95,60,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1361292047181,1177, 'Kory',544, 'XL',81.13,93,5);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1638574985651,1791, 'Spenser',233, 'S',50.76,97,6);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1830059898780,1236, 'Olin',544, 'XL',38.81,107,4);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1946524471903,1818, 'Barret',422, '2XL',88.55,81,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1845370966868,1746, 'Ariel',689, '2XL',123.35,46,7);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1078797231742,1996, 'Davidde',108, 'L',140.7,59,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1018867192558,1071, 'Tito',875, 'S',111.76,50,6);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1493915231350,1037, 'Rochester',438, '2XL',126.02,148,4);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1196593251926,1601, 'Connie',489, 'M',147.77,25,3);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1017790501667,1154, 'Winslow',461, 'XL',34.37,129,2);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1087885453385,1335, 'Galvan',927, 'M',137.77,68,0);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1631145156265,1721, 'Lamar',662, 'S',88.76,69,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1277095474241,1510, 'Winfield',172, 'XL',98.55,148,4);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1135506221993,1752, 'Francklin',829, 'XL',83.46,112,2);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1535785164164,1024, 'Maje',950, 'XL',53.89,40,0);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1905384251997,1091, 'Son',718, 'S',128,129,7);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1130448009697,1424, 'Clevie',721, '2XL',129.9,78,5);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1793038757980,1760, 'Gregor',239, 'XS',46.64,131,8);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1982457792962,1917, 'Raynard',292, 'XL',80.33,47,3);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1373394330610,1320, 'Bobby',630, 'L',126.4,121,9);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1513032782567,1068, 'Welby',670, 'S',49.3,60,6);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1816543298301,1905, 'Norrie',554, 'L',148.35,120,5);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1938147911134,1283, 'Barr',733, 'M',120.48,82,5);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1904034858073,1790, 'Wheeler',901, 'XS',46.22,64,8);
insert into Product (SKU_Number,Supplier_Number, Product_Name, Product_Category, Size, Item_Cost_Price, Retail_Price, Quantity_in_Stock) values (1666962543157,1479, 'Johann',547, '3XL',86.78,36,3);



-- Insert Data into Supplier Table (using Insert Into statement)


insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1483,1.27594E+12, 'Gerhold-Christiansen', 'Kabarnet', '763 109 9458', 'lradbourn0@ning.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1150,1.5536E+12, 'Murazik-Ferry', 'Wonorejo', '417 308 9650', 'wingrey1@slideshare.net');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1281,1.54582E+12, 'Kohler, Effertz and Ledner', 'Muramvya', '950 966 5661', 'mbohden2@hhs.gov');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1317,1.47852E+12, 'Bednar-Nitzsche', 'Jiuguan', '746 727 8895', 'gaccomb3@bluehost.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1319,1.75694E+12, 'Wiegand-Swift', 'Tianmen', '899 854 4347', 'wjirka4@cmu.edu');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1432,1.34621E+12, 'Aufderhar Inc', 'Lashio', '183 641 2293', 'mdidello5@hao123.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1443,1.55159E+12, 'Dibbert Group', 'Novosheshminsk', '734 574 2153', 'scrathorne6@ocn.ne.jp');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1673,1.55438E+12, 'Jakubowski and Sons', 'Pengchang', '623 474 3453', 'bdiben7@rakuten.co.jp');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1941,1.35608E+12, 'Bednar Inc', 'Wangdain', '413 787 6301', 'naston8@ycombinator.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1587,1.69888E+12, 'Barton, Emard and Heidenreich', 'Babakankiray', '955 409 1872', 'gvanner9@aol.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1718,1.13768E+12, 'Wintheiser Group', 'Bel?Æn Gualcho', '439 400 6419', 'avandeveldea@cnbc.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1067,1.17841E+12, 'Smith-Blanda', 'Quint?˙es', '537 395 1255', 'emooringb@yelp.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1043,1.52259E+12, 'Wiegand Inc', 'Bayshint', '983 849 2547', 'tnettingc@com.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1912,1.29667E+12, 'Beatty, Johnston and Heathcote', 'Santa Monica', '882 266 4730', 'ajinkind@patch.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1300,1.514E+12, 'Hand-Reinger', 'Tiecun', '280 676 7194', 'ahessentalere@unblog.fr');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1354,1.95289E+12, 'Block Inc', 'Heiiyugou', '474 515 3362', 'ghairf@e-recht24.de');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1694,1.0445E+12, 'Kemmer and Sons', 'K?©benhavn', '752 771 7649', 'wdartnallg@mysql.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1910,1.12813E+12, 'Frami, Jenkins and Breitenberg', 'Ystad', '389 467 7836', 'gmcduallh@weebly.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1588,1.91974E+12, 'Rice-Keeling', 'Weligama', '688 160 4010', 'tfeldi@altervista.org');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1060,1.30463E+12, 'Leannon, Schmidt and Kulas', 'Shigutang', '372 746 4790', 'evarnamj@mit.edu');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1959,1.71014E+12, 'Raynor Group', 'Al Buq‘«ˇah', '330 287 6882', 'rhealeask@i2i.jp');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1603,1.8367E+12, 'Hilpert Group', 'Nanxia', '245 702 2517', 'csneddenl@princeton.edu');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1575,1.0694E+12, 'Berge-Koelpin', 'Daji', '849 507 5583', 'epagramm@histats.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1968,1.35222E+12, 'Pacocha Inc', '?˚ldziyt', '298 394 7648', 'fdemongen@accuweather.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1901,1.90905E+12, 'Wisozk and Sons', 'Penghu', '118 763 7625', 'dshervingtono@g.co');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1174,1.48942E+12, 'Wolf-Osinski', 'Bauchi', '142 840 2887', 'aziemp@cbc.ca');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1940,1.69422E+12, 'Cormier Inc', 'Logro??o', '878 578 2713', 'vrowaszkiewiczq@t-online.de');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1545,1.89453E+12, 'Weimann-Marquardt', 'Bobon', '568 527 9859', 'merrolr@boston.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1489,1.00154E+12, 'Reinger-Hammes', 'Santa Cruz de Barahona', '449 220 4081', 'gshotboults@unblog.fr');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1346,1.92728E+12, 'Lemke-Bernhard', 'Floirac', '218 157 7166', 'mdewit@wufoo.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1799,1.50491E+12, 'King, Schaefer and Howell', 'Tuntum', '554 261 0593', 'cbrentu@ox.ac.uk');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1753,1.92833E+12, 'Parisian-Reynolds', 'Tyachiv', '532 409 5629', 'mnerneyv@umich.edu');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1247,1.07173E+12, 'Walsh LLC', 'Casa Nova', '982 339 0918', 'krotherforthw@sciencedaily.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1338,1.32597E+12, 'Schowalter, Bogisich and Buckridge', 'Kozloduy', '936 299 3549', 'pbelshamx@creativecommons.org');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1560,1.09639E+12, 'Murray, Fadel and Leuschke', 'Golubinci', '224 782 1463', 'oyitzhaky@mail.ru');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1177,1.36129E+12, 'Abernathy, Kemmer and Streich', 'Itami', '627 900 0162', 'arivittz@ifeng.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1791,1.63857E+12, 'Lebsack, Bechtelar and Boyer', 'Jagistay', '836 599 2535', 'lramey10@clickbank.net');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1236,1.83006E+12, 'Lowe Group', 'Choroszcz', '860 245 9725', 'lhuster11@bloomberg.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1818,1.94652E+12, 'Cummerata, Predovic and Emard', 'S?©rv?Ìgur', '727 148 8732', 'hbrinded12@com.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1746,1.84537E+12, 'Hoeger-Hettinger', 'Kopidlno', '575 609 2896', 'cwaring13@wsj.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1996,1.0788E+12, 'Weimann-Robel', 'Ph?? Vang', '468 840 4849', 'mmckimmey14@godaddy.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1071,1.01887E+12, 'Bruen-Leuschke', 'Diekirch', '378 174 7371', 'mgrayham15@indiatimes.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1037,1.49392E+12, 'Wyman, Terry and Marquardt', 'Fuvahmulah', '949 887 2314', 'cbearne16@washingtonpost.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1601,1.19659E+12, 'Lueilwitz, Prosacco and Price', 'Daliu', '842 188 1448', 'gludgate17@pagesperso-orange.fr');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1154,1.01779E+12, 'Reichel, Waelchi and Rice', 'Dos Quebradas', '544 244 2614', 'walgy18@fda.gov');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1335,1.08789E+12, 'Goodwin, Rodriguez and Muller', 'Moca', '152 619 9201', 'dconring19@illinois.edu');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1721,1.63115E+12, 'Thiel, Mayert and Langosh', 'Marxog', '568 767 2519', 'bperton1a@nbcnews.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1510,1.2771E+12, 'Kreiger, Block and Cormier', 'Kampungraja', '714 658 1965', 'seich1b@hugedomains.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1752,1.13551E+12, 'Hirthe, Schmeler and Stehr', 'Tianxin', '636 889 5985', 'soran1c@businessinsider.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1024,1.53579E+12, 'Boyle, Erdman and McCullough', 'Tanabi', '406 577 7523', 'vsevery1d@1und1.de');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1091,1.90538E+12, 'Kovacek, Walker and Heidenreich', 'Richmond', '238 646 1564', 'dventum1e@hostgator.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1424,1.13045E+12, 'Rogahn LLC', 'Viana', '827 730 2754', 'kambrogetti1f@spiegel.de');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1760,1.79304E+12, 'Farrell and Sons', 'Igir-igir', '934 247 3988', 'mbellham1g@skype.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1917,1.98246E+12, 'Bartell-Hoeger', 'Billdal', '468 400 0003', 'khellicar1h@tmall.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1320,1.37339E+12, 'Borer Group', 'Baomin', '172 401 6969', 'ryeates1i@cnet.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1068,1.51303E+12, 'Ondricka-Wisoky', 'Polonnaruwa', '532 386 2955', 'crizzetti1j@newyorker.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1905,1.81654E+12, 'Stehr Inc', 'Ch?Ïfugaoka', '520 606 8956', 'emyles1k@netscape.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1283,1.93815E+12, 'McKenzie, Berge and Ratke', 'Bagay', '133 860 5351', 'ibudibent1l@guardian.co.uk');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1790,1.90403E+12, 'Bins-Wyman', 'Iradan', '347 446 5822', 'tspere1m@twitter.com');
insert into Supplier (Supplier_Number,SKU_Number, Supplier_Name, Supplier_Address, Supplier_Phone, Supplier_Email) values (1479,1.66696E+12, 'Beatty-Larson', 'Shunde', '665 305 6485', 'tgallichan1n@slideshare.net');



-- Insert Data into Delivery Table (using Insert Into statement)


insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (321586,2343732,208571, '7th Floor', '9 Declaration Circle', '42-826-4124', '516 798 2888');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (314020,2301885,412864, 'PO Box 63680', '56321 Mccormick Park', '86-509-5067', '207 946 3059');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (338402,2021015,225402, '10th Floor', '0844 Anderson Lane', '32-103-8699', '599 189 6008');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (337579,2153941,137986, 'Room 247', '63 Ilene Lane', '58-149-8308', '810 255 9283');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (316595,2505309,397051, 'Apt 623', '368 Erie Place', '21-436-7093', '185 623 5578');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (318708,2746271,214899, 'Apt 270', '99104 Northwestern Avenue', '82-393-1342', '713 969 7108');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (342179,2528188,481978, 'PO Box 93502', '336 Heath Point', '48-610-5265', '223 995 6360');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (305351,2800323,200604, 'PO Box 75249', '270 Division Road', '60-807-1998', '634 175 5779');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (348435,2119829,444263, 'PO Box 37424', '159 Anhalt Drive', '31-319-6618', '501 384 0055');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (345393,2681712,179975, 'Apt 900', '3 Clove Junction', '22-195-7177', '904 632 0037');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (318238,2193476,371141, 'Room 1093', '675 Corben Avenue', '02-435-0339', '907 585 0422');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (326381,2735950,495269, '20th Floor', '1 Russell Circle', '15-401-4948', '324 370 2791');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (320000,2441854,198570, 'Suite 46', '82 Barby Court', '36-938-5587', '370 378 5834');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (328772,2985213,352038, '7th Floor', '74760 Bultman Crossing', '94-541-7363', '226 686 1679');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (341256,2757817,336107, 'PO Box 46994', '5 Emmet Avenue', '98-801-6708', '922 180 0611');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (336711,2242997,316283, 'Apt 443', '121 Orin Pass', '84-661-3656', '454 982 5076');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (326589,2039710,126566, 'Suite 25', '377 Iowa Court', '43-177-9354', '815 193 5012');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (331675,2729200,457643, 'PO Box 98192', '2 4th Place', '69-479-3155', '532 864 7470');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (305801,2917364,325265, 'PO Box 34512', '8210 Division Road', '39-883-2512', '928 534 0698');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (304008,2705378,266162, '7th Floor', '85973 Bayside Court', '31-949-7512', '506 564 8168');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (336804,2900033,150244, 'PO Box 14268', '61866 Dennis Alley', '63-157-5180', '540 520 9797');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (315809,2431887,471520, 'Suite 48', '97 Carioca Way', '45-699-1217', '542 518 4642');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (340171,2408710,102389, '20th Floor', '21933 Bluestem Court', '76-591-0312', '859 982 8273');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (326763,2304771,239806, 'Apt 859', '5381 Michigan Court', '55-925-7228', '765 520 0775');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (332429,2970455,366817, 'Apt 942', '0 Pleasure Junction', '01-631-7726', '578 421 6959');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (346021,2372617,281880, 'PO Box 36659', '6244 Sherman Alley', '12-917-9403', '349 641 2603');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (325960,2799640,173243, 'PO Box 67418', '51 Holmberg Alley', '05-197-8095', '217 129 7742');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (332040,2332372,346178, 'Apt 114', '14557 Lyons Terrace', '25-794-0865', '572 567 2102');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (313752,2163417,412454, '8th Floor', '8067 Meadow Vale Avenue', '34-731-8002', '226 520 1529');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (305602,2522142,289252, 'Room 604', '92472 Sauthoff Court', '63-659-9594', '375 402 8110');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (310064,2458414,404991, 'Apt 1968', '7895 Roxbury Road', '02-205-2224', '354 781 4300');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (318773,2732050,126960, 'Suite 83', '2058 Express Road', '20-970-8924', '700 869 2875');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (338289,2404464,360392, 'PO Box 80650', '68 Rutledge Pass', '81-732-8949', '299 911 4694');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (327696,2487310,143421, 'PO Box 1819', '78 Loeprich Place', '85-688-6020', '113 768 0466');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (306158,2256870,271294, 'Apt 379', '1417 Lyons Alley', '19-310-8526', '702 746 7079');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (336119,2861376,204661, 'Suite 87', '94 Kinsman Park', '03-381-4231', '563 230 8936');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (315325,2778318,103654, 'Suite 50', '04 Sunbrook Plaza', '60-614-2541', '510 741 9562');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (309205,2887741,166193, 'Apt 215', '5 Stone Corner Parkway', '91-267-4693', '437 895 7051');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (333006,2942720,254549, '16th Floor', '5105 Kinsman Center', '43-268-6975', '637 911 7083');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (315878,2490992,383724, 'Room 1984', '4134 Tomscot Crossing', '80-717-7943', '484 796 6585');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (348298,2646395,141382, 'Room 1159', '2 Stephen Trail', '10-758-6295', '153 293 3228');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (300561,2391016,332284, 'Room 1491', '68641 Kingsford Park', '83-699-0678', '944 315 1908');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (301471,2375964,315644, 'Apt 240', '95 Corscot Point', '63-044-5114', '571 660 7991');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (303079,2328074,149282, 'Room 618', '98 Sunfield Hill', '64-827-9593', '201 987 2107');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (330720,2004447,434955, 'Room 524', '15 Katie Center', '81-661-7271', '173 458 9315');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (343852,2275399,152488, 'PO Box 41852', '273 Porter Alley', '65-565-3420', '484 201 0426');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (316036,2055000,157586, 'PO Box 72339', '02 Pond Lane', '67-311-9902', '889 945 2895');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (312203,2366996,466519, 'Apt 1550', '09967 Loeprich Place', '56-744-0477', '234 572 0185');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (340091,2757066,491500, '1st Floor', '6 Petterle Road', '35-175-1226', '454 535 0106');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (340053,2558941,463256, 'Room 1970', '59 3rd Avenue', '96-088-8174', '847 193 3172');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (331139,2485214,279315, 'PO Box 79214', '219 Lien Trail', '83-626-3446', '107 820 3168');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (326292,2546767,313839, '5th Floor', '8705 Scoville Drive', '35-283-5028', '933 847 1678');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (309704,2162630,197175, 'Room 299', '6 Darwin Street', '58-574-8127', '789 344 9507');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (334825,2984879,448728, 'Apt 1631', '23751 Mayer Hill', '37-252-7033', '254 619 1539');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (343743,2733661,485845, 'PO Box 54852', '789 Oak Valley Plaza', '40-927-7530', '695 197 8282');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (315612,2989269,295218, 'Room 1556', '242 Burrows Way', '26-853-0501', '863 413 3470');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (304451,2146491,298654, '8th Floor', '87224 Shoshone Point', '68-734-7856', '104 409 4679');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (339417,2317021,382332, 'Room 100', '92948 Anderson Alley', '12-347-0594', '534 834 1374');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (349864,2920041,356276, 'Apt 205', '8 Old Shore Hill', '67-705-7004', '301 998 0840');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (335301,2479844,426872, 'Room 941', '800 Mccormick Center', '92-864-9173', '846 253 5811');
insert into Delivery (Dispatch_Note_Number,Transaction_Number,Customer_Number, Customer_Delivery_Address_1, Customer_Delivery_Address_2, Customer_Delivery_Postcode, Customer_Delivery_Phone) values (344672,2232413,101750, 'Suite 33', '69 Golden Leaf Pass', '71-204-3785', '651 432 8127');


-- Insert Data into Email Table (using Insert Into statement)


insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('30734972-1880-407d-b943-5cac75140029', 'iakker0@zdnet.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('3c4a8f11-d4d0-4d5f-9ae5-07dba3410f80', 'nmarre1@blogtalkradio.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('a071d643-91be-4c72-9c08-9cdef14b2996', 'gfratczak2@un.org');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('7c648938-298b-41dc-9f8c-ed5bd8813aae', 'akief3@theatlantic.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('b32534f2-31cc-48fe-be96-02c60ae1000f', 'lmccoid4@prweb.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('6cae5626-0ea3-475e-a8c8-7e72e827e094', 'kwethey5@weibo.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('4da910fa-41bd-42d8-a769-6c98980ba207', 'hhesse6@state.tx.us');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('460fb7d7-f958-4128-8ccb-7ad45ae7e625', 'ejubert7@tiny.cc');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('0111d297-1ad3-4886-a688-a21df63411a4', 'mchrystal8@delicious.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('54313f15-b541-4cb1-ae5e-4ce12a634465', 'ajoontjes9@statcounter.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('e3e8bb1d-6d59-4c29-9d32-ff11583a45ba', 'ajutsona@ucoz.ru');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('2a4df28f-9e75-4ca6-bab1-130825cb4556', 'gsimpkissb@huffingtonpost.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('add7cb02-1157-4a20-bc2c-4a5be46d1d56', 'ndearthc@si.edu');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('77e9697e-c1dd-41b9-b785-d8af4a284e75', 'atezured@economist.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('63043f57-3377-437f-8ba8-b390416ab884', 'fnorawaye@examiner.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('5f656d00-be5d-4b0f-bf18-4c486213c613', 'jbreadonf@chron.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('94b577da-ad45-4f25-b151-b5665c6e571b', 'cfraneg@etsy.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('27860c62-5b76-479f-ae07-e8b77b3713e0', 'fsturrh@mlb.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('40c78eab-4639-4bf5-8699-0e7646b173ae', 'spesi@multiply.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('e5b7d109-ca32-4234-8317-4e5b2851f052', 'amoyserj@storify.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('7acde47c-3882-48a9-84a8-7f6772931772', 'mgysek@unc.edu');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('134d25dd-8757-4a18-8fd6-1ca641f49cf8', 'krockhalll@qq.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('6e7d624a-23b4-4a4f-a320-6f93e62def26', 'rrafflesm@discuz.net');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('dc3e8ac8-ac5b-4bb9-9557-a904d45e6ce4', 'rbingalln@w3.org');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('0a215108-ae65-438b-89a4-56166922c640', 'mbausero@patch.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('d773eef8-5c68-4bb4-b327-2c480ae614af', 'pdryburghp@zdnet.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('e43aa2c6-8be6-4dde-8a5e-0614dbe32935', 'aschoolcroftq@bluehost.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('e6f77ad7-1ce6-404f-bd2a-bf0b507aee19', 'mcoolahanr@yellowbook.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('5b137670-c123-462e-8104-492a02a60404', 'kbreedes@icq.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('c65379c5-4b1a-410d-8816-2d2d91b6a06f', 'evandervliest@wsj.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('3e2e84d8-f039-465a-a3b4-f6f935cb93c9', 'jcarissu@posterous.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('7d0be9dd-3b08-4713-8ef0-cc8f1da0bae5', 'bupsonv@answers.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('a6747414-ad1c-4da3-bc74-dfcf405af60f', 'skremerw@seesaa.net');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('553678d2-81ab-4078-84a3-149d6c1f9816', 'glampex@hibu.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('0ed74d84-0e76-4390-9bd5-31355d14b78c', 'rmortelly@state.tx.us');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('27f5cad7-f261-4598-aa68-62a017253c54', 'apurnellz@illinois.edu');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('4a364a2b-2a51-4ffb-a27a-ffc405bbdda6', 'blidyard10@newsvine.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('8d545db2-3f41-473f-b7ab-2010b571ff79', 'brobeiro11@wired.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('a1b9877c-4fdd-4108-b113-570ac57b92b9', 'kmapston12@instagram.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('e29a4c58-c1ba-41bc-8438-de9381a9433e', 'lwhitloe13@wsj.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('3cb3f26e-86fb-48d6-9815-52c483fb46dd', 'jveryard14@people.com.cn');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('69e98c04-00ef-4cf2-9bb5-a1749cd9612c', 'hgolsworthy15@unblog.fr');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('adb98a17-4348-442d-a6ef-31adec3aa3df', 'jraisbeck16@photobucket.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('7305b533-d734-4d3d-9690-9722b519a1fa', 'jframmingham17@mashable.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('cf5b17f1-caf0-4f87-a3c8-5bdcd04fcbe3', 'wregus18@shinystat.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('a2773f52-41d7-4044-a4e1-4f39c32f5dba', 'gbroggelli19@com.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('009fa6f1-1e9b-4504-8942-616cd0081ab4', 'kbarsam1a@diigo.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('e141fa40-461c-49f8-844a-d6c581d3d2fc', 'fwillcox1b@smh.com.au');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('f80dd53a-78cd-4d7b-aa7b-085c5915375b', 'bbohlin1c@cbc.ca');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('061eca2f-5a52-4484-8ff4-4fa618393db3', 'myuryshev1d@deliciousdays.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('0245ddbd-b442-4c42-9d78-d1f34bf178a7', 'egrzelczyk1e@123-reg.co.uk');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('757e91cb-5799-4d06-9dcf-f95faeb8d3b9', 'wgingold1f@cyberchimps.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('1f50bf58-13d5-4807-8a41-3968818e3ba2', 'rgarrood1g@parallels.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('014253a7-f076-4923-8838-6f7bc567a29d', 'dpuleston1h@wunderground.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('d53ba89d-737a-4245-abff-110e34eaba07', 'hmacane1i@photobucket.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('d45b3395-2d5f-4a90-8805-979e42a000b7', 'tbrazener1j@phpbb.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('98c9d783-e142-408b-9ceb-0e0e5bf33a14', 'kfantham1k@state.gov');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('50f18e8e-1a2a-4035-8e09-80e834f27b63', 'mshearn1l@craigslist.org');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('100a4be1-b274-4c80-a4d7-931d97ef456b', 'hcrank1m@live.com');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('85e1044e-58ca-45be-9af4-e58afe7b94b2', 'obetteridge1n@joomla.org');
insert into Email (Email_Newsletter_ID,Customer_Billing_Email) values ('ec733458-2f9f-453e-8ada-627ee746eb7b', 'gguwer1o@nasa.gov');




-- Part 3: Write SQL Statements to answer the following queries - 

-- 1. Show all the details of the products that have a price greater then 100
SELECT *
FROM Product
WHERE Retail_Price > 100;

-- 2. Show all products along with the supplier detail who supplied the products.
SELECT Product.SKU_Number, 
Product.Product_Name, 
Product.Retail_Price, 
Supplier.Supplier_Number, 
Supplier.Supplier_Name, 
Supplier.Supplier_Email
FROM Product
RIGHT JOIN Supplier
ON Product.Supplier_Number = Supplier.Supplier_Number;

/* 3. Create a stored procedure that takes the start and end dates of the sales and display
 all the sales transactionsbetween the start and the end dates. */

DELIMITER $$
CREATE PROCEDURE SalesForPeriod(IN StartDate DATE, IN EndDate DATE)
BEGIN
SELECT * FROM Transact
WHERE Date_of_Transaction BETWEEN StartDate AND EndDate;

END$$
DELIMITER ;

CALL SalesForPeriod('2023/06/01','2023/12/31');



/*4. Create a view that shows the total number of items a customer buys from the business in October 2023 along with 
the total price (use group by) */

CREATE VIEW Customer_Sales_Oct AS
SELECT c.Customer_Number, 
SUM(t.Quantity_Sold) AS Total_Qty_of_Items_Sold,
SUM(t.Total_Transaction_Value) AS Total_Retail_Value
FROM Customer c
JOIN Transact t ON  c.Transaction_Number = t.Transaction_Number
WHERE t.Date_of_Transaction >= '2023/10/01' AND t.Date_of_Transaction < '2023/11/01'
GROUP BY c.Customer_Number;

SELECT * FROM Customer_Sales_Oct;

-- 5. Create a trigger that adjusts the stock level every time a product is sold.

DELIMITER $$
CREATE TRIGGER Update_Quantity_in_Stock
AFTER INSERT ON TRANSACT
FOR EACH ROW
BEGIN
UPDATE Product
SET Quantity_in_Stock = Quantity_In_Stock - NEW.Quantity_Sold
WHERE SKU_Number = NEW.SKU_Number;
END$$
DELIMITER ; 

SHOW TRIGGERS;

/*6. Create a query to view the annual sales over the last 12 months of business showing the total number of products 
sold and the total price sold every month (use a group by with roll-up). */

SELECT
YEAR(Date_of_Transaction) AS YEAR,
MONTH(Date_of_Transaction) AS MONTH,
SUM(Quantity_Sold) AS Total_Products_Sold,
SUM(Total_Transaction_Value) AS Total_Sales
FROM Transact
WHERE Date_of_Transaction >= DATE_ADD(('2023/01/01'), INTERVAL -12 MONTH)
GROUP BY
YEAR(Date_of_Transaction), MONTH(Date_of_Transaction) WITH ROLLUP;


-- 7. Display the growth in sales/services (as a percentage) for your business, from the 1st month of opening until now. Use lag.
SELECT 
    DATE_FORMAT(STR_TO_DATE(Date_of_Transaction, '%Y/%m/%d'), '%Y-%m') AS Month, 
    Total_Transaction_Value, 
    LAG(Total_Transaction_Value) 
    OVER (ORDER BY STR_TO_DATE(Date_of_Transaction, '%Y/%m/%d')) AS Prev_Total_Transaction_Value, 
    ((Total_Transaction_Value - LAG(Total_Transaction_Value) 
    OVER (ORDER BY STR_TO_DATE(Date_of_Transaction, '%Y/%m/%d'))) / LAG(Total_Transaction_Value) 
    OVER (ORDER BY STR_TO_DATE(Date_of_Transaction, '%Y/%m/%d'))) * 100 AS Growth_Rate
FROM Transact
ORDER BY STR_TO_DATE(Date_of_Transaction, '%Y/%m/%d');

-- 8. Delete all customers who never buy a product from the business.alter

DELETE FROM customer
WHERE Customer_Number NOT IN (SELECT DISTINCT Customer_Number FROM Transact);



