/*
The SELECT statement allows you to select data from one or more tables.

To write a SELECT statement in MySQL, you use this syntax:
SELECT select_list FROM table_name;

When executing the SELECT statement, MySQL evaluates the FROM clause before the SELECT clause.
*/
/*
MySQL SELECT statement examples

A) Using the MySQL SELECT statement to retrieve data from a single column example
The following example uses the SELECT statement to select the last names of all employees:
*/
SELECT lastName FROM employees;

/*
B) Using the MySQL SELECT statement to query data from multiple columns example
The following example uses the SELECT statement to get the first name, last name, and job title of employees:
*/
SELECT firstName,lastName,jobTitle FROM employees;

/*
C) Using the MySQL SELECT statement to retrieve data from all columns example
If you want to select data from all the columns of the employees table, you can specify all the column names in the SELECT clause like this:
*/
SELECT * FROM employees; 
/*ou*/
SELECT employeeNumber,lastName,firstName,extension,email,officeCode,reportsTo,jobTitle FROM employees;

/*
Summary
    -Use the SELECT statement to select data from a table.
    -Use the SELECT * to select data from all columns of a table.
___________________________________________________________________________________________________________________________________________________________________

Use the MySQL SELECT statement without referencing any table.

MySQL doesn’t require the FROM clause. It means that you can have a SELECT statement without the FROM clause like this:
SELECT select_list;

a trivial example:
*/
SELECT 3 + 4;

/*
MySQL has many built-in functions like string, date, and Math functions. And you can use the SELECT statement to execute these functions.

The following example returns the current date and time of the MySQL server:
*/
SELECT NOW();

/*
The NOW() function returns the current date & time of the server on which MySQL runs.
The NOW() function doesn’t have any parameters. To call it, you place the parentheses () after the function name.

If a function has parameters, you need to pass arguments into it.
For example, concatenate strings into one string, you can use the CONCAT() function:
*/
SELECT CONCAT('Anna',' ','Bella');
/* The CONCAT() function accepts one or more strings and concatenates them into a single string.*/

/*
The dual table
Sometimes, you still need to use the FROM clause but you don’t want to reference any actual table.
In this case, you can use the dual table in the FROM clause:
SELECT select_list FROM dual;

The dual table is a dummy table, not an actual table.
The dual is also necessary in case you need other clauses of the SELECT statement.
Without the FROM clause, the SELECT statement would not be valid.
*/
/*
A quick introduction to the column alias
By default, MySQL uses the expression specified in the SELECT clause as the column name of the result set.
To change a column name of the result set, you can use a column alias:
SELECT expression AS column_alias;

To assign an alias to a column, you place the AS keyword after the expression followed by a column alias.
The AS keyword is optional, so you can skip it like this:
SELECT expression column_alias;

For example:
*/
SELECT CONCAT('Anna',' ','Bella') AS Name;
/* If the column alias contains spaces, you need to place it inside quotes like this:*/
SELECT CONCAT('Cristina',' ','Delacruz') AS 'Full Name';

/*
Summary
    - MySQL SELECT statement doesn’t require the FROM clause
    - Use the dual table if you want to use the FROM clause but don’t want to reference a table.
    - Assign an alias to a column to make it more readable.
*/