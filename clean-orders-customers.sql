USE `webshop`;

SET FOREIGN_KEY_CHECKS=0;

TRUNCATE customer;
TRUNCATE orders;
TRUNCATE order_item;
TRUNCATE address;

ALTER TABLE customer ADD UNIQUE (email);
