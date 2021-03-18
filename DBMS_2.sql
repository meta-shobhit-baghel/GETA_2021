CREATE DATABASE STOREFRONT;
use STOREFRONT;



CREATE TABLE Customer (
  Customer_id INTEGER NOT NULL PRIMARY KEY,
  Customer_name VARCHAR(50),
  Contact VARCHAR(50) 
);



INSERT INTO Customer VALUES (1, 'Shobhit', '7895610449');
INSERT INTO Customer VALUES (2, 'Shubh'  , '7892155449');
INSERT INTO Customer VALUES (3, 'Amam'   , '7895111149');
INSERT INTO Customer VALUES (4, 'Deepak' , '6425610449');
INSERT INTO Customer VALUES (5, 'Komal'  , '5672610449');
INSERT INTO Customer VALUES (6, 'Ankit'  , '9853610449');
INSERT INTO Customer VALUES (7, 'Shivam'  , '9853618339');
INSERT INTO Customer VALUES (8, 'Yogesh'  , '9853634349');
INSERT INTO Customer VALUES (9, 'Satyam'  , '9853611149');
INSERT INTO Customer VALUES (10, 'Arjun'  , '9822220449');
INSERT INTO Customer VALUES (11, 'Karna'  , '9822220449');
INSERT INTO Customer VALUES (12, 'Raj'  , '9822220449');
INSERT INTO Customer VALUES (13, 'Tanmay'  , '9822220449');
INSERT INTO Customer VALUES (14, 'Utkarsh'  , '9822220449');
INSERT INTO Customer VALUES (15, 'Shruti'  , '9822220449');
INSERT INTO Customer VALUES (16, 'Tanya'  , '9822220449');
INSERT INTO Customer VALUES (17, 'Divya'  , '9822220449');
INSERT INTO Customer VALUES (18, 'Himanshu'  , '9822220449');
INSERT INTO Customer VALUES (19, 'Mohit'  , '9822220449');
INSERT INTO Customer VALUES (20, 'chirag'  , '9822220449');
  


CREATE TABLE Shipping_Address(
 Customer_id INTEGER NOT NULL ,
 Address VARCHAR(100) NOT NULL ,
 FOREIGN KEY(customer_id) REFERENCES Customer(Customer_id)
 );
 
 
INSERT INTO Shipping_Address VALUES (1, 'Lawyers Colony Agra');
INSERT INTO Shipping_Address VALUES (2, 'Kamla Nagar');
INSERT INTO Shipping_Address VALUES (3, 'Sikandra ');
INSERT INTO Shipping_Address VALUES (4, 'Bodla  road');
INSERT INTO Shipping_Address VALUES (5, 'Tajganj nagar');
INSERT INTO Shipping_Address VALUES (6, 'Rawat colony ');
INSERT INTO Shipping_Address VALUES (7, 'Arjun Nagar ');
INSERT INTO Shipping_Address VALUES (8, 'Defence Colony');
INSERT INTO Shipping_Address VALUES (9, 'Bodla road junction ');
INSERT INTO Shipping_Address VALUES (10, 'Firozabad ');
INSERT INTO Shipping_Address VALUES (11, 'Amarvihar');
INSERT INTO Shipping_Address VALUES (12, 'Jeevan Jyoti ');
INSERT INTO Shipping_Address VALUES (13, 'Taj Hotel');
INSERT INTO Shipping_Address VALUES (14, 'Khandari crossing ');
INSERT INTO Shipping_Address VALUES (15, 'ISBT');
INSERT INTO Shipping_Address VALUES (16, 'Madhu nagar ');
INSERT INTO Shipping_Address VALUES (17, 'Raja Mandi');
INSERT INTO Shipping_Address VALUES (18, 'Engineers colony');
INSERT INTO Shipping_Address VALUES (19, 'shahzabad');
INSERT INTO Shipping_Address VALUES (20, 'raipur');




CREATE TABLE Products (
 Product_id INTEGER  NOT NULL PRIMARY KEY,
 Product_name VARCHAR(100),
 Product_price INTEGER NOT NULL
 );


 
 
 
INSERT INTO Products VALUES (1,'Rice' ,150);
INSERT INTO Products VALUES (2,'Wheat',200);
INSERT INTO Products VALUES (3,'Oats', 400);
INSERT INTO Products VALUES (4,'Corn Flour',500);
INSERT INTO Products VALUES (5, 'toys',1200);
INSERT INTO Products VALUES (6,'shirts',1000);

ALTER TABLE Products ADD Images VARCHAR(30);


