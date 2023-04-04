/*Utilizando el Insert, Update, Delete, debemos ejecutar lo siguiente:*/
/*1. Insertar en la tabla genres un nuevo género con los siguientes datos:
○ name: Investigación
○ ranking: 13
○ active: 1*/
insert into genres (name, ranking, active)
values ("Investigación", 13, 1);

/*2. Actualizar el nuevo registro “name: Investigación” por “Investigación Científica”.*/
update genres
set name = "Investigación científica"
where ranking = 13;

/*3. Eliminar el registro cuyo name es: “Investigación Científica”. Recordemos verificar
cuál es el id de dicho registro.*/
delete from genres where id = 13;

/*Haciendo uso del Select, debemos afrontar las siguientes consultas:*/
/*4. Mostrar todos los registros de la tabla “movies”.*/
select * from movies;

/*5. Mostrar el nombre, apellido y rating de todos los actores.*/
select first_name, last_name, rating from actors;

/*6. Mostrar el título de todas las series. Tomar en cuenta que tanto el nombre de la
tabla como el campo estén en español.*/
select title as titulo from series;

/*Utilizando el Where y Order by, ejecutemos las siguientes consultas (ten en cuenta el uso
de los operadores lógicos y relacionales).*/
/*1. Mostrar el nombre y apellido de los actores cuyo rating sea mayor a 7.5.*/
select first_name, last_name from actors
where rating > 7.5;

/*2. Mostrar el título de las películas, el rating y los premios de las películas con un rating
mayor a 7.5 y con más de dos premios.*/
select title, rating,awards from movies
where rating > 7.5 
and awards > 2;

/*3. Mostrar el título de las películas y el rating ordenadas por rating en forma
ascendente.*/
select title, rating from movies
order by rating asc;

/*Vamos muy bien, no nos desanimemos ni por un minuto. Ahora, para la realización de las
consultas debemos valernos del Limit y Offset.*/
/*1. Mostrar los títulos de las primeras tres películas en la base de datos.*/
select title from movies
limit 3;

/*2. Mostrar el top 5 de las películas con mayor rating.*/
select title, rating from movies
order by rating desc 
limit 5;

/*3. Mostrar las top 5 a 10 de las películas con mayor rating.*/
select title, rating from movies
order by rating desc 
limit 5 offset 5;

/*4. Listar los primeros 10 actores (sería la página 1).*/
select * from actors
limit 10;

/*a. Luego, usar offset para traer la página 3.*/
select * from actors 
limit 10 offset 20;

/*Ya casi culminamos todos los desafíos. Utilizando el Between y Like, hagamos las
siguientes consultas:*/
/*1. Mostrar el título y rating de todas las películas cuyo título sea Harry Potter.*/
select title, rating from movies
where title like "%Harry Potter%";

/*2. Mostrar a todos los actores cuyos nombres empiecen con Sam.*/
select first_name, last_name from actors
where first_name like "Sam%";

/*3. Mostrar el título de las películas que salieron entre el 2004 y 2008.*/
select title from movies
where YEAR(release_date) between '2004' and '2008';