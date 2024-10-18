drop database if exists futbol;
create database futbol;
use futbol;

create table equipo (
	id INT primary key,
	nombre varchar(255),
	ciudad varchar(255)
);

create table jugador ( 
	dni varchar(15) primary key,
	nombre varchar(100),
	nacionalidad varchar(100),
	dorsal INT,
	altura float,
	id_equipo INT,
	foreign key (id_equipo) references equipo(id) 
);
insert into equipo values(1, 'atletico de madrid', 'atletico');
insert into equipo values(2, 'futbol club barcelona', 'barcelona');

insert into jugador values(55, 'Antoine' , 'Francia' , 7 , 1.70 , 1); 


	
