SET GLOBAL local_infile = 1;

SELECT SCHEMA_NAME
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME = 'stardb';

CREATE DATABASE IF NOT EXISTS stardb;

USE stardb;

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'star_data';

CREATE TABLE IF NOT EXISTS star_data (
    obj_ID INT8 PRIMARY KEY,
    alpha FLOAT,
    delta FLOAT,
    u FLOAT,
    g FLOAT,
    r FLOAT,
    i FLOAT,
    z FLOAT,
    run_ID INT,
    rereun_ID INT,
    cam_col INT,
    field_ID INT,
    spec_obj_ID INT8,
    class VARCHAR(10),
    redshift FLOAT,
    plate INT,
    MJD INT,
    fiber_ID INT
    );

-- MARCHE PAS
-- LOAD DATA LOCAL INFILE './docker-entrypoint-initdb.d/data.csv'
-- INTO TABLE star_data
-- FIELDS TERMINATED BY ','
-- LINES TERMINATED BY '\n'
-- IGNORE 1 ROWS;