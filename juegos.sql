drop database if exists juegos;
create database juegos;
use juegos;

create table desarrolladora (
	nombre varchar(100) primary key
);

create table juego (
	id int primary key,
	nombre varchar(100),
	fk_desarrolladora varchar(100),
	FOREIGN KEY (fk_desarrolladora) REFERENCES desarrolladora (nombre) ON DELETE CASCADE 
);

create table personajes (
	nombre varchar(100) primary key,
	vida float,
	fk_juego int,
	FOREIGN KEY (fk_juego) REFERENCES juego(id) ON DELETE SET NULL  
);

insert into desarrolladora values ('Buggy Soft');
insert into juego values 
	(0, 'Las aventuras del capitán Salami', 'Buggy Soft'),
	(1, 'Las aventuras del capitán Salami - Vegan ed.', 'Buggy Soft');
insert into personajes values 
	('Cap. Salami', 10.0, 0),
	('Señor Cuchiller', 10.0, 0),
	('Cap. Seitán ', 10.0, 1),
	('Señor Chucharilla', 10.0, 1);
	
SELECT * FROM personajes;
SELECT * FROM juego;
SELECT * FROM desarrolladora; 

DELETE FROM desarrolladora WHERE nombre='Buggy Soft';
SELECT * FROM juego;
SELECT * FROM personajes;
