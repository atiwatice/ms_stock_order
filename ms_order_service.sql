CREATE DATABASE ms_order_service; 
CREATE SCHEMA ms_order_service;

CREATE USER ms_order_service WITH PASSWORD 'ms_order_service';

GRANT CONNECT ON DATABASE ms_order_service TO ms_order_service;

GRANT USAGE, CREATE ON SCHEMA ms_order_service TO ms_order_service;

GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA ms_order_service TO ms_order_service;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA ms_order_service TO ms_order_service;

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA ms_order_service TO ms_order_service;

GRANT ALL PRIVILEGES ON DATABASE ms_order_service TO ms_order_service;





CREATE SEQUENCE order_id_seq;

CREATE TABLE IF NOT EXISTS ms_order_service."ORDER" (
"ID" INTEGER DEFAULT nextval('order_id_seq') NOT NULL, 
"ORDER_NUMBER" VARCHAR(50) NOT NULL );

ALTER SEQUENCE order_id_seq OWNED BY "ORDER"."ID";


CREATE SEQUENCE order_item_id_seq;

CREATE TABLE ms_order_service."ORDER_ITEM" (
	"ID" INTEGER DEFAULT nextval('order_item_id_seq') NOT NULL, 
	"ORDER_ID" INTEGER NOT NULL,
	"SKU_CODE" varchar(50) NOT NULL,
	"PRICE" numeric NULL,
	"QUANTITY" INTEGER NULL
);

ALTER SEQUENCE order_item_id_seq OWNED BY "ORDER_ITEM"."ID";