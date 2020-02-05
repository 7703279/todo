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

DELETE FROM AnotherTable;
DELETE FROM MyTable;


INSERT INTO MyTable (StudentId, Name, Age) VALUES
(1, 'Billy', 19),
(2, 'Fred', 20),
(3, 'John', 21);

INSERT INTO AnotherTable(AnotherId, StudentID) VALUES
(101,1),
(102,2);

END;