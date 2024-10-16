drop database if exists tienda; 
create database tienda;
use tienda;

create table fabricante ( 
	codigo INT PRIMARY KEY,
	nombre VARCHAR (100) 
);

CREATE TABLE producto (
	codigo INT PRIMARY KEY,
	nombre VARCHAR(100),
	precio doblue,
	codigo_fabricante INT,
	FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);
INSERT INTO fabricante VALUES (50, 'Intel');
INSERT INTO fabricante VALUES (51, 'Asus');

INSERT INTO producto values 
(1, 'Procesador i3', 70.12, 50),
(2, 'Procesador i5', 90.55, 50),
(3, 'Procesador i7', 120.90, 50);