UPDATE Products 
 SET Product_name = 'Beeries' , Images = 'Image Available' WHERE Product_id = 1;
 
 UPDATE Products 
 SET Product_name = 'Banana' , Images = 'Image Available' WHERE Product_id = 2;
 
 UPDATE Products 
 SET Product_name = 'T-shirts' , Images = 'Image Not Available' WHERE Product_id = 3;
 
 UPDATE Products 
 SET Product_name = 'Gym wears' , Images = 'Image Available' WHERE Product_id = 4;
 
 UPDATE Products 
 SET Product_name = 'Pen' , Images = 'Image Not Available' WHERE Product_id = 5;
 
 UPDATE Products 
 SET Product_name = 'Samsung ' , Images = 'Image Not Available'WHERE Product_id = 6;
 

INSERT INTO Products VALUES (7,'Royal Stag',1500,'Image Available');
INSERT INTO Products VALUES (8,'Apples',1500,'Image Available');
INSERT INTO Products VALUES (9,'Oranges',2000,'Image Available');
INSERT INTO Products VALUES (10,'Pineapples',900,'Image Not Available');
INSERT INTO Products VALUES (11,'Strawberries',900,'Image Not Available');
INSERT INTO Products VALUES (12,'Tropicana Juice',900,'Image Available');
INSERT INTO Products VALUES (13,'Real Juice',900,'Image Not Available');
INSERT INTO Products VALUES (14,'Patanjali Juice',600,'Image Available');
INSERT INTO Products VALUES (15,'Black Pippers Drink',2000,'Image Available');
INSERT INTO Products VALUES (16,'Trousers Peter England',1200,'Image Not Available');
INSERT INTO Products VALUES (17,'Shirts Formals',1000,'Image Available');
INSERT INTO Products VALUES (18,'Shirts Casuals',500,'Image Not Available');
INSERT INTO Products VALUES (19,'Redmi',10000,'Image Available');
INSERT INTO Products VALUES (20,'MI',12000,'Image Available');





CREATE TABLE Your_orders (

  Order_id INTEGER NOT NULL PRIMARY KEY ,
  Order_date DATE,
  Customer_id INTEGER NOT NULL,
  Quantity Integer NOT NULL,
  Price INTEGER NOT NULL,
  FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id)
);



 
 
 
 
 
 
 INSERT INTO Your_orders VALUES(1,'2021-03-14',1,2,4000);
 INSERT INTO Your_orders VALUES(2,'2021-03-12',2,4,7000);
 INSERT INTO Your_orders VALUES(3,'2021-03-02',3,3,1500);
 INSERT INTO Your_orders VALUES(4,'2021-03-05',4,1,1000);
 INSERT INTO Your_orders VALUES(5,'2021-03-14',5,1,500);
 INSERT INTO Your_orders VALUES(6,'2021-02-14',6,3,3000);
 INSERT INTO Your_orders VALUES(7,'2021-02-15',7,4,4000);
 INSERT INTO Your_orders VALUES(8,'2021-02-19',8,6,7000);
 INSERT INTO Your_orders VALUES(9,'2021-02-22',9,2,1000);
 INSERT INTO Your_orders VALUES(10,'2021-02-20',10,1,2000);
 INSERT INTO Your_orders VALUES(11,'2021-02-25',10,1,2000);
 INSERT INTO Your_orders VALUES(12,'2021-02-26',10,1,2000);
 INSERT INTO Your_orders VALUES(13,'2021-02-27',10,1,2000);
 INSERT INTO Your_orders VALUES(14,'2021-03-01',10,1,2000);
 INSERT INTO Your_orders VALUES(15,'2021-03-05',10,1,2000);
 INSERT INTO Your_orders VALUES(16,'2021-01-20',10,1,2000);
 INSERT INTO Your_orders VALUES(17,'2021-01-14',10,1,2000);
 INSERT INTO Your_orders VALUES(18,'2021-02-28',10,1,2000);
 INSERT INTO Your_orders VALUES(19,'2021-02-27',10,1,2000);
 INSERT INTO Your_orders VALUES(20,'2021-03-02',10,1,2000);
 
 
 ALTER TABLE Your_orders ADD Product_id INTEGER NOT NULL;
 
 UPDATE Your_orders SET Product_id = 1 WHERE Order_id = 1;
 UPDATE Your_orders SET Product_id = 2 WHERE Order_id = 2;
 UPDATE Your_orders SET Product_id = 3 WHERE Order_id = 3;
 UPDATE Your_orders SET Product_id = 4 WHERE Order_id = 4;
 UPDATE Your_orders SET Product_id = 5 WHERE Order_id = 5;
 UPDATE Your_orders SET Product_id = 6 WHERE Order_id = 6;
 UPDATE Your_orders SET Product_id = 7 WHERE Order_id = 7;
 UPDATE Your_orders SET Product_id = 7 WHERE Order_id = 7;
 UPDATE Your_orders SET Product_id = 8 WHERE Order_id = 8;
 UPDATE Your_orders SET Product_id = 9 WHERE Order_id = 9;
 UPDATE Your_orders SET Product_id = 10 WHERE Order_id = 10;
 UPDATE Your_orders SET Product_id = 11 WHERE Order_id = 11;
 UPDATE Your_orders SET Product_id = 12 WHERE Order_id = 12;
 UPDATE Your_orders SET Product_id = 13 WHERE Order_id = 13;
 UPDATE Your_orders SET Product_id = 14 WHERE Order_id = 14;
 UPDATE Your_orders SET Product_id = 15 WHERE Order_id = 15;
 UPDATE Your_orders SET Product_id = 16 WHERE Order_id = 16;
 UPDATE Your_orders SET Product_id = 17 WHERE Order_id = 17;
 UPDATE Your_orders SET Product_id = 18 WHERE Order_id = 18;
  UPDATE Your_orders SET Product_id = 19 WHERE Order_id = 19;
  UPDATE Your_orders SET Product_id = 20 WHERE Order_id = 20;
 
 
 
 
 
 
 
 
 

