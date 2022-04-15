--1
CREATE INDEX major_name_index
ON major (major_name);

--2
CREATE VIEW v_student AS (
    SELECT student_id, student_name, hometown, major_name
    FROM student AS s
    LEFT JOIN major AS m
    ON s.major_id = m.major_id
    WHERE hometown != '東京'
    ORDER BY major_name ASC
);

--3
CREATE MATERIALIZED VIEW mv_student AS (
    SELECT student_id, student_name, hometown, major_name
    FROM student AS s
    LEFT JOIN major AS m
    ON s.major_id = m.major_id
    WHERE hometown != '東京'
    ORDER BY major_name ASC
);

--4
CREATE OR REPLACE Function tax_include(price INT) RETURNS INT
AS $function$
DECLARE
    tax_include_price INT;
BEGIN
    tax_include_price := TRUNCATE(price * 1.1, 0);
    RETURN tax_include_price;
END;
$function$
LANGUAGE plpgsql;

--5
CREATE TABLE users (
    id SERIAL PRIMARY KEY
    , name VARCHAR(50)
);
