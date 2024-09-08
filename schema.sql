CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(15),
    MembershipDate DATE
);

CREATE TABLE Manga (
    MangaID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    PublishedYear YEAR
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(50),
    HireDate DATE
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    MangaID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (MangaID) REFERENCES Manga(MangaID)
);

CREATE TABLE Reviews (
    ReviewID INT PRIMARY KEY,
    CustomerID INT,
    MangaID INT,
    ReviewDate DATE,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (MangaID) REFERENCES Manga(MangaID)
);
-- Inserting Customers
INSERT INTO Customers (CustomerID, Name, Email, PhoneNumber, MembershipDate) VALUES 
(1, 'Becki Cellier', 'bcellier0@yandex.ru', '4769623771', '2023-07-05'),
(2, 'Lemmy Cotesford', 'lcotesford1@squarespace.com', '4976852776', '2021-01-18'),
(3, 'Cleve Hanlon', 'chanlon2@com.com', '7126269536', '2023-09-29'),
(4, 'Aloisia Kirdsch', 'akirdsch3@cisco.com', '7238629321', '2022-06-26'),
(5, 'Merwin Geldard', 'mgeldard4@google.de', '5183055025', '2023-11-09');

-- Inserting Manga
INSERT INTO Manga (MangaID, Title, Author, Genre, PublishedYear) VALUES 
('1', 'Naruto', 'Masashi Kishimoto', 'Action', 1999),
('2', 'One Piece', 'Eiichiro Oda', 'Adventure', 1997),
('3', 'Hunter x Hunter', 'Yoshihiro Togashi', 'Fantasy', 1997),
('4', 'Fushigi yuugi', 'Yuu Watase', 'Historical', 1995),
('5', 'Sword Art Online', 'Reki Kawahara', 'Science Fiction', 2012);

-- Inserting Staff
INSERT INTO Staff (StaffID, Name, Position, HireDate) VALUES 
(1, 'Jane Smith', 'Barista', '2024-01-15'),
(2, 'Krista Hurndall', 'Waiter', '2021-06-15'),
(3, 'Jena Senechell', 'Manager', '2019-07-20'),
(4, 'Judd Maciaszczyk', 'Cashier', '2022-04-30'),
(5, 'Farly McCart', 'House Keeper', '2022-10-24');

-- Inserting Orders
INSERT INTO Orders (OrderID, CustomerID, MangaID, OrderDate, Quantity) VALUES
(1, 1, 4, '2024-09-05', 2),
(2, 2, 5, '2023-09-26', 6),
(3, 3, 3, '2021-12-13', 5),
(4, 4, 1, '2023-12-07', 7),
(5, 5, 2, '2023-02-27', 6);

-- Inserting Reviews
INSERT INTO Reviews (ReviewID, CustomerID, MangaID, ReviewDate, Rating, Comment) VALUES 
(1, 1, 4, '2024-09-06', 5, 'Amazing manga! Loved the story and characters.'),
(2, 2, 5, '2023-09-26', 5, 'Very Interesting and Addictive.'),
(3, 3, 3, '2021-12-13', 5, 'Love It.'),
(4, 4, 1, '2023-12-07', 5, 'Very Good Ending.'),
(5, 5, 2, '2023-02-27', 4, 'Its Ok');
