DROP TABLE `Customers`;		
		
CREATE TABLE `Customers` (		
`customer_id` mediumint default NULL,		
`password` TEXT default NULL,		
`first_name` varchar(255) default NULL,		
`last_name` varchar(255) default NULL,		
`billing_address_id` mediumint default NULL,		
`shipping_address_id` mediumint default NULL,		
`phone_number` varchar(100) default NULL		
);		


DROP TABLE `Orders`;

CREATE TABLE `Orders` (
  `order_id` mediumint default NULL,
  `order_date` varchar(255),
  `order_status` TEXT default NULL,
  `order_shipping_address_id` mediumint default NULL,
  `invoice_id` mediumint default NULL
);

DROP TABLE `Shipments`;

CREATE TABLE `Shipments` (
  `shipment_id` mediumint(8) unsigned NOT NULL auto_increment,
  `order_id` mediumint,
  `shipping_company` TEXT default NULL,
  `tracking_id` varchar(255),
  `shipment_date` varchar(255),
  `delivery_date` varchar(255),
  PRIMARY KEY (`shipment_id`)
) AUTO_INCREMENT=1

DROP TABLE `Product`;

CREATE TABLE `Product` (
  `product_id` mediumint(8) unsigned NOT NULL auto_increment,
  `product_name` TEXT default NULL,
  `product_price` varchar(100) default NULL,
  `product_description` TEXT default NULL,
  PRIMARY KEY (`product_id`)
) AUTO_INCREMENT=1;

DROP TABLE `Product_Option`;

CREATE TABLE `Product_Option` (
  `product_option_id` mediumint(8) unsigned NOT NULL auto_increment,
  `product_id` mediumint,
  `option_id` mediumint,
  PRIMARY KEY (`product_option_id`)
) AUTO_INCREMENT=1;

DROP TABLE `Option`;

CREATE TABLE `Option` (
  `option_id` mediumint(8) unsigned NOT NULL auto_increment,
  `option_name` TEXT default NULL,
  PRIMARY KEY (`option_id`)
) AUTO_INCREMENT=1


DROP TABLE `Product_Category`;

CREATE TABLE `Product_Category` (
  `product_category_id` mediumint(8) unsigned NOT NULL auto_increment,
  `product_id` mediumint,
  `category_id` mediumint,
  PRIMARY KEY (`product_category_id`)
) AUTO_INCREMENT=1

DROP TABLE `Category`;

CREATE TABLE `Category` (
  `category_id` mediumint(8) unsigned NOT NULL auto_increment,
  `category_name` TEXT default NULL,
  `category_description` TEXT default NULL,
  PRIMARY KEY (`category_id`)
) AUTO_INCREMENT=1;

DROP TABLE `Address`;

CREATE TABLE `Address` (
  `address_id` mediumint(8) unsigned NOT NULL auto_increment,
  `address_line_1` varchar(255) default NULL,
  `address_line_2` TEXT default NULL,
  `city` varchar(255),
  `province` varchar(50) default NULL,
  `postal_code` varchar(10) default NULL,
  `country` varchar(100) default NULL,
  PRIMARY KEY (`address_id`)
) AUTO_INCREMENT=1;


DROP TABLE `Invoice`;

CREATE TABLE `Invoice` (
  `invoice_id` mediumint(8) unsigned NOT NULL auto_increment,
  `invoice_date` varchar(255),
  `payment_method` TEXT default NULL,
  PRIMARY KEY (`invoice_id`)
) AUTO_INCREMENT=1