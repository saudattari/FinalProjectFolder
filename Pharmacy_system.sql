----CREATE DATABASE Pharmacy_System;

USE Pharmacy_System;

--CREATE TABLE Customer(
--Customer_ID INT PRIMARY KEY IDENTITY(1,1),
--Customer_Name VARCHAR(100) NOT NULL,
--);

--CREATE TABLE Prescription(
--Prescription_ID INT PRIMARY KEY IDENTITY(1,1),
--Uploading_Date DATE NOT NULL,
--Prescriber_Name VARCHAR(70) NOT NULL,
--Patient_Name VARCHAR(70) NOT NULL
----Customer_ID INT FOREIGN KEY REFERENCES Customer(Customer_ID) --FOREIGN KEY
--);

--CREATE TABLE Prescription_Details (
--  Prescription_ID INT FOREIGN KEY REFERENCES Prescription(Prescription_ID),
--  Medicines_ID INT FOREIGN KEY REFERENCES Medicines(Medicines_ID),
--  Medicine_Quantity INT NOT NULL,
--  Dosage_Form VARCHAR(30) NOT NULL,
--  Dosage_Note VARCHAR(120) NOT NULL
--);

--CREATE TABLE Pharmacist(
--Pharmacist_ID INT PRIMARY KEY IDENTITY(1,1),
--Pharmacist_Name VARCHAR(100) NOT NULL,
--DOB INT NOT NULL,
--Email VARCHAR(50) NOT NULL,
--Phone_No VARCHAR(20) NOT NULL,
--Pharmacist_Joining_Date DATE NOT NULL
--);


--CREATE TABLE Medicines(
--Medicines_ID INT PRIMARY KEY IDENTITY(1,1),
--Medicines_Name VARCHAR(70) NOT NULL
--);

--CREATE TABLE Medicines_Details(
--Medicines_ID INT FOREIGN KEY REFERENCES Medicines(Medicines_ID),
--Medicines_Qauntity INT NOT NULL,
--Medicines_Price INT NOT NULL, --price per unit
--Dosage_Form VARCHAR(30) NOT NULL,
--ExpiryDate DATE NOT NULL
--);





--CREATE TABLE Users(
--UserName VARCHAR(20) PRIMARY KEY ,
--Users_FullName VARCHAR(60) NOT NULL,
--Users_Role VARCHAR(20) NOT NULL,
--Registration_Date DATE NOT NULL,
--Last_LoggedIn DATE NOT NULL
--);

--CREATE TABLE Passwords(
--UserName VARCHAR(20) FOREIGN KEY REFERENCES Users(UserName),
--User_Passwrod VARCHAR(20) NOT NULL
--);

--CREATE TABLE OrderDetail(
--OrderDetail_ID INT PRIMARY KEY IDENTITY(1,1),
--Order_Quantity INT NOT NULL,
--Order_Price INT NOT NULL,
--Orders_ID INT FOREIGN KEY REFERENCES Orders(Orders_ID),
--Medicines_ID INT FOREIGN KEY REFERENCES Medicines(Medicines_ID),
--Prescription_ID INT FOREIGN KEY REFERENCES Prescription(Prescription_ID)
--);

--CREATE TABLE RandomOrder(
--RandomOrder_ID INT PRIMARY KEY IDENTITY(1,1),
--Medicine_Name VARCHAR(70) NOT NULL,
--Medicine_Price INT NOT NULL,
--Medicine_DosageForm VARCHAR(70) NOT NULL,
--Medicine_Quantity INT NOT NULL
--);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
	Total_Bill DECIMAL(10, 2),
    ReceivedAmount DECIMAL(10, 2),
    --PaidAmount DECIMAL(10, 2),
    Dues DECIMAL(10, 2),
    PaymentDate DATE,
    Orders_ID INT FOREIGN KEY REFERENCES Orders(Orders_ID)
);