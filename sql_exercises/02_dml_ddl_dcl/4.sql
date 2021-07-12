-- Does the following statement use the DDL or DML component of SQL?

ALTER TABLE things
DROP CONSTRAINT things_item_key;

-- This statement uses DDL
-- ALTER TABLE is for altering a table schema only; not updating data in
-- the table. It modifies the characteristics and attributes of the
-- table. 
