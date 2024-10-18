drop database if exists checks;
create database checks;
USE checks;

-- El check se puede poner tanto en la misma linea del atributo como en una fila aparte para hacerlo grupal , y en la misma linea solo afecta al mismo atributo de la linea.
create table checks (
	a int check (a >= 3),
	b int,
	c int,
	CHECK (b < 10),
	CHECK (a > c),
	CHECK (a <> b),
	-- Para dar un nombre al check 
	CONSTRAINT chk_nombre_ CHECK ( b > a AND b > c )
);

insert into checks values (1,1,1);
SELECT * FROM checks;

