-- ComedyClub data mart written and developed by Wes Castillo
-- Submission Date - 2/12/2024

-- Create the data mart.

IF NOT EXISTS(SELECT * FROM sys.databases
	WHERE name = N'ComedyClubDM')
	CREATE DATABASE ComedyClubDM
GO
USE ComedyClubDM

-- Delete existing tables.

IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE name = N'FactSales'
       )
	DROP TABLE FactSales;

IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE name = N'DimShow' -- formerly product
       )
	DROP TABLE DimShow;

IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE name = N'DimComic' --formerly carpenter
       )
	DROP TABLE DimComic;

IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE name = N'DimCustomer'
       )
	DROP TABLE DimCustomer;

IF EXISTS(
	SELECT *
	FROM sys.tables
	WHERE name = N'DimDate'
       )
	DROP TABLE DimDate;

-- Create the tables.

CREATE TABLE DimDate
	(
	Date_SK				INT PRIMARY KEY, 
	Date				DATE,
	FullDate			NCHAR(10),-- Date in MM-dd-yyyy format
	DayOfMonth			INT, -- Field will hold day number of Month
	DayName				NVARCHAR(9), -- Contains name of the day, Sunday, Monday 
	DayOfWeek			INT,-- First Day Sunday=1 and Saturday=7
	DayOfWeekInMonth	INT, -- 1st Monday or 2nd Monday in Month
	DayOfWeekInYear		INT,
	DayOfQuarter		INT,
	DayOfYear			INT,
	WeekOfMonth			INT,-- Week Number of Month 
	WeekOfQuarter		INT, -- Week Number of the Quarter
	WeekOfYear			INT,-- Week Number of the Year
	Month				INT, -- Number of the Month 1 to 12{}
	MonthName			NVARCHAR(9),-- January, February etc
	MonthOfQuarter		INT,-- Month Number belongs to Quarter
	Quarter				NCHAR(2),
	QuarterName			NVARCHAR(9),-- First,Second..
	Year				INT,-- Year value of Date stored in Row
	YearName			CHAR(7), -- CY 2017,CY 2018
	MonthYear			CHAR(10), -- Jan-2018,Feb-2018
	MMYYYY				INT,
	FirstDayOfMonth		DATE,
	LastDayOfMonth		DATE,
	FirstDayOfQuarter	DATE,
	LastDayOfQuarter	DATE,
	FirstDayOfYear		DATE,
	LastDayOfYear		DATE,
	IsHoliday			BIT,-- Flag 1=National Holiday, 0-No National Holiday
	IsWeekday			BIT,-- 0=Week End ,1=Week Day
	Holiday				NVARCHAR(50),--Name of Holiday in US
	Season				NVARCHAR(10)--Name of Season
	);

CREATE TABLE DimCustomer
	(
	Customer_SK			INT IDENTITY CONSTRAINT pk_customer_key PRIMARY KEY,
	Customer_BK			INT NOT NULL,
	FirstName			NVARCHAR(100) NOT NULL,
	LastName			NVARCHAR(100) NOT NULL,
	Gender				NVARCHAR(100) NULL,
	Birthdate			DATE NOT NULL,
	);

CREATE TABLE DimComic
	(
	Comic_SK		INT IDENTITY CONSTRAINT pk_comic_key PRIMARY KEY,
	Comic_BK		INT NOT NULL,
	FirstName			NVARCHAR(100) NOT NULL,
	LastName			NVARCHAR(100) NOT NULL,
	Gender				NVARCHAR(100) NULL,
	Birthdate			DATE NOT NULL,
	);

CREATE TABLE DimShow
	(
	Show_SK				INT IDENTITY CONSTRAINT pk_show_key PRIMARY KEY,
	Show_BK				INT NOT NULL,
	Showtime			NVARCHAR(100) NOT NULL,
	ShowLength			NVARCHAR(100) NOT NULL,
	);

CREATE TABLE FactSales
	(
	BookingID			INT NOT NULL,
	BookingDate			INT CONSTRAINT fk_order_date_key FOREIGN KEY REFERENCES DimDate(Date_SK),
	Customer_SK			INT CONSTRAINT fk_customer_key FOREIGN KEY REFERENCES DimCustomer(Customer_SK),
	Comic_SK		    INT CONSTRAINT fk_comic_key FOREIGN KEY REFERENCES DimComic(Comic_SK),
	Show_SK				INT CONSTRAINT fk_show_key FOREIGN KEY REFERENCES DimShow(Show_SK), 
	TicketPrice			MONEY NOT NULL,
	ShowDate			DATE NOT NULL, 
	CONSTRAINT pk_fact_sales PRIMARY KEY(BookingID, BookingDate, Customer_SK, Comic_SK, Show_SK)
	);