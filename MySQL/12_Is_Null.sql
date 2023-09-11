/*
MySQL IS NULL operator

To test whether a value is NULL or not, you use the  IS NULL operator.
Here’s the basic syntax of the IS NULL operator:
value IS NULL

If the value is NULL, the expression returns true. Otherwise, it returns false.
Note that MySQL does not have a built-in BOOLEAN type.
It uses the TINYINT(1) to represent the BOOLEAN values i.e.,  true means 1 and false means 0.
Because the IS NULL is a comparison operator, you can use it anywhere that an operator can be used e.g., in the SELECT or WHERE clause.
See the following example:
*/
SELECT 1 IS NULL,  -- 0 
		0 IS NULL,  -- 0
       NULL IS NULL; -- 1

/* 
To check if a value is not NULL, you use IS NOT NULL operator:
value IS NOT NULL
This expression returns true (1) if the value is not NULL. Otherwise, it returns false (0).
Consider the following example:
*/       
SELECT 1 IS NOT NULL, -- 1
       0 IS NOT NULL, -- 1
       NULL IS NOT NULL; -- 0

/*
MySQL IS NULL examples

The following query uses the IS NULL operator to find customers who do not have a sales representative:
*/
SELECT customerNumber, customerName,salesRepEmployeeNumber FROM customers WHERE salesRepEmployeeNumber IS NULL ORDER BY customerName;
/*This example uses the IS NOT NULL operator to get the customers who have a sales representative:*/
SELECT customerNumber, customerName,salesRepEmployeeNumber FROM customers WHERE salesRepEmployeeNumber IS NOT NULL ORDER BY  customerName;
/*
MySQL IS NULL – specialized features
To be compatible with ODBC programs, MySQL supports some specialized features of the IS NULL operator.

1) Treatment of date ‘0000-00-00’
1) If a DATE or DATETIME column has a NOT NULL constraint and contains a special date '0000-00-00', you can use the IS NULL operator to find such rows.
First, create a table called projects:
*/
CREATE TABLE IF NOT EXISTS projects (
    id INT AUTO_INCREMENT,
    title VARCHAR(255),
    begin_date DATE NOT NULL,
    complete_date DATE NOT NULL,
    PRIMARY KEY(id)
);
/*
Second, insert some rows into the projects table:
*/
INSERT INTO projects(title,begin_date, complete_date)
VALUES('New CRM','2020-01-01','0000-00-00'),
      ('ERP Future','2020-01-01','0000-00-00'),
      ('VR','2020-01-01','2030-01-01');

/*
Third, use the IS NULL operator to select rows with the values in the complete_date column is '0000-00-00'.
*/
SELECT * FROM projects WHERE complete_date IS NULL;

/*
2) Influence of @@sql_auto_is_null variable

If the variable @@sql_auto_is_null is set to 1, you can get the value of an auto_increment column after executing an INSERT statement by using the IS NULL operator.
Note that by default the variable @@sql_auto_is_null is 0. Consider the following example.
First, set the variable @@sql_auto_is_null to 1.
*/
SET @@sql_auto_is_null = 1;
/*Second, insert a new row into the projects table:*/
INSERT INTO projects(title,begin_date, complete_date) VALUES('MRP III','2010-01-01','2020-12-31');
/* Third, use the IS NULL operator to get the generated value of the id column: */
SELECT id FROM projects WHERE id IS NULL;

/*
Summary
    Use the IS NULL operator to test if a value is NULL or not. The IS NULL operator returns one if a value is NULL.
    The IS NOT NULL returns one if a value is not NULL.
*/