Use TimeTracker_db
go

use TimeTracker_db
ALTER TABLE Timesheet
    ADD HoursWorked datetime;


sp_RENAME 'TeamMembersPermission.PermissionId' , 'TmPermissionId', 'COLUMN'

--sp_rename 'TeamMembers_Permission', 'TeamMembersPermission';

--sp_rename 'Tasks', 'TaskType';

ALTER TABLE  Company  
DROP CONSTRAINT [FK__Company__Product__3F466844];   
GO

ALTER TABLE  Company  
DROP column productId;   
GO

ALTER TABLE  TeamMembers  
DROP column Description;   
GO

ALTER TABLE TaskType
    ADD UserId INTEGER,
    FOREIGN KEY(UserId) REFERENCES Users(UserId);


Create Table Permission(
PermissionId int identity (1,1) primary Key,
PermissionType nvarchar(200),
PermissionLevel  smallint,
CreatedAt timestamp
)

Create Table ProductTeam(
ProductTeamId int identity (1,1) primary Key,
TeamId int foreign key references Team(TeamId),
ProductId int foreign key references Products(ProductId),
CreatedAt timestamp
)

ALTER TABLE  Timesheet  
DROP CONSTRAINT FK__Timesheet__Produ__0A9D95DB; 

DROP TABLE ProductUsage
-- ======================================== NEW DB

Create database ProductAccountService
go

use ProductAccountService

go

Create Table ProductUsage(
UsageId int identity (1,1) primary Key,
ProductId int foreign key references MegaClass.Products(ProductId),
CostPerProduct   float,
AdvertCost  float,
ProductPrice nvarchar (50) unique,
CostPerUsage nvarchar (100),
CreatedAt timestamp
)



  


