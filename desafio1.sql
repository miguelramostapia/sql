create database desafio_miguel_ramos_123;
\c desafio_miguel_ramos_123

create table clientes(email varchar(50), nombre varchar, telefono varchar(16), empresa varchar(50), prioridad smallint);
\d clientes
insert into clientes values('acme1@gmail.com', 'Cliente Miguel', '998765432','Empresa Acme1',1);
insert into clientes values('acme2@gmail.com', 'Cliente Luis', '998765432','Empresa Acme2',10);
insert into clientes values('acme3@gmail.com', 'Cliente Luisa', '998765432','Empresa Acme3',9);
insert into clientes values('acme4@gmail.com', 'Cliente Patricia', '998765432','Empresa Acme4',8);
insert into clientes values('acme5@gmail.com', 'Cliente Carlos', '998765432','Empresa Acme5',5);
insert into clientes values('acme6@gmail.com', 'Cliente Pedro', '998765432','Empresa Acme6',9);
insert into clientes values('acme7@gmail.com', 'Cliente Juan', '998765432','Empresa Acme7',10);
insert into clientes values('acme8@gmail.com', 'Cliente María', '998765432','Empresa Acme8',7);
insert into clientes values('acme9@gmail.com', 'Cliente Enrique', '998765432','Empresa Acme9',9);
insert into clientes values('acme10@gmail.com', 'Cliente Bernardo', '998765432','Empresa Acme10',1);

select * from clientes order by prioridad desc limit 3;

select * from clientes where prioridad > 5 order by prioridad;

-- drop database desafio_miguel_ramos_123;


Link del video

https://youtu.be/8NDBY_6xbRg

