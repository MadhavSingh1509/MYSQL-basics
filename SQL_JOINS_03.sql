/* like keyword + wildcard patterns */

/* % matches zero or more characters */

/* names starting with 'a' */
SELECT *
FROM customers
WHERE first_name LIKE 'a%';

/* names ending with 'h' */
SELECT *
FROM customers
WHERE last_name LIKE '%h';

/* names containing 'ni' anywhere */
SELECT *
FROM customers
WHERE first_name LIKE '%ni%';

/* names exactly equal to 'ram' */
SELECT *
FROM customers
WHERE first_name LIKE 'ram';

/* _ matches exactly one character */

/* exactly 3-letter names ending with 'aa' */
SELECT *
FROM customers
WHERE first_name LIKE '_aa';

/* exactly 5-letter names with 'ook' in the middle */
SELECT *
FROM customers
WHERE first_name LIKE '_ook_';

/* exactly 4-letter names starting with 'a' */
SELECT *
FROM customers
WHERE first_name LIKE 'a___';

/* names where the 2nd character is 'a' */
SELECT *
FROM customers
WHERE first_name LIKE '_a%';

/* names where the 3rd character is 'n' */
SELECT *
FROM customers
WHERE first_name LIKE '__n%';

/* combining wildcards */

/* names starting with 's' and ending with 'h' */
SELECT *
FROM customers
WHERE first_name LIKE 's%h';

/* names containing 'oo' anywhere */
SELECT *
FROM customers
WHERE first_name LIKE '%oo%';

/* logical operators with like */

/* and: names starting with 'a' and ending with 'a' */
SELECT *
FROM customers
WHERE first_name LIKE 'a%' AND first_name LIKE '%a';

/* or: names starting with 'a' or 'r' */
SELECT *
FROM customers
WHERE first_name LIKE 'a%' OR first_name LIKE 'r%';

/* not: names not starting with 'a' */
SELECT *
FROM customers
WHERE first_name NOT LIKE 'a%';

/* in: exact name matches */
SELECT *
FROM customers
WHERE first_name IN ('aditya', 'rohit', 'ananya');

/* mixing logical operators */

/* contains 'oo' but not ending with 's' */
SELECT *
FROM customers
WHERE first_name LIKE '%oo%' AND first_name NOT LIKE '%s';

/* aggregate functions with as */

/* total number of customers */
SELECT COUNT(*) AS total_customers
FROM customers;

/* total transaction amount */
SELECT SUM(amount) AS total_amount
FROM transactions;

/* maximum transaction amount */
SELECT MAX(amount) AS maximum_amount
FROM transactions;

/* minimum transaction amount */
SELECT MIN(amount) AS minimum_amount
FROM transactions;
