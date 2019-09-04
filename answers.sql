--Table-person
--1
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    height INT NOT NULL,
    city VARCHAR(255) NOT NULL,
    favorite_color VARCHAR(255) NOT NULL
);

--2
INSERT INTO person
(name, favorite_color, city, height, age)
VALUES
('Rob Johnson','gray','Austin', 180, 27),
('Jacob Baker', 'red', 'Dallas', 180, 27),
('Tramy Nguyen', 'pink', 'LA', 125, 24),
('Madelyn Arsenault', 'blue', 'SLC', 173, 20),
('Trey Waller', 'gray', 'Arlington', 186, 20)

--3
SELECT * FROM person 
ORDER BY height DESC;

--4
SELECT * FROM person 
ORDER BY height ASC;

--5
SELECT * FROM person 
ORDER BY age DESC;

--6
SELECT * FROM person 
WHERE age >= 20;

--7
SELECT * FROM person 
WHERE age = 18;

--8
SELECT * FROM person 
WHERE age < 20 AND age > 30;

--9
SELECT * FROM person 
WHERE age != 27;

--10
SELECT * FROM person 
WHERE favorite_color != 'red';

--11
SELECT * FROM person 
WHERE favorite_color NOT IN ('red', 'blue');

--12
SELECT * FROM person 
WHERE favorite_color IN ('orange', 'green');

--13
SELECT * FROM person 
WHERE favorite_color IN ('orange', 'green', 'blue');

--14
SELECT * FROM person 
WHERE favorite_color IN ('yellow', 'purple');


--Table-orders
--1
CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    product_name VARCHAR(255),
    product_price INT NOT NULL,
    quantity INT NOT NULL
)

--2
INSERT INTO orders 
(person_id ,product_name, product_price, quantity)
VALUES
(0, 'Product 1', 5, 20),
(1, 'Product 2', 4, 1),
(2, 'Product 3', 40, 10),
(3, 'Product 4', 1, 200),
(4, 'Product 5', 10, 90)

--3
SELECT * FROM orders;

--4
SELECT sum(quantity) FROM orders;

--5
SELECT sum(product_price * quantity) FROM orders;

--6
SELECT sum(product_price*quantity) FROM orders
WHERE person_id = 1;


--Table-artist
--1
INSERT INTO artist 
(name)
VALUES
('Rob'),
('Jacob'),
('Noel')

--2
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

--3
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

--4
SELECT * FROM artist
WHERE name LIKE 'Black%';

--5
SELECT * FROM artist
WHERE name LIKE '%Black%';


--Table-employee
--1
SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

--2
SELECT * FROM employee
ORDER BY birth_date DESC LIMIT 1;

--3
SELECT * FROM employee
ORDER BY birth_date ASC LIMIT 1;

--4
SELECT * FROM employee
WHERE reports_to = 2;

--5
SELECT count(*) FROM employee
WHERE city = 'Lethbridge';


--Table-invoice
--1
SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

--2
SELECT * FROM invoice
ORDER BY total DESC LIMIT 1;

--3
SELECT * FROM invoice
ORDER BY total ASC LIMIT 1;

--4
SELECT count(*) FROM invoice
WHERE total > 5;

--5
SELECT count(*) FROM invoice
WHERE total < 5;

--6
SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--7
SELECT avg(total) FROM invoice;

--8
SELECT sum(total) FROM invoice;
