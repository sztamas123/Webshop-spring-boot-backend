USE `webshop` ;


CREATE TABLE IF NOT EXISTS `webshop`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS `webshop`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Categories
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('Laptops');
INSERT INTO product_category(category_name) VALUES ('Phones');
INSERT INTO product_category(category_name) VALUES ('Televisions');
INSERT INTO product_category(category_name) VALUES ('Consoles');
INSERT INTO product_category(category_name) VALUES ('Cameras');
INSERT INTO product_category(category_name) VALUES ('Headphones');
INSERT INTO product_category(category_name) VALUES ('Keyboards');
INSERT INTO product_category(category_name) VALUES ('Mouses');

-- -----------------------------------------------------
-- Laptops
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-01', 'Lenovo Laptop', 'Lenovo gaming laptop', 'assets/images/products/laptops/laptop1.png', 1, 100, 749, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-02', 'Macbook pro 13', 'Apple macbook pro laptop', 'assets/images/products/laptops/laptop10.png', 1, 100, 1349, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-03', 'Asus zenbook', 'Asus zenbook slim laptop', 'assets/images/products/laptops/laptop11.png', 1, 100, 1149, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-04', 'HP Spectre', 'HP Spectre laptop', 'assets/images/products/laptops/laptop12.png', 1, 100, 1349, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-05', 'Lenovo legion', 'Lenovo legion gaming laptop', 'assets/images/products/laptops/laptop13.png', 1, 100, 1248, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-06', 'Samsung Laptop', 'Samsung laptop with slim design', 'assets/images/products/laptops/laptop2.png', 1, 100, 500, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-07', 'Macbook pro', 'Apple macbook pro laptop', 'assets/images/products/laptops/laptop3.png', 1, 100, 1259, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-08', 'Asus Laptop', 'Asus slim laptop', 'assets/images/products/laptops/laptop4.png', 1, 100, 699, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-09', 'Laptop pro', 'Custom laptop', 'assets/images/products/laptops/laptop5.png', 1, 100, 500, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-10', 'Asus zenbook', 'Asus convertible laptop', 'assets/images/products/laptops/laptop6.png', 1, 100, 659, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-11', 'Macbook Air', 'Apple macbook air laptop', 'assets/images/products/laptops/laptop7.png', 1, 100, 889, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Laptop-12', 'Asus laptop', 'Asus laptop with slim design', 'assets/images/products/laptops/laptop8.png', 1, 100, 500, 1, NOW());




