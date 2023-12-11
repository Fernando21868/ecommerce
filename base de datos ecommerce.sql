-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `full-stack-ecommerce`;

CREATE SCHEMA `full-stack-ecommerce`;
USE `full-stack-ecommerce` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `full-stack-ecommerce`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(500) DEFAULT NULL,
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
INSERT INTO product_category(category_name) VALUES ('Libros');
INSERT INTO product_category(category_name) VALUES ('Tazas');
INSERT INTO product_category(category_name) VALUES ('Alfombrillas par ratones');
INSERT INTO product_category(category_name) VALUES ('Etiquetas de equipaje');

-- -----------------------------------------------------
-- Books
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LIBRO-TECH-1000', 'Curso Intensivo de Python', 'Aprende Python a tu propio ritmo. El autor explica cómo funciona la tecnología en un lenguaje fácil de entender. Este libro incluye ejemplos prácticos que puedes aplicar a tus propios proyectos. ¡Compra el libro y comienza hoy mismo!', 'assets/images/products/books/book-luv2code-1000.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LIBRO-TECH-1001', 'Conviértete en un Gurú de JavaScript', 'Aprende JavaScript a tu propio ritmo. El autor explica cómo funciona la tecnología en un lenguaje fácil de entender. Este libro incluye ejemplos prácticos que puedes aplicar a tus propios proyectos. ¡Compra el libro y comienza hoy mismo!', 'assets/images/products/books/book-luv2code-1001.png', 1, 100, 20.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LIBRO-TECH-1002', 'Explorando Vue.js', 'Aprende Vue.js a tu propio ritmo. El autor explica cómo funciona la tecnología en un lenguaje fácil de entender. Este libro incluye ejemplos prácticos que puedes aplicar a tus propios proyectos. ¡Compra el libro y comienza hoy mismo!', 'assets/images/products/books/book-luv2code-1002.png', 1, 100, 14.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LIBRO-TECH-1003', 'Técnicas Avanzadas en Big Data', 'Aprende Big Data a tu propio ritmo. El autor explica cómo funciona la tecnología en un lenguaje fácil de entender. Este libro incluye ejemplos prácticos que puedes aplicar a tus propios proyectos. ¡Compra el libro y comienza hoy mismo!', 'assets/images/products/books/book-luv2code-1003.png', 1, 100, 13.99, 1, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LIBRO-TECH-1004', 'Curso Intensivo de Big Data', 'Aprende Big Data a tu propio ritmo. El autor explica cómo funciona la tecnología en un lenguaje fácil de entender. Este libro incluye ejemplos prácticos que puedes aplicar a tus propios proyectos. ¡Compra el libro y comienza hoy mismo!', 'assets/images/products/books/book-luv2code-1004.png', 1, 100, 18.99, 1, NOW());

