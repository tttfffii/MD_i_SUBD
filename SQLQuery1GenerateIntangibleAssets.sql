WITH InfiniteRows (view_code, name) AS (
   -- Anchor member definition
   SELECT 1 AS view_code, 'patent' AS name
   UNION ALL
   -- Recursive member definition
   SELECT a.view_code + 1    AS view_code, a.name AS name
   FROM   InfiniteRows a
   WHERE  a.view_code < 10
)
-- Statement that executes the CTE
SELECT view_code, name
FROM   InfiniteRows;
GO
