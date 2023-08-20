CREATE DATABASE ms_inventory_service; 
CREATE SCHEMA ms_inventory_service;

CREATE USER ms_inventory_service WITH PASSWORD 'ms_inventory_service';

GRANT CONNECT ON DATABASE ms_inventory_service TO ms_inventory_service;

GRANT USAGE, CREATE ON SCHEMA ms_inventory_service TO ms_inventory_service;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ms_inventory_service TO ms_inventory_service;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA ms_inventory_service TO ms_inventory_service;

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA ms_inventory_service TO ms_inventory_service;

GRANT ALL PRIVILEGES ON DATABASE ms_inventory_service TO ms_inventory_service;





CREATE SEQUENCE inventory_id_seq;

CREATE TABLE IF NOT EXISTS ms_inventory_service."INVENTORY" (
"ID" INTEGER DEFAULT nextval('order_id_seq') NOT NULL, 
"SKU_CODE" VARCHAR(50) NOT NULL, 
"QUANTITY" INTEGER );

ALTER SEQUENCE inventory_id_seq OWNED BY "INVENTORY"."ID";
