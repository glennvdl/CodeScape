SELECT name, imdb_rating FROM movies;

SELECT DISTINCT genre FROM movies;

SELECT * FROM movies WHERE imdb_rating > 8;

/* use "_" as a wildcard for a letter*/
SELECT * FROM movies WHERE name LIKE 'Se_en';

/* use "%" in order to filter movies that start with 'a' */
SELECT * FROM movies WHERE name LIKE 'a%';
/* use "%" in order to filter movies that contain 'man'' */
SELECT * FROM movies WHERE name LIKE '%man%';

/*The BETWEEN operator is used to filter the result set within a certain range. The values can be numbers, text or dates.*/
SELECT * FROM movies WHERE name BETWEEN 'A' AND 'J';
SELECT * FROM movies WHERE year BETWEEN 1990 AND 2000;

SELECT * FROM movies WHERE year BETWEEN 1990 AND 2000 AND genre = 'comedy';
/*equals*/
SELECT * FROM movies WHERE year BETWEEN 1990 AND 2000 AND genre IS 'comedy';

/*OR*/
SELECT * FROM movies WHERE genre = 'comedy' or year < 1980;

SELECT * FROM movies ORDER BY imdb_rating DESC;
/*query that only returns the three lowest rated movies*/
SELECT*FROM movies ORDER BY imdb_rating ASC LIMIT 3;