CREATE TABLE Order_report(
 Order_id INTEGER NOT NULL,
 Status VARCHAR(10),
 Product_id INTEGER NOT NULL,
 
 FOREIGN KEY(Order_id) REFERENCES Your_orders(Order_id),
 FOREIGN KEY(Product_id) REFERENCES Products(Product_id)
);





INSERT INTO Order_report VALUES(1,'Confirmed',1);
INSERT INTO Order_report VALUES(2,'Shipped',2);
INSERT INTO Order_report VALUES(3,'Returned',3);
INSERT INTO Order_report VALUES(4,'Confirmed',4);
INSERT INTO Order_report VALUES(5,'Shipped',5);
INSERT INTO Order_report VALUES(6,'Cancel',6);
INSERT INTO Order_report VALUES(7,'Cancel',17);
INSERT INTO Order_report VALUES(8,'Shipped',8);
INSERT INTO Order_report VALUES(9,'Confirmed',9);
INSERT INTO Order_report VALUES(10,'Confirmed',10);
INSERT INTO Order_report VALUES(11,'Confirmed',11);
INSERT INTO Order_report VALUES(12,'Confirmed',12);
INSERT INTO Order_report VALUES(13,'Confirmed',13);
INSERT INTO Order_report VALUES(14,'Confirmed',14);
INSERT INTO Order_report VALUES(15,'Shipped',15);
INSERT INTO Order_report VALUES(16,'Confirmed',16);
INSERT INTO Order_report VALUES(17,'Confirmed',17);
INSERT INTO Order_report VALUES(18,'Cancelled',18);
INSERT INTO Order_report VALUES(19,'Cancelled',19);
INSERT INTO Order_report VALUES(20,'Confirmed',20);


CREATE TABLE Stock (
 Product_id Integer NOT NULL,
 Quantity_initially Integer NOT NULL,
 Quantity_left INTEGER NOT NULL,
 FOREIGN KEY(Product_id) REFERENCES Products(Product_id),
 date_of_added DATE
);

 
 
 SELECT * FROM Stock;
 
 INSERT INTO Stock VALUES(1,100,78,'2021-02-15');
 INSERT INTO Stock VALUES(2,100,51,'2021-02-12');
 INSERT INTO Stock VALUES(3,100,10,'2021-02-25');
 INSERT INTO Stock VALUES(4,100,20,'2021-03-15');
 INSERT INTO Stock VALUES(5,100,90,'2021-03-10');
 INSERT INTO Stock VALUES(6,100,5,'2021-02-28');
 INSERT INTO Stock VALUES(7,100,28,'2021-01-15');
 INSERT INTO Stock VALUES(8,100,50,'2021-03-10');
 INSERT INTO Stock VALUES(9,100,62,'2021-03-12');
 INSERT INTO Stock VALUES(10,100,71,'2021-02-17');
 INSERT INTO Stock VALUES(11,100,28,'2020-12-15');
 INSERT INTO Stock VALUES(12,100,57,'2020-12-17');
 INSERT INTO Stock VALUES(13,100,72,'2020-12-25');
 INSERT INTO Stock VALUES(14,100,90,'2020-12-05');
 INSERT INTO Stock VALUES(15,100,20,'2021-01-02');
 INSERT INTO Stock VALUES(16,100,33,'2021-01-30');
 INSERT INTO Stock VALUES(17,100,60,'2021-01-26');
 INSERT INTO Stock VALUES(18,100,15,'2021-01-01');
 INSERT INTO Stock VALUES(19,100,62,'2020-12-02');
 INSERT INTO Stock VALUES(20,100,70,'2021-02-15');
 
 
 

 UPDATE Stock 
  SET date_of_added = '2021-02-15' WHERE Product_id = 1;
  
