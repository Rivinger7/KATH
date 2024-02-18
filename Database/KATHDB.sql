
Create TABLE Book
(
  ISBN VARCHAR(15) NOT NULL,
  Price FLOAT NOT NULL,
  Title VARCHAR(100) NOT NULL,
  Category VARCHAR(100) NOT NULL,
  Author VARCHAR(100) NOT NULL,
  Publisher VARCHAR(100) NOT NULL,
  Year_of_Publication DATE NOT NULL,
  Quantity INT NOT NULL,
  Description VARCHAR(100) NOT NULL,
  Rate FLOAT NOT NULL,
  Review_Count INT NOT NULL,
  Sold INT NOT NULL,
  PRIMARY KEY (ISBN)
);

Create TABLE [User]
(
  User_ID VARCHAR(15) NOT NULL,
  First_Name VARCHAR(100) NOT NULL,
  Last_Name VARCHAR(100) NOT NULL,
  username VARCHAR(100) NOT NULL,
  passwordHash VARCHAR(255) NOT NULL,
  City VARCHAR(50),
  House_Number VARCHAR(50),
  District VARCHAR(50),
  Street VARCHAR(50),
  Ward VARCHAR(50),
  Phone_Number VARCHAR(50) NOT NULL,
  Email VARCHAR(50),
  Birthday DATE,
  Role INT NOT NULL,
  PRIMARY KEY (User_ID),
  UNIQUE (username),
  UNIQUE (passwordHash)
);

CREATE TABLE [Order]
(
  Order_ID VARCHAR(15) NOT NULL,
  Date DATE NOT NULL,
  Shipping_Address VARCHAR(100) NOT NULL,
  Total_Amount FLOAT NOT NULL,
  Total_Quantity INT NOT NULL,
  User_ID VARCHAR(15) NOT NULL,
  PRIMARY KEY (Order_ID),
  FOREIGN KEY (User_ID) REFERENCES [User](User_ID)
);

CREATE TABLE Order_Detail
(
  Unit_Quantity INT NOT NULL,
  Unit_Price FLOAT NOT NULL,
  ISBN VARCHAR(15) NOT NULL,
  Order_ID VARCHAR(15) NOT NULL,
  PRIMARY KEY (ISBN, Order_ID),
  FOREIGN KEY (ISBN) REFERENCES Book(ISBN),
  FOREIGN KEY (Order_ID) REFERENCES [Order](Order_ID)
);
