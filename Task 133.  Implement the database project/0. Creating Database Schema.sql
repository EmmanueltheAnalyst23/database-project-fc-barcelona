-- Creating Database Schema:

CREATE DATABASE FCB_FinancialAnalysis;
USE FCB_FinancialAnalysis;

CREATE TABLE SponsorshipDeals (
    SponsorID INT PRIMARY KEY IDENTITY(1,1),
    SponsorName VARCHAR(100) NOT NULL,
    StartYear INT NOT NULL,
    EndYear INT NOT NULL,
    AnnualValue DECIMAL(15, 2) NOT NULL
);

CREATE TABLE Revenues (
    RevenueID INT PRIMARY KEY IDENTITY(1,1),
    Season VARCHAR(10) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Amount DECIMAL(15, 2) NOT NULL
);

CREATE TABLE Expenses (
    ExpenseID INT PRIMARY KEY IDENTITY(1,1),
    Season VARCHAR(10) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Amount DECIMAL(15, 2) NOT NULL
);

CREATE TABLE PlayerTransfers (
    TransferID INT PRIMARY KEY IDENTITY(1,1),
    PlayerName VARCHAR(100) NOT NULL,
    TransferType VARCHAR(10) CHECK (TransferType IN ('Purchase', 'Sale')) NOT NULL,
    TransferFee DECIMAL(15, 2) NOT NULL,
    Season VARCHAR(10) NOT NULL
);
