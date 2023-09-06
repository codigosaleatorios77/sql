/*
MySQL doesn’t have a built-in Boolean type. Instead, it uses the number zero as FALSE and non-zero values as TRUE.

The AND operator is a logical operator that combines two or more Boolean expressions and returns 1, 0, or NULL:
A AND B

In this expression, A and B are called operands. They can be literal values or expressions.
The logical AND operator returns 1 if both A and B are non-zero and not NULL. It returns 0 if either operand is zero; otherwise, it returns NULL.
*/
SELECT 1 AND 1;
SELECT 1 AND 0, 0 AND 1, 0 AND 0, 0 AND NULL;
SELECT 1 AND NULL, 0 AND NULL, NULL AND NULL;
/*
In practice, you’ll use the AND operator in the WHERE clause of the SELECT, UPDATE, DELETE statements to form a condition.
Also, you can the AND operator in the conditions of the INNER JOIN and LEFT JOIN clauses.
When evaluating an expression that contains the AND operator, MySQL stops evaluating the remaining parts of the expression as soon as it can determine the result.
This is called short-circuit evaluation. In other words, the AND operator is short-circuited.

MySQL AND operator examples
The following statement uses the AND operator to find customers who locate in California (CA), USA:
*/
SELECT customerNumber,customerName,city,state,country FROM customers WHERE country = 'USA' AND state = 'CA' ORDER BY customerName;

/*
By using the AND operator, you can combine more than two Boolean expressions.
For example, the following query returns the customers who locate in California, USA, and have a credit limit greater than 100K.
*/
SELECT customerNumber,customerName,creditLimit,city,state,country FROM customers WHERE country = 'USA' AND state = 'CA' AND creditLimit > 100000 ORDER BY creditLimit DESC;

/*
Summary
    Use the AND operator to combine two Boolean expressions. The AND operator returns true when both expressions are true; otherwise, it returns false.
    Use the AND operator to form conditions in the WHERE clause of the SELECT statement.
*/