-- Using WHERE
SELECT * 
FROM Manga
WHERE PublishedYear > 2000;

-- Using JOIN
SELECT Orders.OrderID, Customers.Name AS CustomerName, Manga.Title AS MangaTitle, Orders.OrderDate, Orders.Quantity
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Manga ON Orders.MangaID = Manga.MangaID;

-- Using GROUP BY 
SELECT Customers.Name AS CustomerName, SUM(Orders.Quantity) AS TotalQuantity
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.Name;

-- Using Aggregate Function (COUNT)
SELECT Manga.Title AS MangaTitle, COUNT(Reviews.ReviewID) AS ReviewCount
FROM Reviews
JOIN Manga ON Reviews.MangaID = Manga.MangaID
GROUP BY Manga.Title;

-- Using Aggregate Function (AVG) and GROUP BY
SELECT Manga.Title AS MangaTitle, AVG(Reviews.Rating) AS AverageRating
FROM Reviews
JOIN Manga ON Reviews.MangaID = Manga.MangaID
GROUP BY Manga.Title;

