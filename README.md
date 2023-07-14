# SQL-Project-1

This was a project I created using MySql for the DataBases for Analytics Module for my Higher Diploma in Data Analytics. I achieved a grade of 79% for this assignment.

The background of the project is as follows:

In this project, students are required to choose an online retail business that sells products to its customers. The retail business should register information about the products it sells, the details of its customers including their billing and delivery address and the product suppliers. The business, at minimum should store information about the products(stock) it sells, the suppliers, the customers, the sales transactions. It is important to select a retail system you are familiar with and should consider a complex system which will allow you to generate detailed reports as described in Part 3 of this CA. 
 
Part 1: Conceptual Design 

1.	Describe/introduce the chosen retail business and its objectives.
   
2.	Identify the relevant entities of the business with their respective attributes, entity types and primary keys. You should include all the core entities of the business.

   
3.	Identify the relationships, cardinalities and participation constraints with supporting business rules and assumptions.
   
4.	Draw an ER diagram for the system depicting the entities, relationships, cardinalities, participations using your preferred ERD notation.
   
5.	Convert the entities in the conceptual design into a logical table. Use the following template to identify the tables. Make sure that the tables are in a 3rd normal form.
    

Part 2: Logical and physical design 

1.	Create the corresponding database using DDL 
2.	Create all the necessary tables identified above using DDL
3.	Populate your tables with some data using DML (insert into statement)
4.	Populate your database with DML insert statements OR using a large data set representing a sample one-year transaction (01/01/2023 - 31/12/2023) on each table, using online data generators such as Mockaroo or generate data to generate synthetic data.


Part 3: Write SQL Statements to answer the following queries - 

1.	Show all the details of the products that have a price greater than 100.
   
2.	Show all the products along with the supplier detail who supplied the products.
   
3.	Create a stored procedure that takes the start and end dates of the sales and display all the sales transactions between the start and the end dates.
	
4.	Create a view that shows the total number of items a customer buys from the business in October 2023 along with the total price (use group by)
   
5.	Create a trigger that adjusts the stock level every time a product is sold.
    
6.	Create a query to view the annual sales over the last 12 months of the business showing the total number of products sold and the total price sold every month (use A group by with roll-up)
    
7.	Display the growth in sales/services (as a percentage) for your business, from the 1st month of opening until now.
    
8.	Delete all customers who never buy a product from the business.

