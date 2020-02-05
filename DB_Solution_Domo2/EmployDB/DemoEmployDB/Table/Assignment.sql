CREATE TABLE [dbo].[Assignment]
(
	[DateAssigned] DATE NOT NULL PRIMARY KEY,
	[LocCode] int,
	[StaffID] int,
	CONSTRAINT FK_Assignment_Office FOREIGN KEY (LocCode) REFERENCES Office,
	CONSTRAINT FK_Assignment_Employee FOREIGN KEY (StaffID) REFERENCES Employee
)
