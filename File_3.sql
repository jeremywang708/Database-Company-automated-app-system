-- File 3
-- File tests use of query commands to find certain data sets

SELECT 
    *
FROM
    customer;

-- Query 2: Display a subset of columns
SELECT 
    description, quantity
FROM
    parts;
    
-- Query 3: Display a subset of columns with a single clause
SELECT 
    description, quantity
FROM
    parts
WHERE
    description LIKE '%Screw%';
    
-- Query 4: Display a subset of columns with a multi-clause
SELECT 
    description, quantity
FROM
    parts
WHERE
    description LIKE '%Screw%'
        AND quantity < 5000000;
    
-- Query 5: Query that performs a single table join
SELECT 
    *
FROM
    orders,
    customer
WHERE
    orders.customer_id = customer.id;

-- Query 6: Query that performs a multi-table join
SELECT 
    *
FROM
    orders,
    customer,
    product
WHERE
    orders.customer_id = customer.id
        AND orders.product_id = product.id;

-- Query 7: Query that performs an aggregate
SELECT 
    COUNT(discount) AS 'Customers with a discount'
FROM
    customer
WHERE
    discount > 0;

-- Query 8: Query that performs an aggregate with a GROUP BY statement
SELECT 
    discount, COUNT(discount)
FROM
    customer
WHERE
    discount > 0
GROUP BY discount;

-- Query 9: Query that performs an aggregate with a GROUP BY statement and HAVING clause
SELECT 
    discount, COUNT(discount)
FROM
    customer
GROUP BY discount
HAVING (COUNT(discount)) > 1
ORDER BY discount DESC;

-- Query 10: Query that performs a subquery as part of the WHERE clause
SELECT 
    *
FROM
    customer
WHERE
    ID IN (SELECT 
            ID
        FROM
            customer
        WHERE
            credit_limit > 6000);

-- Query 11: Query that performs an aggregate with a join and a group by.
SELECT 
    COUNT(DISTINCT order_status) AS 'Number of Filled Orders',
    customer.name,
    credit_limit
FROM
    orders,
    customer
WHERE
    orders.customer_id = customer.id
        AND order_status = 'Filled'
GROUP BY credit_limit
HAVING (credit_limit) > 6000
ORDER BY credit_limit DESC;
