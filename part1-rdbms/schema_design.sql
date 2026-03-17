CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

CREATE TABLE products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

CREATE TABLE sales_reps (
    sales_rep_id VARCHAR(10) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address TEXT NOT NULL
);

CREATE TABLE orders (
    order_id VARCHAR(10) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(10) NOT NULL,
    sales_rep_id VARCHAR(10) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

CREATE TABLE order_items (
    order_id VARCHAR(10),
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
('C001','Rohan Mehta','rohan@gmail.com','Mumbai'),
('C002','Priya Sharma','priya@gmail.com','Delhi'),
('C003','Amit Verma','amit@gmail.com','Bangalore'),
('C004','Sneha Patel','sneha@gmail.com','Ahmedabad'),
('C005','Vikram Singh','vikram@gmail.com','Mumbai');

INSERT INTO products VALUES
('P001','Office Chair','Furniture',6500),
('P002','Laptop Table','Furniture',4500),
('P003','Desk Chair','Furniture',8500),
('P004','Notebook','Stationery',120),
('P005','Headphones','Electronics',3200);

INSERT INTO sales_reps VALUES
('S001','Arjun Kapoor','arjun@company.com','Delhi Office'),
('S002','Meera Nair','meera@company.com','Mumbai HQ'),
('S003','Rahul Khanna','rahul@company.com','Bangalore Office'),
('S004','Karan Malhotra','karan@company.com','Delhi Office'),
('S005','Anita Desai','anita@company.com','Mumbai HQ');

INSERT INTO orders VALUES
('ORD1001','2024-01-10','C001','S001'),
('ORD1002','2024-01-11','C002','S002'),
('ORD1003','2024-01-12','C003','S003'),
('ORD1004','2024-01-13','C004','S004'),
('ORD1005','2024-01-14','C005','S005');

INSERT INTO order_items VALUES
('ORD1001','P004',10),
('ORD1001','P005',2),
('ORD1002','P003',1),
('ORD1003','P004',5),
('ORD1004','P001',1);