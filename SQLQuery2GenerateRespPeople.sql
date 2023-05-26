WITH InfiniteRows (responsible_person_code, full_name, random1) AS (
   -- Anchor member definition
   SELECT 1 AS responsible_person_code, 'John' AS full_name, CAST(RAND(CHECKSUM(NEWID()))*3 as int) random1
   UNION ALL
   -- Recursive member definition
   SELECT a.responsible_person_code + 1    AS responsible_person_code,CAST(RAND(CHECKSUM(NEWID()))*3 as int) random1, full_name = 
   CASE 
    when random1 = 0 then
    'Bill'
	when random1 = 1 then 
	'Nick'
	else
	'Mike'
   END
   FROM   InfiniteRows a
   WHERE  a.responsible_person_code < 10

)


-- Statement that executes the CTE
SELECT responsible_person_code, full_name
FROM   InfiniteRows;
GO

