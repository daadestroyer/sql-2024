-- select all records from Customers table
select * from Customers;

-- select limited colom
select customer_id, first_name, last_name from Customers;

-- The SELECT DISTINCT statement is used to return only distinct (different) values.
select distinct country from Customers;

-- The WHERE clause is used to filter records based on some values
select * from Customers where country = "USA";
select * from Customers where age > 25;

-- The ORDER BY keyword is used to sort the result-set in ascending or descending order.
select * from Customers order by age; -- ascending order
select * from Customers order by age desc; -- descending order

-- The WHERE clause can contain one or many AND operators.
-- The AND operator is used to filter records based on more than one condition, like if you want to return all customers from Spain that starts with the letter 'G':
select * from Customers where country = "USA" and age > 25;
select * from Orders where item like "%M";

-- The WHERE clause can contain one or more OR operators.
select * from Customers where age > 25 or country = "USA";

-- The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.
select * from Customers where not country = "USA";

-- insert command
insert into Customers values(6,'shubham','nigam',25,'INDIA');

-- inserting records in some coloms
insert into Customers (customer_id,first_name , last_name) values (6,'shubham','nigam');

-- update command
update Shippings set status = 'Completed' where customer > 3; -- command to update Shippings table to set status = completed if customer id > 3 
update Orders set amount = amount + 200 where customer_id > 3; -- command to update amount to add 200 if customer_id > 3

-- delete command 
delete from Customers; -- delete all records
