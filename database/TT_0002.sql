Use TimeTracker_db
go


Create Table Products(
ProductId int identity (1,1) primary Key,
ProductName nvarchar  (100),
ProductPrice   float  (50),
ProductDescription text,
ProductDesc  nvarchar(100),
CreatedAt timestamp
)

Create Table Tasks(
TaskId int identity (1,1) primary Key,
TaskName nvarchar  (100),
TaskDescription text,
ProductId  nvarchar(100),
CreatedAt timestamp
)

Create Table TeamMembers_Permission(
PermissionId int identity (1,1) primary Key,
Description nvarchar(200),
CreatedAt timestamp
)

Create Table TeamMembers(
MemberId int identity (1,1) primary Key,
TeamId int foreign key references Team(TeamId),
TeamName nvarchar(100),
Description nvarchar(200),
CreatedAt timestamp
)

Create Table Timesheet(
TimesheetId int identity (1,1) primary Key,
Time_sheet_date   datetime,
TaskId int foreign key references Tasks(TaskId),
EmpId int foreign Key references Employee(EmpId),
ProductId int NULL foreign key references Products(ProductId),
Created_at   timestamp,
ActivityDesc nvarchar (100),
Status tinyint
)


Create Table ProductUsage(
UsageId int identity (1,1) primary Key,
ProductId int foreign key references MegaClass.Products(ProductId),
CostPerProduct   float,
AdvertCost  float,
ProductPrice nvarchar (50) unique,
CostPerUsage nvarchar (100),
CreatedAt timestamp
)



---MODIFICAIONS

--Create Schema MegaClass
--go

--ALTER TABLE TeamMembers_Permission
    --ADD memberId INTEGER,
    --ADD CompanyId Integer,
    --FOREIGN KEY(memberId) REFERENCES TeamMembers(memberId);
    --CompanyId int foreign key references Company(CompanyId);

--ProductId int NULL foreign key references Products(ProductId),

--CompanyId int foreign key references Company(CompanyId),

--DROP TABLE Department

--ALTER TABLE TeamMembers
--DROP COLUMN RoleId;

--ProductId  int foreign key references Products(productId),

--Use TimeTracker_db
--go 
--ALTER TABLE Users   
--DROP CONSTRAINT [FK__Users__RoleId__52593CB8];   
--GO  