UPDATE Stock 
  SET date_of_added = '2021-03-15' WHERE Product_id = 2;
  
UPDATE Stock 
  SET date_of_added = '2021-02-10' WHERE Product_id = 3;
  
UPDATE Stock 
  SET date_of_added = '2021-01-15' WHERE Product_id = 4;
  
UPDATE Stock 
  SET date_of_added = '2021-03-25' WHERE Product_id = 5;
  
UPDATE Stock 
  SET date_of_added = '2021-03-10' WHERE Product_id = 6;
  
UPDATE Stock 
  SET date_of_added = '2021-03-22' WHERE Product_id = 7;
  
UPDATE Stock 
  SET date_of_added = '2021-02-15' WHERE Product_id = 8;
  
UPDATE Stock 
  SET date_of_added = '2021-01-05' WHERE Product_id = 9;
  
 UPDATE Stock 
  SET date_of_added = '2021-02-15' WHERE Product_id = 10;
  
 UPDATE Stock 
  SET date_of_added = '2021-01-15' WHERE Product_id = 11;
  
 UPDATE Stock 
  SET date_of_added = '2021-02-15' WHERE Product_id = 12;
  
 UPDATE Stock 
  SET date_of_added = '2021-01-26' WHERE Product_id = 13;
  
 UPDATE Stock 
  SET date_of_added = '2020-12-15' WHERE Product_id = 14;
  
  UPDATE Stock 
  SET date_of_added = '2020-12-25' WHERE Product_id = 15;
  
 UPDATE Stock 
  SET date_of_added = '2021-02-15' WHERE Product_id = 16;
  
 UPDATE Stock 
  SET date_of_added = '2020-12-10' WHERE Product_id = 17;
  
 UPDATE Stock 
  SET date_of_added = '2020-12-01' WHERE Product_id = 18;
  
  UPDATE Stock 
  SET date_of_added = '2020-12-09' WHERE Product_id = 19;
  
 UPDATE Stock 
  SET date_of_added = '2021-03-20' WHERE Product_id = 20;
 
 
 
 CREATE TABLE Admin(
  Admin_name VARCHAR(30) NOT NULL ,
  Admin_password VARCHAR(30) NOT NULL 
 );

