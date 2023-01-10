-- File 1
-- Yun Wang, Shoulong Wu, Nico Loreto, Aaron Thompson
-- Creating database tables for a new DDL file, Testing understanding of DDL commands

CREATE TABLE customer (
    id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    discount FLOAT NULL,
    phone_number VARCHAR(20) NULL,
    street_address VARCHAR(50) NULL,
    credit_limit INT NULL,
    CONSTRAINT idPK PRIMARY KEY (id)
);

-- Create Sample Table
CREATE TABLE product (
    id INT NOT NULL,
    name varchar(50) NULL,
    quantity INT NULL,
    price DOUBLE NULL,
    quantity_backordered INT NULL,
    CONSTRAINT idPK PRIMARY KEY (id)
);

-- Create Sample Table
CREATE TABLE orders (
    id INT NOT NULL,
    order_date DATETIME NULL,
    order_status VARCHAR(20) NULL,
    shipping_address VARCHAR(50) NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    CONSTRAINT idPK PRIMARY KEY (id),
    CONSTRAINT product_id FOREIGN KEY (product_id)
        REFERENCES product (id),
    CONSTRAINT customer_id FOREIGN KEY (customer_id)
        REFERENCES customer (id)
);

-- Create Sample Table
CREATE TABLE parts (
    id INT NOT NULL,
    description VARCHAR(75) NOT NULL,
    quantity INT NULL,
    CONSTRAINT idPK PRIMARY KEY (id)
);
    
    -- Create Sample Table
CREATE TABLE parts_orders (
    id INT NOT NULL,
    parts_id INT NOT NULL,
    orders_id INT NOT NULL,
    CONSTRAINT orders_id FOREIGN KEY (orders_id)
        REFERENCES orders (id),
    CONSTRAINT parts_id FOREIGN KEY (parts_id)
        REFERENCES parts (id)
);
    