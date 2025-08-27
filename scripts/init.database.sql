/*
=====================================================================================================================================================================
Create Database and Schemas
=====================================================================================================================================================================
Script Purpose:
  This script creates a new database named 'Datawarehouse' after checking if it already exists.
  If the Database exists, it is dropped & recreated. Additionally, the script sets up three schemas within the database: 'bronze', 'silver','gold'.


Warning: 
Running this script will drop the enrire database'Datawarehouse' if it exists.
All the data in the database will be permanently deleted. Proceed with caution and 
ensure you have proper backups before running this script.
*/

USE master;
GO
-- Drop and Recreate the 'Datawarehouse' database
IF EXISTS( SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
  ALTER DATABASE datawarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE  Datawarehouse;
END;
GO

-- Create Datawarehouse database
CREATE DATABASE Datawarehouse;
GO

USE Datewarehouse;

-- Create SCHEMAS

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
CREATE 