INSERT INTO Admin VALUES('admin',12345);
 
 
 CREATE TABLE Categories(
  Category_id Integer NOT NULL ,
  Category_name VARCHAR(30) NOT NULL,
  Product_id INTEGER NOT NULL ,
  FOREIGN KEY(Product_id) REFERENCES Products(Product_id)
 );
 
 
 
  
 INSERT INTO Categories VALUES(1,'Fruits',1);
 INSERT INTO Categories VALUES(1,'Fruits',2);
 INSERT INTO Categories VALUES(2,'Clothes',3);
 INSERT INTO Categories VALUES(2,'Clothes',4);
 INSERT INTO Categories VALUES(3,'Stationary',5);
 INSERT INTO Categories VALUES(3,'Stationary',6);
 INSERT INTO Categories VALUES(4,'Mobile Phones',7);
 INSERT INTO Categories VALUES(4,'Fruits',8);
 INSERT INTO Categories VALUES(5,'Clothes',9);
 INSERT INTO Categories VALUES(5,'Juices',10);
 INSERT INTO Categories VALUES(1,'Fruits',11);
 INSERT INTO Categories VALUES(1,'Fruits',12);
 INSERT INTO Categories VALUES(2,'Clothes',13);
 INSERT INTO Categories VALUES(2,'Clothes',14);
 INSERT INTO Categories VALUES(3,'Stationary',15);
 INSERT INTO Categories VALUES(3,'Stationary',16);
 INSERT INTO Categories VALUES(4,'Mobile Phones',17);
 INSERT INTO Categories VALUES(4,'Fruits',18);
 INSERT INTO Categories VALUES(5,'Clothes',19);
 INSERT INTO Categories VALUES(5,'Juices',20);
 
 
 
 
 
 
 
 
 /* ASSIGNMENT 1 
   Creating  All  Tables  And  Displaying  All  Tables
 */
 
 SHOW TABLES;
 SELECT * FROM Customer;
 SELECT * FROM Shipping_Address;
 SELECT * FROM Products;
 SELECT * FROM Stock;
 SELECT * FROM Categories;
 SELECT * FROM Admin;
 SELECT * FROM Your_orders;
 SELECT * FROM Order_report; 
 
 
 
 
 
 
 SELECT * FROM Products , Stock 
    WHERE Products.Product_id = (SELECT Product_id FROM Stock WHERE Stock < 50);
     
 
 
 
 /*Assignment 2 
 0. DATA  INSERTION  ALREADY  COMPLETED .
 1. DISPLAY  Id , Category , price of Products  that  are  active
 2. DISPLAY  products that  not  hve  images
 
 3. DISPLAY  PRODUCT  TITLE , PRICE WHICH  FALLS  INTO  PARTICULAR CATEGORY 
 4. QUANTITY IS UNDER 50
 */
 
 
  
 
 
 /* 1.  DISPLAYING  THE  STOCK  UNDER  50  PRODUCTS
 */
 
 select P.*, S.quantity_left from products P inner join Stock S 
         where S.quantity_left<50 and P.product_id=S.product_id;
         
 SELECT * FROM Products , Stock
    WHERE Stock.Quantity_left<50 AND Products.Product_id = Stock.Product_id;
    
    /* 2.  DISPLAYING  THE  ACTIVE  PRODUCTS OF  STOCK
    */
    
    SELECT * FROM Products , Stock , Categories 
      WHERE Stock.Quantity_left < 100 AND Products.Product_id = Stock.Product_id AND Categories.Category_id = Stock.Product_id;
      
    SELECT P.* , Y.Order_date FROM Products P inner join Your_orders Y
      WHERE  Y.Product_id = P.Product_id AND Y.Order_date>'2021-03-01';
      
      
      /* 3. Displaying  Products have  not  images 
      
        SELECT * FROM Products WHERE Images = 'Image Not Available';
      */
      
      /* 5. 
      
      /* 6. DISPLAY  PRODUCT  TITLE , PRICE WHICH  FALLS  INTO  PARTICULAR CATEGORY 
        */
        
	SELECT P.* , C.Category_name FROM Products P inner join Categories C
        WHERE C.Category_name = 'Fruits' AND C.Product_id = P.Product_id;
        
  
   
   /* 7 .Product  display  whose quantity is under 50 
   */
   
   select P.*, S.quantity_left from products P inner join Stock S 
         where S.quantity_left<50 and P.product_id=S.product_id;
         
         
		/*  *************  ASSIGNMENT 03  ****************
        
        */
      
      
      /* 1. DISPLAYING  LAST 20  ORDERS */
      
      SELECT Order_id , Order_date ,Price FROM  Your_orders LIMIT 20; 
      
      /* 2. 10 MOST  EXPENSIVE  ORDERS */
      SELECT * FROM Your_orders ORDER BY Price DESC LIMIT 10;
      
      /* 3. DISPLAY  ALL THE  ORDERS PLACED  MORE  THAN  10 DAYS AND  ITEMS
            NOT  SHIPPED
	  */
       
        SELECT Y.Order_id , Y.Order_date , O.Status FROM Your_orders Y inner join
            Order_report O WHERE Y.Order_date>'2021-03-05' AND Y.Order_id = O.Order_id AND O.Status = 'Shipped';
      
      
      /*4  DISPLAY  LIST  OF  SHOPPERS  WHICH HAVEN'T  ORDERED  SINCE 30DAYS
       */
       
       
       SELECT C.* FROM Customer C  inner join Your_orders Y
            WHERE Y.Order_date<'2021-02-01' AND Y.Customer_id = C.Customer_id;
        
	  
         
         
	  /* 5.  DISPLAY  SHOPPER  LIST  AND  ORDER IN  LAST 15 dAYS 
      */
      
       SELECT Order_id , Customer_id , Order_date FROM Your_orders WHERE Order_date > '2021-03-01';
       
       SELECT C.* , Y.Order_id FROM Customer C inner join Your_orders Y
             WHERE Y.order_date > '2021-03-01' AND Y.Customer_id = C.Customer_id;
             
       
      /* 6. DISPLAY  THE  STATUS  USING  oRDER ID 
       */
        SELECT order_id FROM order_report WHERE status = 'shipped';
       
      /* 7. DISPLAY  LIST  OF  ORDER  PLACED  DATE AND  FALL  BW 2000 TO 4000
      */
      
      SELECT Order_id,Order_date,Price FROM 
         Your_orders WHERE Price >3000 AND Price<8000;