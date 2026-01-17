CREATE TABLE Transactions(
trans_id INT PRIMARY KEY,
customer_id INT,
amount INT);
INSERT INTO Transactions(
trans_id,customer_id,amount)
VALUES (1,32,2000),(2,34,3000);
/*altering*/
ALTER TABLE Transactions
ADD status VARCHAR(20);
/*modifying data type*/
ALTER TABLE Transactions
MODIFY amount DECIMAL(10,2);
ALTER TABLE Transactions
ADD PRIMARY KEY (transaction_id);
ALTER TABLE Transactions
DROP PRIMARY KEY;
/*renaming+modifying data type    */
ALTER TABLE Transactions
CHANGE customer_id cust_id INT;
ALTER TABLE Transactions
ADD created_at DATE ;
/*select and return with particular condition */
SELECT *
FROM Transactions
WHERE amount > 500;
/*comparison opearators  
WHERE amount = 500
WHERE amount != 300
WHERE amount BETWEEN 300 AND 700
WHERE amount IN (300, 500)*/
/*order by */
SELECT *
FROM Transactions
ORDER BY amount DESC, customer_id ASC;
/*limit and offset */
LIMIT 5;
LIMIT 5 OFFSET 10;
/*functions */
SELECT
    COUNT(*) AS total_rows,
    SUM(amount) AS total_amount,
    AVG(amount) AS avg_amount,
    MAX(amount) AS max_amount,
    MIN(amount) AS min_amount
FROM Transactions;
/* use of like statement */
-- names starting with 'A'
SELECT * FROM Customers WHERE name LIKE 'A%';

-- names ending with 'son'
SELECT * FROM Customers WHERE name LIKE '%son';

-- names containing 'it' anywhere
SELECT * FROM Customers WHERE name LIKE '%it%';

-- names with exactly 3 characters
SELECT * FROM Customers WHERE name LIKE '___';

-- 3-letter names with 'a' as the middle character
SELECT * FROM Customers WHERE name LIKE '_a_';

-- names starting with 'A' and at least 3 characters long
SELECT * FROM Customers WHERE name LIKE 'A__%';

-- names not starting with 'A'
SELECT * FROM Customers WHERE name NOT LIKE 'A%';

-- case-insensitive search (MySQL default)
SELECT * FROM Customers WHERE name LIKE 'a%';

-- names starting with 'A' and ending with 'n'
SELECT * FROM Customers WHERE name LIKE 'A%' AND name LIKE '%n';

-- names starting with 'A' or 'R'
SELECT * FROM Customers WHERE name LIKE 'A%' OR name LIKE 'R%';

-- names starting with 'A' and exactly 4 characters long
SELECT * FROM Customers WHERE name LIKE 'A___';

-- names where second character is 'a'
SELECT * FROM Customers WHERE name LIKE '_a%';










