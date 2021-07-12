-- Does the following statement use the DDL or DML component of SQL?

CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);

-- DDL
-- This statement focuses on defining the schema of the database and not
-- the content.  We are creating a table, but also giving it a name.
-- Then we define the type of information stored in the database. We are
-- defining the characteristics. Like an author would to a character in
-- a book, such has giving it the characteristic of having a name.  
-- We are trying to control the data that will eventually be applied to
-- the table. 

