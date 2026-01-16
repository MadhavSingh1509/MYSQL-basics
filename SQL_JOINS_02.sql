/* --
   step 1: create customers table--
*/

create table customers (
    customer_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    referred_by int  -- this column is used for self join
);

/*
   step 2: create transactions table
   customer_id is a foreign key referencing customers
*/

create table transactions (
    transaction_id int primary key,
    customer_id int,
    amount decimal(10,2),
    transaction_date date,
    foreign key (customer_id) references customers(customer_id)
);

/*
   step 3: insert data into customers
   
*/

insert into customers values
(1, 'aditya', 'madhav', null),
(2, 'rohit', 'sharma', 1),
(3, 'ananya', 'singh', 1),
(4, 'kunal', 'verma', 2);

/* 
   step 4: insert data into transactions
   */

insert into transactions values
(101, 1, 500.00, '2025-01-10'),
(102, 2, 1200.50, '2025-01-11'),
(103, 1, 300.00, '2025-01-12');

/* 
   self join
   */

SELECT * FROM transactions INNER JOIN customers
ON transactions.customer_id=customers.customer_id;
/* 
   left join
   */
SELECT * FROM transactions  LEFT JOIN customers
ON transactions.customer_id=customers.customer_id;


/* 
   right join
   */

SELECT * FROM transactions RIGHT JOIN customers
ON transactions.customer_id=customers.customer_id;


