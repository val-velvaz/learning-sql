-- practicing getdate

SELECT GETDATE();

SELECT FORMAT(GETDATE(), 'MM/dd/yyyy');

-- Today is..
SELECT CONCAT('Today is', ' ', FORMAT(GETDATE(), 'MM/dd/yyyy'))