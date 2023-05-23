DROP DATABASE IF EXISTS beer_company;
CREATE DATABASE IF NOT EXISTS beer_company;
USE beer_company;
--  creacion de tablas
CREATE TABLE cliente(
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY(id_cliente)
);
CREATE TABLE factura(
    id_factura INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    -- FK
    fecha_factura TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    metodo_pago ENUM('efectivo', 'mercado pago', 'cc', 'dc') DEFAULT 'efectivo',
    status BOOL DEFAULT FALSE,
    PRIMARY KEY(id_factura)
);
CREATE TABLE beer(
    id_beer INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100),
    abv DECIMAL(5, 2) DEFAULT 12.6,
    tipo ENUM('golden', 'lager', 'red', 'pilsen', 'etc') DEFAULT 'golden',
    stock INT DEFAULT 10,
    precio DECIMAL DEFAULT 10,
    PRIMARY KEY(id_beer)
);
CREATE TABLE beer_factura(
    id_factura INT NOT NULL,
    -- FK
    id_beer INT NOT NULL,
    -- FK
    cantidad_beer INT NOT NULL,
    PRIMARY KEY(id_factura, id_beer)
);
--  creacion de alterar una tabla agregando una FK
ALTER TABLE factura
ADD CONSTRAINT fk_factura FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);
ALTER TABLE beer_factura
ADD CONSTRAINT fk_factura_beer FOREIGN KEY (id_factura) REFERENCES factura(id_factura);
ALTER TABLE beer_factura
ADD CONSTRAINT fk_factura_cliente FOREIGN KEY (id_beer) REFERENCES beer(id_beer);
--  drop para eliminar objetos
ALTER TABLE beer DROP COLUMN tipo;
CREATE TABLE tipo_cerveza(
    id_beer_tipo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) DEFAULT 'GOLDEN'
);
ALTER TABLE beer
ADD COLUMN id_beer_tipo INT NOT NULL;
ALTER TABLE beer
ADD CONSTRAINT fk_tipo_beer FOREIGN KEY (id_beer_tipo) REFERENCES tipo_cerverza(id_beer_tipo);