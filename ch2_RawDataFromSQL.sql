--Delete the table if it is created before
--DROP TABLE synth_data

--Create a table to be used in our future AML experiment. Old SQL DB version requires clustered index
CREATE TABLE synth_data 
(
    x int, 
    ywnoise float
);
CREATE CLUSTERED INDEX i1 ON dbo.synth_data(x);

--Generate sequence of numbers from 1 to 30
WITH Seq as (
    SELECT TOP (30) x = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id])) 
    FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
)

--Insert the sequence and noisy data column into the table
INSERT INTO synth_data
SELECT x, x + (RAND(convert(varbinary, newid())) * 2) - 1 as ywnoise FROM Seq

--Review the created data
SELECT * FROM synth_data