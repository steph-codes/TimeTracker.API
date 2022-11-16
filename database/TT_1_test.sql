Use TimeTracker
go
Create Schema MegaClass
go


Create Table MegaClass.Employees
(
EmpId int identity (1,1) primary Key,
FirstName nvarchar  (50),
LastName nvarchar  (50),
Phone   nvarchar  (50),
Age int,
EmailAddress nvarchar (50),
Gender nvarchar (50),
Department_Role nvarchar (50),
CreatedAt timestamp
)


Create Table MegaClass.Products(
ProductId int identity (1,1) primary Key,
ProductName nvarchar  (100),

ProductPrice   float  (50),
ProductDescription text,
ProductDesc  nvarchar(100),
CreatedAt timestamp
)

Create Table MegaClass.Company(
CompanyId int identity (1,1) primary Key,
CompanyName nvarchar  (100),
ProductId int foreign key references MegaClass.Products(ProductId),
CompanyPhone   nvarchar (20),
CompanyEmail nvarchar (50) unique,
CompanyAddress nvarchar (100),
CompanyLink  nvarchar   (100),
CreatedAt timestamp
)
--ProductId  int foreign key references MegaClass.Products(productId),
--

Create Table MegaClass.ProductUsage(
UsageId int identity (1,1) primary Key,
ProductId int foreign key references MegaClass.Products(ProductId),
CostPerProduct   float,
AdvertCost  float,
ProductPrice nvarchar (50) unique,
CostPerUsage nvarchar (100),
CreatedAt timestamp
)


--comment

--ALTER TABLE MegaClass.Employees
    --ADD ProductId INTEGER,
	--ADD UsageId  INTEGER,
    --FOREIGN KEY(ProductId) REFERENCES MegaClass.Products(ProductId);
	--FOREIGN KEY(UsageId) REFERENCES MegaClass.ProductUsage(UsageId);

--CompanyId int foreign key references MegaClass.Company(CompanyId),
--UsageId  int foreign key references MegaClass.ProductUsage(UsageId),