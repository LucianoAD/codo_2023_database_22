CREATE DATABASE IF NOT EXISTS beer_company ; 

USE beer_company;

CREATE TABLE beer_category(

    id_category INT NOT NULL AUTO_INCREMENT,
    beer_category VARCHAR(255),
    beer_status_category TINYINT(2) DEFAULT 1,
    beer_selection VARCHAR(100)
    PRIMARY KEY id_category
);


CREATE TABLE beer(
    id_beer INT NOT NULL AUTO_INCREMENT,
    beer_name VARCHAR(255),
    beer_abv DECIMAL(6,2),
    beer_url VARCHAR(255),
    beer_type ENUM('raiz','cebada','trigo','malta') DEFAULT 'malta',
    beer_price_currency ENUM('USD','PESOS ARGENTINOS','SOLES') DEFAULT 'USD',
    beer_price DECIMAL(10,2) DEFAULT 10.3,
    PRIMARY KEY (id_beer),
    FOREIGN KEY id_category REFERENCES beer_category(id_category)

);



INSERT INTO beer  values
(
    NULL, 'Stella Artois','12.4', "./some/path", DEFAULT,DEFAULT,DEFAULT

);

