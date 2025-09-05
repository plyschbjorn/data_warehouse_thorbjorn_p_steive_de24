use role useradmin;

drop role ICE_CREAM_WRTITER;

create role if not exists ice_cream_reader comment = "Able to read ice_cream_db";

create role if not exists ice_cream_writer comment = "Able to do CRUD operations on ice_cream_db";

create role if not exists ice_cream_analyst comment = "Able to create viewa on ice_cream_db";

show roles;

show warehouses;

use role securityadmin;

grant usage on warehouse dev_wh to role ice_cream_reader;
grant usage on database ice_cream_db to role ice_cream_reader;

GRANT USAGE ON ALL SCHEMAS IN DATABASE ice_cream_db TO ROLE ice_cream_reader;

GRANT SELECT ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_reader;

GRANT SELECT ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_reader;

SHOW GRANTS TO ROLE ice_cream_reader;
SHOW FUTURE GRANTS IN SCHEMA ice_cream_db.public;

SHOW GRANTS TO ROLE ice_cream_writer;
GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;
GRANT INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;

GRANT CREATE TABLE ON SCHEMA ice_cream_db.public TO ROLE ice_cream_writer;

SHOW FUTURE GRANTS IN SCHEMA ice_cream_db.public;
GRANT ROLE ice_cream_writer TO USER plysch;
GRANT ROLE ice_cream_reader TO USER plysch;







