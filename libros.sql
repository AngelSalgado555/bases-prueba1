drop database if exists libros;
create database libros;
use libros;

create table autor (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100),
	dni VARCHAR(50) unique key 
);

SELECT * FROM autor;

create table tienda (
	cif VARCHAR(100) PRIMARY KEY,
	ubicacion VARCHAR(100),
	web VARCHAR(100)
);

SELECT * FROM tienda;

create table libro (
	isbn VARCHAR(100) PRIMARY KEY,
	titulo VARCHAR(100),
	genero VARCHAR(100) DEFAULT 'FANTASIA',
	precio double,
	fecha_publicacion DATE,
	id_autor INT,
	cif_tienda VARCHAR(100),
	check (fecha_publicacion > '2014-12-31'),
	check (frecio < 50),
	foreign key (id_autor) references autor(id),
	foreign key (cif_tienda) references tienda(cif)  	
);

SELECT * FROM libro;



