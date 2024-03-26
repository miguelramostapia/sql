create database desafio3_miguel_ramos_123;
\c desafio3_miguel_ramos_123

create table usuarios(id serial, email varchar(50), nombre varchar(50), apellido varchar(50), rol varchar(15));

INSERT INTO USUARIOS(email, nombre, apellido, rol) VALUES ( 'acme1@gmail.com', 'Miguel', 'Ramos', 'administrador');
INSERT INTO USUARIOS(email, nombre, apellido, rol) VALUES ( 'acme2@gmail.com', 'Estrella', 'Ramos', 'usuario');
INSERT INTO USUARIOS(email, nombre, apellido, rol) VALUES ( 'acme3@gmail.com', 'Luis', 'Ramos', 'usuario');
INSERT INTO USUARIOS(email, nombre, apellido, rol) VALUES ( 'acme4@gmail.com', 'Juan', 'Ramos', 'usuario');
INSERT INTO USUARIOS(email, nombre, apellido, rol) VALUES ( 'acme5@gmail.com', 'María', 'Ramos', 'usuario');


create table posts(id serial, titulo varchar(50), contenido text, fecha_creacion timestamp, fecha_actualizacion timestamp, destacado boolean, usuario_id bigint );

INSERT INTO POSTS(titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES ('Titulo Acme1', 'Contenido Acme 1', '2024-01-04 12:00 CET','2024-03-04 12:00 CET',TRUE,1);
INSERT INTO POSTS(titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES ('Titulo Acme2', 'Contenido Acme 2', '2024-01-04 12:00 CET','2024-03-04 12:00 CET',FALSE,1);
INSERT INTO POSTS(titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES ('Titulo Acme3', 'Contenido Acme 3', '2024-01-04 12:00 CET','2024-03-04 12:00 CET',TRUE,4);
INSERT INTO POSTS(titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES ('Titulo Acme4', 'Contenido Acme 4', '2024-01-04 12:00 CET','2024-03-04 12:00 CET',FALSE,2);
INSERT INTO POSTS(titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES ('Titulo Acme5', 'Contenido Acme 5', '2024-01-04 12:00 CET','2024-03-04 12:00 CET',TRUE,NULL);

create table comentarios(id serial, contenido varchar(50), fecha_creacion timestamp , usuario_id bigint, post_id bigint);
insert into comentarios(contenido, fecha_creacion, usuario_id, post_id) values ('Este es un comentario 1 de cualquier cosa','2024-01-04 12:00 CET',1,1);
insert into comentarios(contenido, fecha_creacion, usuario_id, post_id) values ('Este es un comentario 2 de cualquier cosa','2024-01-04 12:00 CET',2,1);
insert into comentarios(contenido, fecha_creacion, usuario_id, post_id) values ('Este es un comentario 3 de cualquier cosa','2024-01-04 12:00 CET',3,1);
insert into comentarios(contenido, fecha_creacion, usuario_id, post_id) values ('Este es un comentario 4 de cualquier cosa','2024-01-04 12:00 CET',1,2);
insert into comentarios(contenido, fecha_creacion, usuario_id, post_id) values ('Este es un comentario 5 de cualquier cosa','2024-01-04 12:00 CET',2,2);

--Pregunta 2

select nombre, email, titulo, contenido from usuarios, posts where usuarios.id = posts.usuario_id;

--Pregunta 3

select posts.id, titulo, contenido from posts, usuarios where posts.usuario_id = usuarios.id and rol = 'administrador';

--Pregunta 4

select usuarios.id, usuarios.email, count(posts.id) from usuarios inner join posts on usuarios.id = posts.usuario_id group by usuarios.id, usuarios.email order by usuarios.id;

--Pregunta 5

select usuarios.email from usuarios inner join posts on usuarios.id = posts.usuario_id group by usuarios.id, usuarios.email order by usuarios.id limit 1;

--Pregunta 6

select max(fecha_creacion),posts.usuario_id from posts group by usuario_id;

--Pregunta 7

select posts.id,posts.titulo, posts.contenido, count(*) from posts inner join comentarios on posts.id = comentarios.post_id group by posts.id, posts.titulo, posts.contenido order by count(*) desc limit 1;

--Pregunta 8

select posts.titulo, posts.contenido, comentarios.contenido, usuarios.email from posts, comentarios, usuarios where posts.id = comentarios.post_id and comentarios.usuario_id = usuarios.id;

--Pregunta 9



--Pregunta 10



