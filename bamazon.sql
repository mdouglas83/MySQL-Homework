CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
    item_id SMALLINT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    department_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity MEDIUMINT,
    PRIMARY KEY item_id (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('APC Basic Rack 2400VA PDU', 'Power Supplies', 186.77, 8);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('RCA ANT1450B TV Antenna', 'Antennas', 28.45, 17);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('HP AC Power Supply', 'Power Supplies', 294.74, 40);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cisco 7965G IP Phone', 'IP Phones', 686.99, 45);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cisco SPA 501G IP Phone', 'IP Phones', 97.88, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cisco SPA 502G IP Phone', 'IP Phones', 118.89, 9);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cisco SPA 504G IP Phone', 'IP Phones', 135.30, 596);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cisco SPA508G IP Phone', 'IP Phones', 160.88, 83);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cisco SPA 509G IP Phone', 'IP Phones', 171.61, 36);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Cisco AC Power Supply', 'Power Supplies', 476.31, 16);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('APC Basic Rack 4160VA PDU', 'Power Supplies', 284.75, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('APC Basic Rack 5.7kVA PDU', 'Power Supplies', 352.10, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('XBlue X16 IP Phone', 'IP Phones', 157.95, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('APC Basic Rack 2.3kVA PDU', 'Power Supplies', 188.28, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Intel EPS12V Power Supply', 'Power Supplies', 110.07, 3);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Supersonic SC-607 Antenna', 'Antennas', 13.54, 36);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('zBoost CANT-0033 Antenna', 'Antennas', 25.03, 17);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('ZyXEL ANT2105 Antenna', 'Antennas', 57.41, 80);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('APC Power Module', 'Power Supplies', 2060.53, 8);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('WilsonPro Panel Antenna', 'Antennas', 56.23, 28);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Lenovo Power Module', 'Power Supplies', 394.80, 8);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Thermaltake TR2 600W Gold', 'Power Supplies', 90.29, 41);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Thermaltake TR2 500W Gold', 'Power Supplies', 78.63, 38);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Thermaltake TR2 700W Gold', 'Power Supplies', 101.94, 6);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('ZyXEL Power Supply', 'Power Supplies', 15.46, 4);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('EVGA 750 GQ Power Supply', 'Power Supplies', 109.23, 17);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('EVGA 1000 GQ Power Supply', 'Power Supplies', 171.10, 17);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('EVGA 650 GQ Power Supply', 'Power Supplies', 102.67, 74);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('Netgear Power Module', 'Power Supplies', 234.89, 7);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES ('APC Basic Rack 2880VA PDU', 'Power Supplies', 353.63, 12);