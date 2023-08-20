CREATE DATABASE ms_product_service; 
CREATE SCHEMA ms_product_service;

CREATE USER ms_product_service WITH PASSWORD 'ms_product_service';

GRANT CONNECT ON DATABASE ms_product_service TO ms_product_service;

GRANT USAGE, CREATE ON SCHEMA ms_product_service TO ms_product_service;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ms_product_service TO ms_product_service;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA ms_product_service TO ms_product_service;

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA ms_product_service TO ms_product_service;

GRANT ALL PRIVILEGES ON DATABASE ms_product_service TO ms_product_service;





CREATE SEQUENCE product_id_seq;

CREATE TABLE IF NOT EXISTS ms_product_service."PRODUCT" (
"ID" INTEGER DEFAULT nextval('product_id_seq') NOT NULL, 
"NAME" VARCHAR(50) NOT NULL, 
"DESCRIPTION" VARCHAR(255) NOT NULL, 
"PRICE" numeric );

ALTER SEQUENCE product_id_seq OWNED BY "PRODUCT"."ID";
