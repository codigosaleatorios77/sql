/*
MySQL NOT IN operator

The NOT operator negates the IN operator:
value NOT IN (value1, value2, value2)

The NOT IN operator returns one if the value doesn’t equal any value in the list. Otherwise, it returns 0.
The following example uses the NOT IN operator to check if the number 1 is NOT IN the list (1,2,3):
*/
SELECT 1 NOT IN (1,2,3);
/*The following example uses the NOT IN operator to check if 0 is NOT IN the list (1,2,3):*/
SELECT 0 NOT IN (1,2,3);
/*The NOT IN operator returns NULL if the value on the left side of the IN operator is NULL. For example:*/
SELECT NULL NOT IN (1,2,3);
/*
Technically, the NOT IN operator is equivalent to the following:
NOT (value = value1 OR value = value2 OR value = valu3)
Or
value <> value1 AND value <> value2 AND value <> value3

MySQL NOT IN operator example:
The following example uses the NOT IN operator to find the offices that do not locate in France and the USA:
*/
SELECT officeCode,city,addressLine1,phone,country FROM offices WHERE country NOT IN ('France','USA');

/*
Summary
    Use the MySQL NOT IN to check if a value doesn’t match any value in a list.
*/