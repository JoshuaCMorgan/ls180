CREATE DATABASE auction;

CREATE TABLE bidders (
  id serial PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE items (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  initial_price DECIMAL(6,2) NOT NULL CHECK(initial_price BETWEEN 0.01 AND 1000.00),
  sales_price DECIMAL(6,2) CHECK(sales_price BETWEEN 0.01 AND 1000.00)
);

CREATE TABLE bids (
  id serial PRIMARY KEY,
  bidder_id integer 
    NOT NULL 
    REFERENCES bidders(id)
    ON DELETE CASCADE,
    item_id integer 
      NOT NULL 
      REFERENCES items(id) 
      ON DELETE CASCADE,
  amount DECIMAL(6,2) 
    NOT NULL 
    CHECK(amount BETWEEN 0.01 AND 1000.00)
);

CREATE INDEX ON bids (bidder_id, item_id);

-- Copy data for bidders from the csv file to the bidders table
\copy bidders FROM 'bidders.csv' WITH HEADER CSV;

-- Copy data for items from the csv file to the items table
\copy items FROM 'items.csv' WITH HEADER CSV;

-- Copy data for bids from the csv file to the bids table
\copy bids FROM 'bids.csv' WITH HEADER CSV;
