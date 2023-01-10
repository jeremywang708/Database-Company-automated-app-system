-- File 3
-- Yun Wang, Shoulong Wu, Nico Loreto, Aaron Thompson
-- File tests use of view commands

-- Query 1: A dynamic view for query 4 in File 3
CREATE VIEW screws_to_restock AS
SELECT 
    description, quantity
FROM
    parts
WHERE
    description LIKE '%Screw%'
        AND quantity < 5000000;
        
-- Query 2: A materialized view for query 9 in File 3
-- Query not required, materialized view not possible for MySQL