drop database if exists ejercicios;
create database ejercicios;
use ejercicios;

create table ej1 (
	a INT,
	b DATE,
	c VARCHAR(5)
);

insert into ej1 values (1, '2024-10-8' , 'hola');
insert into ej1 (b, c , a) values ('2024-10-8', 'piano', 2);
insert into ej1 (c,b) values ('raiz' , '2024-10-8');
insert into ej1 (b) values ('2024-10-8');

SELECT * FROM ej1;

create table ej2 (
	a INT NOT NULL, 
	b INT NOT NULL DEFAULT 0 ,
	c VARCHAR(5),
	d VARCHAR(5) DEFAULT 'Hola'
);

insert into ej2 (a,b,d) values (5 , 6 , 'vale');
insert into ej2 (a,b,c) values (8 , 9 , 'vamos');
insert into ej2 (c,a,d) values ('trece' , 7 , null);
insert into ej2 (a) values (1 );
insert into ej2 (a,d) values ( 55, null );

SELECT * FROM ej2;

create table ej03 (
	a INT auto_increment primary key,
	b VARCHAR(5) UNIQUE KEY,
	c VARCHAR(5) DEFAULT 'hola' 
);

insert into ej03 (b,c) values 
  	('papap' , 'pruba'), 
  	('batma' , 'cosa');
insert into ej03 values 
  	(5, 'bla', 'pepe');
insert into ej03 (b,c) values 
	('toro' , 'gula');

SELECT * FROM ej03;
