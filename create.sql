CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS Salespersons;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Cars;

CREATE TABLE Cars (
    Numeric_ID INT AUTO_INCREMENT PRIMARY KEY,
    VIN INT,
    Manufacturer VARCHAR(100),
    Model VARCHAR(100),
    Year INT,
    Color VARCHAR(50)
    );
    
    CREATE TABLE Customers (
    CustomerID INT,
    Name VARCHAR(100),
    Numeric_ID INT AUTO_INCREMENT PRIMARY KEY,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    StateProvince VARCHAR(100),
    Country VARCHAR(100),
    ZipPostalCode VARCHAR(20)
);

CREATE TABLE Salespersons (
    StaffID INT,
    Name VARCHAR(100),
    Numeric_ID INT AUTO_INCREMENT PRIMARY KEY,
    Store VARCHAR(100)
    );
     
    CREATE TABLE Invoices (
    InvoiceNumber INT,
    Numeric_ID INT AUTO_INCREMENT PRIMARY KEY,
    Date DATE,
    Car VARCHAR(50),
    Customer INT,
    StaffID INT
    );