-- -----------------------------------------------------
-- Phones
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Phone-01', 'Samsung phone', 'Samsung smartphone', 'assets/images/products/phones/phone1.png', 1, 100, 259, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Phone-02', 'Huawei phone', 'Haawei smartphone', 'assets/images/products/phones/phone2.png', 1, 100, 359, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Phone-03', 'Haawei phone', 'Huawei smartphone', 'assets/images/products/phones/phone3.png', 1, 100, 334, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Phone-04', 'Apple iphone', 'Iphone 12', 'assets/images/products/phones/phone4.png', 1, 100, 599, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Phone-05', 'Samsung phone', 'Samsung smartphone', 'assets/images/products/phones/phone5.png', 1, 100, 449, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Phone-06', 'Apple iphone', 'Iphone 11', 'assets/images/products/phones/phone6.png', 1, 100, 259, 2, NOW());
-- -----------------------------------------------------
-- Televisions
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('TV-01', 'Samsung 4k smart tv', 'Samsung smart TV with 4k display', 'assets/images/products/televisions/tv4.png', 1, 100, 899, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('TV-02', 'Samsung 4k smart tv', 'Samsung smart TV with 4k display', 'assets/images/products/televisions/tv4.png', 1, 100, 799, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('TV-03', 'Sony 4k smart tv', 'Sony smart TV with 4k display', 'assets/images/products/televisions/tv4.png', 1, 100, 999, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('TV-04', 'Samsung 8k smart tv', 'Samsung smart TV with 8k display', 'assets/images/products/televisions/tv4.png', 1, 100, 1499, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('TV-05', 'Samsung full hd smart tv', 'Samsung smart TV with full hd display', 'assets/images/products/televisions/tv4.png', 1, 100, 699, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('TV-06', 'LG smart tv', 'Samsung smart TV with full hd display', 'assets/images/products/televisions/tv4.png', 1, 100, 699, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('TV-07', 'LG 8K smart tv', 'LG smart TV with 8k display', 'assets/images/products/televisions/tv4.png', 1, 100, 1699, 3, NOW());


-- -----------------------------------------------------
-- Consoles
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Console-01', 'Playstation 4 pro', 'Sony playstation 4 pro console with 1TB storage', 'assets/images/products/consoles/ps4.png', 1, 100, 459, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Console-02', 'Playstation 5', 'Sony playstation 4 console with 1TB storage', 'assets/images/products/consoles/ps5.png', 1, 100, 799, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Console-03', 'Xbox one x', 'Xbox one x console with 1TB storage', 'assets/images/products/consoles/xboxonex.png', 1, 100, 429, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Console-04', 'Xbox series x', 'Xbox series x console with 1TB storage', 'assets/images/products/consoles/ps4.png', 1, 100, 769, 4, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Camera-01', 'Canon camera', 'Canon pro camera', 'assets/images/products/cameras/camera.png', 1, 100, 549, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Camera-02', 'Sony camera', 'Sony pro camera', 'assets/images/products/cameras/camera.png', 1, 100, 777, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Camera-03', 'Nikon camera', 'Nikon pro camera', 'assets/images/products/cameras/camera.png', 1, 100, 567, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Camera-04', 'Canon camera', 'Canon professional camera', 'assets/images/products/cameras/camera.png', 1, 100, 779, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Camera-05', 'Sony camera', 'Sony professional camera', 'assets/images/products/cameras/camera.png', 1, 100, 999, 5, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Camera-06', 'Nikon camera', 'Nikon professional camera', 'assets/images/products/cameras/camera.png', 1, 100, 896, 5, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Headphone-01', 'Sony headphone', 'Sony headphone', 'assets/images/products/headphones/headphone.png', 1, 100, 56, 6, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Headphone-02', 'Boose headphone', 'Boose headphone with noise cancellation', 'assets/images/products/headphones/headphone.png', 1, 100, 249, 6, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Headphone-03', 'JBL headphone', 'JBL headphone with noise cancellation', 'assets/images/products/headphones/headphone.png', 1, 100, 129, 6, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Headphone-04', 'Logitech headphone', 'Logitech headphone', 'assets/images/products/headphones/headphone.png', 1, 100, 87, 6, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Headphone-05', 'Jabra headphone', 'Jabra headphone', 'assets/images/products/headphones/headphone.png', 1, 100, 76, 6, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Headphone-06', 'Sony headphone', 'Sony headphone with noise cancellation', 'assets/images/products/headphones/headphone.png', 1, 100, 215, 6, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Keyboard-01', 'Logitech keyboard', 'Logitech mechanical keyboard', 'assets/images/products/keyboards/keyboard.png', 1, 100, 43, 7, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Keyboard-02', 'Razer keyboard', 'Razer mechanical keyboard', 'assets/images/products/keyboards/keyboard.png', 1, 100, 98, 7, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Keyboard-03', 'HP keyboard', 'HP keyboard', 'assets/images/products/keyboards/keyboard.png', 1, 100, 23, 7, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Keyboard-04', 'Hyperx keyboard', 'Hyperx mechanical keyboard', 'assets/images/products/keyboards/keyboard.png', 1, 100, 79, 7, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Keyboard-05', 'Apple keyboard', 'Apple wireless keyboard', 'assets/images/products/keyboards/keyboard.png', 1, 100, 159, 7, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Keyboard-06', 'Logitech keyboard', 'Logitech wireless keyboard', 'assets/images/products/keyboards/keyboard.png', 1, 100, 89, 7, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Mouse-01', 'Logitech mouse', 'Logitech gaming mouse', 'assets/images/products/mouses/mouse.png', 1, 100, 37, 8, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Mouse-02', 'Razer mouse', 'Razer gaming mouse', 'assets/images/products/mouses/mouse.png', 1, 100, 78, 8, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Mouse-03', 'Microsoft mouse', 'Microsoft wireless mouse', 'assets/images/products/mouses/mouse.png', 1, 100, 21, 8, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id,date_created) VALUES ('Mouse-04', 'Logitech mouse', 'Logitech wireless mouse', 'assets/images/products/mouses/mouse.png', 1, 100, 45, 8, NOW());

