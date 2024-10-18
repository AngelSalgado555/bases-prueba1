Drop database if exists tipodedatos; 
create database tipodedatos;
use tipodedatos;

create table TiposDatos (
	flotante FLOAT(5,2),
	decimales decimal(7,3),
	codigo char(4),
	texto text,
	dia date,
	momento datetime,
	hora time,
	color ENUM('Rojo' , 'Verde' , 'Azul')
);
insert into TiposDatos VALUES (23.1 , 77.12 , 'ABCD' , 'Texto largooooooo' , '2024-09-04' ,  '2024-09-04 11:59:00', '12:02:00' , 'Verde');





