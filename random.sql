CREATE DATABASE Lincoln_Garden_Center;


CREATE TABLE	ThrdPartySupplier		{
Email				VARCHAR(N)		NOT NULL,
CompanyName		VARCHAR(N)		NOT NULL,
CompanyAddress		VARCHAR(N)		NOT NULL,
PRIMARY KEY (Email),
};

CREATE TABLE	Purchase_Order	{
SupplierName		VARCHAR(n)		NOT NULL,
SupplierAddress		VARCHAR(n)		NOT NULL,
Item				VARCHAR(n)		NOT NULL,
ItemDescription		VARCHAR(n),
StockQuantity		CHAR				NOT NULL,
OrderDate			DATE				NOT NULL,
OrderStatus			CHAR				NOT NULL,	
TotalCost			MONEY,
DateOrderReceived		DATETIME			NOT NULL,
DatePaymentSent		DATETIME			NOT NULL,
PRIMARY KEY(SupplierName),
};


CREATE TABLE	Staff	{
StaffEmail			VARCHAR(n)		NOT NULL,
StaffNIN			VARCHAR(n),
StaffName			VARCHAR(n),
PRIMARY KEY (StaffEmail),
};

CREATE TABLE	Customer_Order	{	
Email 				VARCHAR(n)		NOT NULL,
CustomerName		VARCHAR(n)		NOT NULL,
ItemPrice			MONEY			NOT NULL,
DeliveryAddress		VARCHAR(n)		NOT NULL,
BillingAddress		VARCHAR(n)		NOT NULL, 
ItemsOrdered		CHAR				NOT NULL,
QuantityOfItems		CHAR				NOT NULL,
OrderDate			DATETIME			NOT NULL,
DispatchDate		DATETIME			NOT NULL,
DateInvoiceSent		DATETIME			NOT NULL,
PaymentReceivedDate	DATETIME			NOT NULL,
OrderStatus			CHAR				NOT NULL,
TotalPrice			MONEY			NOT NULL,
PRIMARY KEY (Email),
};

CREATE TABLE	Customer	{	
Email				VARCHAR(n)		NOT NULL,
CustomerName		VARCHAR(n)		NOT NULL,
Address			VARCHAR(n),
PRIMARY KEY (Email),
};

CREATE TABLE	Plants	{	
LatinName			VARCHAR(n)		NOT NULL,	
PopularName		VARCHAR(n)		NOT NULL,
ColourOfFoliage		VARCHAR(n),
Quantity			CHAR				NOT NULL,
ColourOfFlowers		CHAR,
Price				MONEY			NOT NULL,
FloweringPeriod		VARCHAR(n),	
Height				CHAR,
PlantCategory		VARCHAR(n)		NOT NULL,
SeasonOfInterest		VARCHAR(n),
HowToGrow			VARCHAR(n),
AfterCare			VARCHAR(n),
PRIMARY KEY (LatinName),
};

CREATE TABLE	Accessories	{
ItemName			VARCHAR(n)		NOT NULL,
ItemType			VARCHAR(n),	
ItemDescription		VARCHAR(n),
Price				MONEY			NOT NULL,
Quantity			CHAR				NOT NULL,
PRIMARY KEY (ItemName),
};
