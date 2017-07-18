INSERT INTO cats (name, age, breed) VALUES ('Maru', 3, 'Scottish Fold');
INSERT INTO cats (name, age, breed) VALUES ("Lil\' Bub", 5, 'American Shorthair');
INSERT INTO cats (name, age, breed) VALUES ('Hannah', 1, 'Tabby');

-- SELECT * FROM [table name] WHERE [column name] = [some value];
SELECT * FROM cats;
-- 1|Maru|3|Scottish Fold
-- 2|Lil\' Bub|5|American Shorthair
-- 3|Hannah|1|Tabby
SELECT name FROM cats;
-- Maru
-- Lil\' Bub
-- Hannah
SELECT * FROM cats WHERE name = "Maru";
-- 1|Maru|3|Scottish Fold

-- UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];
UPDATE cats SET name = "Hana" WHERE name = "Hannah";

-- DELETE FROM [table name] WHERE [column name] = [value];
DELETE FROM cats WHERE id = 2;
-- 1|Maru|3|Scottish Fold
-- 3|Hana|1|Tabby
