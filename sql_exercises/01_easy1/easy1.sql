-- CREATE DATABASE animals; -- $ createdb animals
-- \c animals

--  Create Database
CREATE TABLE birds (
  id serial PRIMARY KEY,
  name character varying(25),
  age integer,
  species character varying(15)
);

-- Insert Data
INSERT INTO birds (name, age, species)
VALUES ('Charlie', 3, 'Finch'),
('Allie', 5, 'Owl'),
('Jennifer', 3, 'Magpie'),
('Jamie', 4, 'Owl'),
('Roy', 8, 'Crow');

-- Select Data
SELECT * FROM animals;
-- or we can specify all the columns we wish to query
SELECT id, name, age, species FROM birds;

-- WHERE clause
SELECT * FROM birds WHERE age < 5;

-- Update Data
UPDATE birds SET species = 'Raven'
WHERE species = 'Crow';

UPDATE birds SET species = 'Hawk'
WHERE name = 'Jamie';

-- Delete Data
DELETE FROM birds WHERE age = 3 AND species = 'Finch';

-- Add Contstraint
ALTER TABLE birds ADD CONSTRAINT check_age CHECK (age > 0);

--Drop Table
DROP TABLE birds;

--Drop Database
DROP DATABASE birds;
