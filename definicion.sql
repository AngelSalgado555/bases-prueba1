drop database if exists definicion;
create database definicion;
USE definicion;

create table tabla (
	uno INT NOT NULL,
	dos VARCHAR(5) DEFAULT 'ABC' 
);

insert into tabla values (1 , 'hola');
insert into tabla (uno, dos) values (1, 'bye');
insert into tabla (dos, uno) values ('otra', 3);

insert into tabla (uno) values (2);
insert into tabla values (5, NULL);

select * from tabla;

