/*Creating the data warehouse

==================================================
Script Purpose:

This script creates a data warehouse and sets up three schemas, 'bronze',
'silver', 'gold*/

CREATE DATABASE DataWarehouse;
USE DataWarehouse;

--Creating Schemas

CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
