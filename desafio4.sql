CREATE TABLE peliculas (id Integer,nombre Varchar(255),anno Integer,PRIMARY KEY (id));
CREATE TABLE tags (id Integer,tag Varchar(32),PRIMARY KEY (id));
CREATE TABLE peliculastags (peliculas_id Integer,tags_id Integer,FOREIGN KEY (peliculas_id)REFERENCES peliculas(id),FOREIGN KEY (tags_id)REFERENCES tags(id));

insert into peliculas(id, nombre, anno) values(1,'Pelicula numero 1', 1985),(2,'Pelicula numero 2', 1986),(3,'Pelicula numero 3', 1987),(4,'Pelicula numero 4', 1988),(5,'Pelicula numero 5', 1989);
insert into tags(id, tag) values(1,'Tag numero 1'),(2,'Tag numero 2'),(3,'Tag numero 3'),(4,'Tag numero 4'),(5,'Tag numero 5');
insert into peliculastags(peliculas_id,tags_id) values (1,1),(1,3),(1,5),(2,1),(2,2);

select peliculas.nombre, count(peliculastags.tags_id) from peliculas left join peliculastags on peliculas.id = peliculastags.peliculas_id group by peliculas.nombre;

Pregunta 4.

CREATE TABLE preguntas (id Integer,pregunta Varchar(255),respuesta_correcta varchar,PRIMARY KEY (id));
CREATE TABLE usuarios (id Integer,nombre Varchar(255),edad Integer,PRIMARY KEY (id));
CREATE TABLE respuestas (id Integer,respuesta Varchar(255),usuario_id integer, pregunta_id Integer,PRIMARY KEY (id),FOREIGN KEY (usuario_id)REFERENCES Usuarios(id),FOREIGN KEY (pregunta_id)REFERENCES preguntas(id));

Pregunta 5.

insert into preguntas(id, pregunta, respuesta_correcta) values (1, 'Esta es la pregunta numero 1','Esta es la respuesta correcta a la pregunta 1'),(2, 'Esta es la pregunta numero 2','Esta es la respuesta correcta a la pregunta 2'),(3, 'Esta es la pregunta numero 3','Esta es la respuesta correcta a la pregunta 3'),(4, 'Esta es la pregunta numero 4','Esta es la respuesta correcta a la pregunta 4'),(5, 'Esta es la pregunta numero 5','Esta es la respuesta correcta a la pregunta 5');

insert into usuarios(id, nombre, edad) values (1, 'Miguel',23),(2,'Consuelo',32),(3,'Francisco',22),(4,'Maria',21),(5,'Jesus',33);
insert into respuestas(id, respuesta,usuario_id, pregunta_id) values (1,'Esta es la respuesta correcta a la pregunta 1',1,1),(2,'Esta es la respuesta correcta a la pregunta 1',2,1),(3,'Esta es la respuesta correcta a la pregunta 2',3,2),(4,'Esta es la respuesta correcta a la pregunta 1',1,3),(5,'Esta es la respuesta correcta a la pregunta 1',4,4),(6,'Esta es la respuesta correcta a la pregunta 1',5,4),(7,'Esta es la respuesta correcta a la pregunta 1',2,5);

Pregunta 6.

select usuarios.nombre, count(respuestas.respuesta) from usuarios left join respuestas on usuarios.id = respuestas.usuario_id left join preguntas on preguntas.id = respuestas.pregunta_id where preguntas.respuesta_correcta = respuestas.respuesta group by usuarios.nombre;

Pregunta 7.

select preguntas.pregunta, count(respuestas.respuesta) from preguntas left join respuestas on preguntas.id = respuestas.pregunta_id left join usuarios on usuarios.id = respuestas.usuario_id where preguntas.respuesta_correcta = respuestas.respuesta group by preguntas.pregunta;

Pregunta 8.

ALTER TABLE respuestas DROP CONSTRAINT respuestas_usuario_id_fkey, ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE;
ALTER TABLE respuestas DROP CONSTRAINT respuestas_pregunta_id_fkey, ADD FOREIGN KEY (pregunta_id) REFERENCES preguntas(id) ON DELETE CASCADE;

delete from usuarios where id = 5; /*para chequear delete on cascade.*/

Pregunta 9.

alter table usuarios add constraint edad check ( edad >= 18);
/* verificando la modificación */
insert into usuarios(id, nombre, edad) values (5, 'Ricardo',16);
insert into usuarios(id, nombre, edad) values (5, 'Ricardo',18);

Pregunta 10.

ALTER TABLE usuarios ADD COLUMN email varchar;
ALTER TABLE usuarios ADD CONSTRAINT email_unico UNIQUE (email);

Link del video

https://youtu.be/B_rD6QylDkk