-- -----------------------------------------------------
-- Coffee Mugs
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('COFFEEMUG-1000', 'Taza de Café - Expresión', '¿Te encanta las matemáticas? Si es así, necesitas esta elegante taza de café con un asombroso diseño fractal. Ya no tendrás que preocuparte por tazas de café aburridas. ¡Esta taza de café será el tema de conversación en la oficina, garantizado! ¡Cómprala ahora!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1000.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('COFFEEMUG-1001', 'Taza de Café - Cherokee', '¿Te encanta las matemáticas? Si es así, necesitas esta elegante taza de café con un asombroso diseño fractal. Ya no tendrás que preocuparte por tazas de café aburridas. ¡Esta taza de café será el tema de conversación en la oficina, garantizado! ¡Cómprala ahora!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1001.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('COFFEEMUG-1002', 'Taza de Café - Barredora', '¿Te encanta las matemáticas? Si es así, necesitas esta elegante taza de café con un asombroso diseño fractal. Ya no tendrás que preocuparte por tazas de café aburridas. ¡Esta taza de café será el tema de conversación en la oficina, garantizado! ¡Cómprala ahora!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1002.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('COFFEEMUG-1003', 'Taza de Café - Aspiración', '¿Te encanta las matemáticas? Si es así, necesitas esta elegante taza de café con un asombroso diseño fractal. Ya no tendrás que preocuparte por tazas de café aburridas. ¡Esta taza de café será el tema de conversación en la oficina, garantizado! ¡Cómprala ahora!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1003.png', 1, 100, 18.99, 2, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('COFFEEMUG-1004', 'Taza de Café - Dorian', '¿Te encanta las matemáticas? Si es así, necesitas esta elegante taza de café con un asombroso diseño fractal. Ya no tendrás que preocuparte por tazas de café aburridas. ¡Esta taza de café será el tema de conversación en la oficina, garantizado! ¡Cómprala ahora!', 'assets/images/products/coffeemugs/coffeemug-luv2code-1004.png', 1, 100, 18.99, 2, NOW());

-- -----------------------------------------------------
-- Mouse Pads
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('MOUSEPAD-1000', 'Mouse Pad - Expresión', '¡Las imágenes fractales son asombrosas! Ahora puedes tener un mouse pad con un fractal único e increíble. El mouse pad está hecho de un material duradero y suave. Tu mouse se deslizará fácilmente sobre el mouse pad. Este mouse pad iluminará tu espacio de trabajo. ¡Cómpralo ahora!', 'assets/images/products/mousepads/mousepad-luv2code-1000.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('MOUSEPAD-1001', 'Mouse Pad - Cherokee', '¡Las imágenes fractales son asombrosas! Ahora puedes tener un mouse pad con un fractal único e increíble. El mouse pad está hecho de un material duradero y suave. Tu mouse se deslizará fácilmente sobre el mouse pad. Este mouse pad iluminará tu espacio de trabajo. ¡Cómpralo ahora!', 'assets/images/products/mousepads/mousepad-luv2code-1001.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('MOUSEPAD-1002', 'Mouse Pad - Barredora', '¡Las imágenes fractales son asombrosas! Ahora puedes tener un mouse pad con un fractal único e increíble. El mouse pad está hecho de un material duradero y suave. Tu mouse se deslizará fácilmente sobre el mouse pad. Este mouse pad iluminará tu espacio de trabajo. ¡Cómpralo ahora!', 'assets/images/products/mousepads/mousepad-luv2code-1002.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('MOUSEPAD-1003', 'Mouse Pad - Aspiración', '¡Las imágenes fractales son asombrosas! Ahora puedes tener un mouse pad con un fractal único e increíble. El mouse pad está hecho de un material duradero y suave. Tu mouse se deslizará fácilmente sobre el mouse pad. Este mouse pad iluminará tu espacio de trabajo. ¡Cómpralo ahora!', 'assets/images/products/mousepads/mousepad-luv2code-1003.png', 1, 100, 17.99, 3, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('MOUSEPAD-1004', 'Mouse Pad - Dorian', '¡Las imágenes fractales son asombrosas! Ahora puedes tener un mouse pad con un fractal único e increíble. El mouse pad está hecho de un material duradero y suave. Tu mouse se deslizará fácilmente sobre el mouse pad. Este mouse pad iluminará tu espacio de trabajo. ¡Cómpralo ahora!', 'assets/images/products/mousepads/mousepad-luv2code-1004.png', 1, 100, 17.99, 3, NOW());

-- -----------------------------------------------------
-- Luggage Tags
-- -----------------------------------------------------
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LUGGAGETAG-1000', 'Etiqueta de Equipaje - Apreciar', 'Esta etiqueta de equipaje te ayudará a identificar tu equipaje. La etiqueta de equipaje es muy única y destacará entre la multitud. Está hecha de plástico resistente y duradero. ¡Compra esta etiqueta de equipaje ahora para facilitar la identificación de tu equipaje!', 'assets/images/products/luggagetags/luggagetag-luv2code-1000.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LUGGAGETAG-1001', 'Etiqueta de Equipaje - Aventura', 'Esta etiqueta de equipaje te ayudará a identificar tu equipaje. La etiqueta de equipaje es muy única y destacará entre la multitud. Está hecha de plástico resistente y duradero. ¡Compra esta etiqueta de equipaje ahora para facilitar la identificación de tu equipaje!', 'assets/images/products/luggagetags/luggagetag-luv2code-1001.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LUGGAGETAG-1002', 'Etiqueta de Equipaje - Horizonte', 'Esta etiqueta de equipaje te ayudará a identificar tu equipaje. La etiqueta de equipaje es muy única y destacará entre la multitud. Está hecha de plástico resistente y duradero. ¡Compra esta etiqueta de equipaje ahora para facilitar la identificación de tu equipaje!', 'assets/images/products/luggagetags/luggagetag-luv2code-1002.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LUGGAGETAG-1003', 'Etiqueta de Equipaje - Río', 'Esta etiqueta de equipaje te ayudará a identificar tu equipaje. La etiqueta de equipaje es muy única y destacará entre la multitud. Está hecha de plástico resistente y duradero. ¡Compra esta etiqueta de equipaje ahora para facilitar la identificación de tu equipaje!', 'assets/images/products/luggagetags/luggagetag-luv2code-1003.png', 1, 100, 16.99, 4, NOW());
INSERT INTO product (sku, name, description, image_url, active, units_in_stock, unit_price, category_id, date_created) VALUES ('LUGGAGETAG-1004', 'Etiqueta de Equipaje - Pasos del Sendero', 'Esta etiqueta de equipaje te ayudará a identificar tu equipaje. La etiqueta de equipaje es muy única y destacará entre la multitud. Está hecha de plástico resistente y duradero. ¡Compra esta etiqueta de equipaje ahora para facilitar la identificación de tu equipaje!', 'assets/images/products/luggagetags/luggagetag-luv2code-1004.png', 1, 100, 16.99, 4, NOW());
