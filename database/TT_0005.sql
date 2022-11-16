use TimeTracker_db;
go;

-- Altered CreatedAt for all Tables, sets it to datetime, default current timestamp
ALTER TABLE [Users]
DROP COLUMN EmailAddres;

ALTER TABLE Users 
 ADD EmailAddres NVARCHAR(50) UNIQUE NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE [Users] 
 ADD CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;

--rename column 
  EXEC sp_RENAME 'Users.EmailAddres', 'EmailAddress', 'COLUMN';

-- ==TEST CASES
insert into Users(EmailAddress,Password)values('Tunde','12345');
--test another insert for unique Keys
--Violation of UNIQUE KEY constraint 'UQ__Users__3C3BE1EEB43303B2'. 
---Cannot insert duplicate key in object 'dbo.Users'. The duplicate key value i
---END TEST ALL FIELDS ARE FINE
delete from Users where EmailAddress ='Tunde';
select * from Users;
--=================================================================


