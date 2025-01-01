-- Create DATABASE
CREATE DATABASE IF NOT EXISTS Sales;
USE Sales;

-- Create TABLE
CREATE TABLE IF NOT EXISTS Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit VARCHAR(255),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued INT
);

CREATE TABLE IF NOT EXISTS Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255),
    Description TEXT
);

CREATE TABLE IF NOT EXISTS Supplier (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),
    ContactTitle VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(255),
    Fax VARCHAR(255),
    HomePage TEXT
);

CREATE TABLE IF NOT EXISTS Customer (
    CustomerID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),
    ContactTitle VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(255),
    Fax VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Companies (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),
    ContactTitle VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(255),
    Fax VARCHAR(255)
);


Create TABLE IF NOT EXISTS Employees (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(255),
    FirstName VARCHAR(255),
    Title VARCHAR(255),
    TitleOfCourtesy VARCHAR(255),
    BirthDate DATE,
    HireDate DATE,
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    HomePhone VARCHAR(255),
    Extension VARCHAR(255),
    Photo BLOB,
    Notes TEXT,
    ReportsTo INT,
    PhotoPath VARCHAR(255)
);

Create TABLE IF NOT EXISTS Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    RequiredDate DATE,
    ShippedDate DATE,
    ShipVia INT,
    Freight DECIMAL(10,2),
    ShipName VARCHAR(255),
    ShipAddress VARCHAR(255),
    ShipCity VARCHAR(255),
    ShipRegion VARCHAR(255),
    ShipPostalCode VARCHAR(255),
    ShipCountry VARCHAR(255)
);

Create TABLE IF NOT EXISTS OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(10,2)
);

Create TABLE IF NOT EXISTS Shippers (
    ShipperID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Phone VARCHAR(255)
);

create table if not exists Region (
    RegionID INT PRIMARY KEY,
    RegionDescription VARCHAR(255)
);

create table if not exists Territories (
    TerritoryID INT PRIMARY
);

create table if not exists EmployeeTerritories (
    EmployeeID INT,
    TerritoryID INT
);

create table if not exists CustomerCustomerDemo (
    CustomerID INT,
    CustomerTypeID INT
);

create table if not exists CustomerDemographics (
    CustomerTypeID INT PRIMARY KEY,
    CustomerDesc TEXT
);

create table if not exists Customers (
    CustomerID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),
    ContactTitle VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(255),
    Fax VARCHAR(255)
);

create table if not exists Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit VARCHAR(255),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,
    UnitsOnOrder INT,
    ReorderLevel INT,
    Discontinued INT
);

create table if not exists Suppliers (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),
    ContactTitle VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(255),
    Fax VARCHAR(255),
    HomePage TEXT
);

create table if not exists Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255),
    Description TEXT
);

create table if not exists Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    RequiredDate DATE,
    ShippedDate DATE,
    ShipVia INT,
    Freight DECIMAL(10,2),
    ShipName VARCHAR(255),
    ShipAddress VARCHAR(255),
    ShipCity VARCHAR(255),
    ShipRegion VARCHAR(255),
    ShipPostalCode VARCHAR(255),
    ShipCountry VARCHAR(255)
);


create table if not exists OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(10,2)
);


create table if not exists Shippers (
    ShipperID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Phone VARCHAR(255)
);

create table if not exists Region (
    RegionID INT PRIMARY KEY,
    RegionDescription VARCHAR(255)
);

create table if not exists Territories (
    TerritoryID INT PRIMARY KEY,
    TerritoryDescription VARCHAR(255),
    RegionID INT
);

create table if not exists EmployeeTerritories (
    EmployeeID INT,
    TerritoryID INT
);

create table if not exists CustomerCustomerDemo (
    CustomerID INT,
    CustomerTypeID INT
);

create table if not exists CustomerDemographics (
    CustomerTypeID INT PRIMARY KEY,
    CustomerDesc TEXT
);


create table if not exists Customers (  
    CustomerID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),
    ContactTitle VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    Phone VARCHAR(255),
    Fax VARCHAR(255)
);

create table if not exists Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit VARCHAR(255),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,   
);

create table if not exists Suppliers (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),   
    ContactTitle VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255),
    Region VARCHAR(255),        
);

create table if not exists Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255),
    Description TEXT
);

create table if not exists Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    RequiredDate DATE,
    ShippedDate DATE,
    ShipVia INT,
    Freight DECIMAL(10,2),   
); 

create table if not exists OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(10,2)
);

create table if not exists Shippers (
    ShipperID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Phone VARCHAR(255)
);

create table if not exists Region (
    RegionID INT PRIMARY KEY,
    RegionDescription VARCHAR(255)
);

create table if not exists Territories (   
    TerritoryID INT PRIMARY KEY,
    TerritoryDescription VARCHAR(255),    
);

create table if not exists EmployeeTerritories (
    EmployeeID INT,
    TerritoryID INT
);

create table if not exists CustomerCustomerDemo (
    CustomerID INT,
    CustomerTypeID INT
);

create table if not exists CustomerDemographics (
    CustomerTypeID INT PRIMARY KEY,
    CustomerDesc TEXT 
);

create table if not exists Customers (
    CustomerID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),   
);

create table if not exists Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit VARCHAR(255),
    UnitPrice DECIMAL(10,2),
    UnitsInStock INT,   
);

create table if not exists Suppliers (
    SupplierID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),   
);

create table if not exists Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255),
    Description TEXT
);

create table if not exists Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    RequiredDate DATE,
    ShippedDate DATE,
    ShipVia INT,
    Freight DECIMAL(10,2),   
);

create table if not exists OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    UnitPrice DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(10,2)
);

create table if not exists Shippers (
    ShipperID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Phone VARCHAR(255)
);

create table if not exists Region (
    RegionID INT PRIMARY KEY,
    RegionDescription VARCHAR(255)
);

create table if not exists Territories (   
    TerritoryID INT PRIMARY KEY,
    TerritoryDescription VARCHAR(255),    
);

create table if not exists EmployeeTerritories (
    EmployeeID INT,
    TerritoryID INT
);

create table if not exists CustomerCustomerDemo (
    CustomerID INT,
    CustomerTypeID INT
);

create table if not exists CustomerDemographics (
    CustomerTypeID INT PRIMARY KEY,
    CustomerDesc TEXT 
);

create table if not exists Customers (
    CustomerID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    ContactName VARCHAR(255),   
);

