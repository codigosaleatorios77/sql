/*
When querying data from a table, you may get duplicate rows. To remove these duplicate rows, you use the DISTINCT clause in the SELECT statement.

The syntax of the DISTINCT clause:
SELECT DISTINCT select_list FROM table_name WHERE search_condition ORDER BY sort_expression;

In this syntax, you specify one or more columns that you want to select distinct values after the SELECT DISTINCT keywords.
If you specify one column, the DISTINCT clause will evaluate the uniqueness of rows based on the values of that column.
However, if you specify two or more columns, the DISTINCT clause will use the values of these columns to evaluate the uniqueness of the rows.

When executing the SELECT statement with the DISTINCT clause, MySQL evaluates the DISTINCT clause after the FROM, WHERE, and SELECT clause and before the ORDER BY clause.

MySQL DISTINCT clause examples:
First, select the last names from the employees table using the following SELECT statement:
*/
SELECT lastName FROM employees ORDER BY lastName;
/*Second, select unique last names by adding the DISTINCT clause like this:*/
SELECT DISTINCT lastName FROM employees ORDER BY lastName;
/* As you can see clearly from the output, the DISTINCT clause removes the duplicate last names from the result set.*/

/*
MySQL DISTINCT and NULL values

When you specify a column that has NULL values in the DISTINCT clause,
the DISTINCT clause will keep only one NULL value because it considers all NULL values are the same.
When DISTINCT clause to query the states, you will see distinct states and NULL as follows:
*/
SELECT DISTINCT state FROM customers;

/*
MySQL DISTINCT with multiple columns

When you specify multiple columns in the DISTINCT clause,
the DISTINCT clause will use the combination of values in these columns to determine the uniqueness of the row in the result set.

To get a unique combination of city and state from the customers table, you use the following query:
*/
SELECT DISTINCT city,state FROM customers WHERE state IS NOT NULL ORDER BY state,city;
/*Without the DISTINCT clause, you will get the duplicate combination of state and city.*/
/*
Summary
    Use the MySQL DISTINCT clause to remove duplicate rows from the result set returned by the SELECT clause.
*/