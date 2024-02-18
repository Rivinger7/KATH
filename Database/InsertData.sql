INSERT INTO Book (ISBN, Price, Title, Category, Author, Publisher, Year_of_Publication, Quantity, Description, Rate, Review_Count, Sold)
VALUES ('9783161484100', 29.99, 'The Great Gatsby', 'Fiction', 'F. Scott Fitzgerald', 'Scribner', '1925-04-10', 100, 'The Great Gatsby is a 1925 novel by American writer F. Scott Fitzgerald.', 4.5, 500, 200),
       ('9780140283292', 19.99, 'To Kill a Mockingbird', 'Fiction', 'Harper Lee', 'Harper Perennial Modern Classics', '1960-07-11', 150, 'To Kill a Mockingbird is a novel by Harper Lee published in 1960.', 4.7, 700, 300),
       ('9781400031346', 12.99, '1984', 'Fiction', 'George Orwell', 'Signet Classic', '1949-06-08', 200, '1984 is a dystopian social science fiction novel by English novelist George Orwell.', 4.8, 800, 400);

INSERT INTO [User] (User_ID, First_Name, Last_Name, username, passwordHash, City, House_Number, District, Street, Ward, Phone_Number, Email, Birthday, Role)
VALUES ('user123', 'John', 'Doe', 'a', '12345', 'New York', '123', 'Manhattan', 'Broadway', 'Upper West Side', 123456789, 'johndoe@example.com', '1990-01-01', 0),
       ('user456', 'Jane', 'Doe', 'janedoe', 'hashed_password', 'Los Angeles', '456', 'Hollywood', 'Sunset Boulevard', 'Beverly Hills', 987654321, 'janedoe@example.com', '1995-05-05', 1);

INSERT INTO [Order] (Order_ID, Date, Shipping_Address, Total_Amount, Total_Quantity, User_ID)
VALUES ('order001', '2024-02-15', '123 Broadway, New York', 59.97, 3, 'user123'),
       ('order002', '2024-02-16', '456 Sunset Boulevard, Los Angeles', 39.98, 2, 'user456');

INSERT INTO Order_Detail (Unit_Quantity, Unit_Price, ISBN, Order_ID)
VALUES (1, 29.99, '9783161484100', 'order001'),
       (2, 19.99, '9780140283292', 'order001'),
       (1, 12.99, '9781400031346', 'order002');
