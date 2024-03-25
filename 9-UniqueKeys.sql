Create Table products(
	product_id int auto_increment primary key,
    product_name varchar(25) unique,
    price decimal(4,2)
);

-- if we forgot to set our product name to unqiue then we can add a contraint telling sql that our product name column is to be unique
ALTER TABLE products
ADD CONSTRAINT
unique(product_id);

SELECT * FROM PRODUCTS;

-- this should throw an error since our products names should be unique 
INSERT INTO products
values (
	null, "Hamburger", 3.99
), (
	null, "Fries", 1.89
), (
	null, "Soda", 1.00
), (
	null, "Ice Cream", 1.49
);

SELECT * FROM PRODUCTS;