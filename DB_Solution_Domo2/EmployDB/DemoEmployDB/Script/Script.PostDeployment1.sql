/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF('$(DeployTestData)'='true')
BEGIN

DELETE FROM Assignment;
DELETE FROM Employee;
DELETE FROM Office;

INSERT INTO Employee (StaffId, GivenName, Surname) VALUES
(1, 'Billy', 'Smith'),
(2, 'John', 'Carl'),
(3, 'Mary', 'Gibson');

INSERT INTO Office (LocCode, Address, Description) VALUES
(3123, 'Hawthorn', 'Surburb'),
(3122, 'Hawthorn East', 'Surburb'),
(2000, 'Melbourne', 'City');

INSERT INTO Assignment (DateAssigned, LocCode, StaffID) VALUES
('1999-01-03', 3123, 1),
('2002-11-05', 2000, 3),
('2010-12-03', 3122, 2);

END;