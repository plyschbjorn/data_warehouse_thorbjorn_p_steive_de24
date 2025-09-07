SHOW DATABASES;

-- switch to an appropritate role
USE ROLE sysadmin;

-- setup database for dlt csv data ingestion

DROP DATABASE movies;
CREATE DATABASE IF NOT EXISTS movies;

-- staging layer is a landing zone where data is loaded
-- set up staging schema
CREATE SCHEMA IF NOT EXISTS movies.staging;

-- alternative CREATE SCHEMA IF NOT EXISTS movies.staging;
-- alternative use 'fully qualifieds object name' CREATE SCHEMA movies.staging;

DESCRIBE DATABASE movies;