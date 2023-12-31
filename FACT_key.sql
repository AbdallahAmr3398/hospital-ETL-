/*
   Sunday, September 3, 20231:35:08 PM
   User: 
   Server: DESKTOP-LU72V4H
   Database: Case_hospital
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.FACT_key
	(
	FACT_key int NOT NULL IDENTITY (1, 1),
	SERVICES_key int NULL,
	PATIENT_key int NULL,
	EPISODE_key int NULL,
	Cash_Amount int NULL,
	Credit_AMOUNT int NULL,
	TOTAL_AMOUNT int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.FACT_key ADD CONSTRAINT
	PK_FACT_key PRIMARY KEY CLUSTERED 
	(
	FACT_key
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.FACT_key SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.FACT_key', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.FACT_key', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.FACT_key', 'Object', 'CONTROL') as Contr_Per 