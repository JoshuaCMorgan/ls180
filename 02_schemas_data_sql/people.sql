CREATE TABLE people (
  name       varchar(255),
  age        integer,
  occupation varchar(255)
);

-- Write SQL statements to insert the data shown in #1 into the table.

INSERT INTO people (name, age, occupation)
     VALUES ('Abby', 34, 'biologist').
            ('Mu''nisah', 26, NULL),
            ('Mirabelle', 40, 'contractor');


-- Write 3 SQL queries that can be used to retrieve the second row of the table shown in #1 and #2.

SELECT * FROM people
WHERE occupation = NULL;

SELECT * FROM people
WHERE age = 26;

SELECT * FROM people
WHERE name = 'Mu''nisah';


-- Write a SQL statement that will create a table named birds that can hold the following values:(not listed)

CREATE TABLE birds (
  name       varchar(255),
  length     numeric(4,1),
  wingspan   decimal(4,1),
  family     text, 
  extinct    boolean
);


-- Using the table created in #4, write the SQL statements to insert the data as shown in the listing.

INSERT INTO birds (name, length, wingspan, family, extinct)
  VALUES ('Spotted Towhee', 21.6, 26.7, 'Emberizidae', false),
         ('American Robin', 25.5, 36.0, 'Turdidae', false).
         ('Greater Koa Fish', 19.0, 24.0, 'Fringillidae', true),
         ('Carolina Parakeet', 33.0, 55.8, 'Psittacidae', true),
         ('Common Kestrel', 35.5, 73.5, 'Falconidae', false);


-- Write a SQL statement that finds the names and families for all birds that are not extinct, in order from longest to shortest (based on the length column's value).

SELECT name, family FROM birds
WHERE extinct = false 
ORDER BY length DESC;


-- Use SQL to determine the average, minimum, and maximum wingspan for the birds shown in the table.

SELECT round(avg(wingspan), 1),  min(wingspan), max(wingspan) FROM birds;


-- Write a SQL statement to create the table shown below, menu_items:
-- (not show)

CREATE TABLE menu_items (
  item            text,
  prep_time       integer,
  ingredient_cost numeric(4,2),
  sales           integer,
  menu_price      numeric(4,2)
);

INSERT INTO menu_items (item, prep_time, ingredient_cost, sales, menu_price)
     VALUES ('omelette', 10, 1.50, 182, 7.99),
            ('tacos', 5, 2.00, 254, 8.99),
            ('oatmeal', 1, 0.50, 79, 5.99);


--  Using the table and data from #8 and #9, write a SQL query to determine which menu item is the most profitable based on the cost of its ingredients, returning the name of the item and its profit.

SELECT   items, menu_price - ingredient_cost AS profit
  FROM   menu_items
 ORDER BY profit DESC LIMIT 1;


-- Write a SQL query to determine how profitable each item on the menu is based on the amount of time it takes to prepare one item. Assume that whoever is preparing the food is being paid $13 an hour. List the most profitable items first. Keep in mind that prep_time is represented in minutes and ingredient_cost and menu_price are in dollars and cents):

SELECT item, menu_price, ingredient_cost,
       round(prep_time/60.0 * 13.0, 2) AS labor,
       menu_price - ingredient_cost - round(prep_time/60.0 * 13.0, 2) AS profit
  FROM menu_items
 ORDER BY profit DESC;
