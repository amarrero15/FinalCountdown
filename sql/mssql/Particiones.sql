CREATE DATABASE db_licoreria
USE db_licoreria
ALTER DATABASE db_licoreria ADD FILEGROUP fg_CostaRica
ALTER DATABASE db_licoreria ADD FiLEGROUP fg_Mexico
ALTER DATABASE db_licoreria ADD FiLEGROUP fg_Colombia
ALTER DATABASE db_licoreria ADD FILE (
	NAME = fg_CostaRica
	,FILENAME = 'F:\data\fg_CostaRica.ndf'
	,SIZE = 8MB
	,FILEGROWTH = 8MB
	,MAXSIZE = 8MB
) TO FILEGROUP fg_CostaRica
ALTER DATABASE db_licoreria ADD FILE (
	NAME = fg_Mexico
	,FILENAME = 'F:\data\fg_Mexico.ndf'
	,SIZE = 8MB
	,FILEGROWTH = 8MB
	,MAXSIZE = 8MB
) TO FILEGROUP fg_Mexico
ALTER DATABASE db_licoreria ADD FILE (
	NAME = fg_Colombia
	,FILENAME = 'F:\data\fg_Colombia.ndf'
	,SIZE = 8MB
	,FILEGROWTH = 8MB
	,MAXSIZE = 8MB
) TO FILEGROUP fg_Colombia

CREATE PARTITION FUNCTION fp_paises (SMALLINT)
AS RANGE LEFT FOR VALUES (1,2,3);

CREATE PARTITION SCHEME sp_paises AS PARTITION fp_paises TO
([fg_CostaRica], [fg_Mexico], [fg_Colombia], [PRIMARY])

--create table...
--ON sp_paises(idPais)

INSERT INTO Paises
VALUES 
	(1, 'Costa Rica')
	,(2, 'Mexico')
	,(3, 'Colombia')


SELECT
	$Partition.fp_paises (idPais) AS "particion"	
	,COUNT(*) AS "cantidadRegistros"
FROM Paises
GROUP BY $Partition.fp_paises(idPais)

