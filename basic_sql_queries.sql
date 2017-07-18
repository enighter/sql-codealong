CREATE TABLE cats (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    breed TEXT,
    owner_id INTEGER
);


INSERT INTO cats (name, age, breed, owner_id) VALUES ("Maru", 3 , "Scottish Fold", 1);
INSERT INTO cats (name, age, breed, owner_id) VALUES ("Hana", 1 , "Tabby", 1);
INSERT INTO cats (name, age, breed) VALUES ("Lil\' Bub", 5, "American Shorthair");
INSERT INTO cats (name, age, breed) VALUES ("Moe", 10, "Tabby");
INSERT INTO cats (name, age, breed) VALUES ("Patches", 2, "Calico");

-- .header on       -- output the name of each column
-- .mode column     -- now we are in column mode, enabling us to run the next two .width commands
-- .width auto      -- adjusts and normalizes column width

SELECT * FROM cats;
-- id          name        age         breed          owner_id
-- ----------  ----------  ----------  -------------  ----------
-- 1           Maru        3           Scottish Fold  1
-- 2           Hana        1           Tabby          1
-- 3           Lil\' Bub   5           American Shor
-- 4           Moe         10          Tabby
-- 5           Patches     2           Calico

-- SELECT column_name FROM table_name ORDER BY column_name ASC|DESC;
SELECT * FROM cats ORDER BY age;
-- id          name        age         breed       owner_id
-- ----------  ----------  ----------  ----------  ----------
-- 2           Hana        1           Tabby       1
-- 5           Patches     2           Calico
-- 1           Maru        3           Scottish F  1
-- 3           Lil\' Bub   5           American S
-- 4           Moe         10          Tabby

SELECT * FROM cats ORDER BY age DESC LIMIT 1;

-- SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
SELECT name FROM cats WHERE age BETWEEN 1 AND 3;

INSERT INTO cats (name, age, breed) VALUES (NULL, NULL, "Tabby");
SELECT * FROM cats WHERE name IS NULL;

-- SELECT COUNT([column name]) FROM [table name] WHERE [column name] = [value]
SELECT COUNT(owner_id) FROM cats WHERE owner_id = 1;
SELECT breed, COUNT(breed) FROM cats GROUP BY breed;

SELECT breed, owner_id, COUNT(breed) FROM cats GROUP BY breed, owner_id;
