Table Customers {
    CustomerID int [primary key]
    Name varchar
    Email varchar [unique]
    PhoneNumber varchar
    MembershipDate date
}

Table Manga {
    MangaID int [primary key]
    Title varchar
    Author varchar
    Genre varchar
    PublishedYear year
}

Table Staff {
    StaffID int [primary key]
    Name varchar
    Position varchar
    HireDate date
}

Table Orders {
    OrderID int [primary key]
    CustomerID int [ref: > Customers.CustomerID]
    MangaID int [ref: > Manga.MangaID]
    OrderDate date
    Quantity int
}

Table Reviews {
    ReviewID int [primary key]
    CustomerID int [ref: > Customers.CustomerID]
    MangaID int [ref: > Manga.MangaID]
    ReviewDate date
    Rating int
    Comment text
}
