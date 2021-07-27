-- Create our workshop database
CREATE DATABASE workshop;

-- Make workshop the current database
\c workshop

-- Create a devices table
CREATE TABLE devices (
  id serial PRIMARY KEY,
  name text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);

-- Create a parts table
CREATE TABLE parts (
  id serial PRIMARY KEY,
  part_number integer UNIQUE NOT NULL,
  device_id integer REFERENCES devices (id)
);
