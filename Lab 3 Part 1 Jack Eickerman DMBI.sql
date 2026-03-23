DROP DATABASE IF EXISTS cinema;
CREATE DATABASE IF NOT EXISTS cinema;
USE cinema;

DROP TABLE IF EXISTS movies;
CREATE TABLE IF NOT EXISTS movies (
	title VARCHAR(25),
    director VARCHAR(10),
    studio VARCHAR(10),
    box_office INT,
    release_date DATE
    );

INSERT INTO movies (title, director, studio, box_office, release_date)
VALUES ("Star Wars", "Lucas", "Fox", 776, str_to_date("25051977", '%d%m%Y'));
INSERT INTO movies (title, director, studio, box_office, release_date)
VALUES ("Raiders of the Lost Ark", "Spielberg", "Paramount", 390, str_to_date("12061981", '%d%m%Y')); 
INSERT INTO movies (title, director, studio, box_office, release_date)
VALUES ("The Dark Knight", "Nolan", "WB", 1006, str_to_date("14072008", '%d%m%Y')); 
INSERT INTO movies (title, director, studio, box_office, release_date)
VALUES ("The Princess Bride", "Reiner", "Fox", 31, str_to_date("25091987", '%d%m%Y')); 
INSERT INTO movies (title, director, studio, box_office, release_date)
VALUES ("Point Break", "Bigelow", "WB", 104, str_to_date("12071991", '%d%m%Y')); 

#1 - Add a new column called ‘movie_id’ which will act as the primary key for the table

ALTER TABLE movies
ADD movie_id INT;

#2 - Add a new column to the table called cert, which will denote the rating associated with each movie

ALTER TABLE movies
ADD cert VARCHAR(4);

#3 - Populate the new column ‘cert’ with the following values PG, PG, 12A, PG, R for movie_id 1,2,3,4,5 respectively.

UPDATE movies
SET movie_id = 1
WHERE title = 'Star Wars';
UPDATE movies
SET cert = 'PG'
WHERE title = 'Star Wars';

UPDATE movies
SET movie_id = 2
WHERE title = 'Raiders of the Lost Ark';
UPDATE movies
SET cert = 'PG'
WHERE title = 'Raiders of the Lost Ark';

UPDATE movies
SET movie_id = 3
WHERE title = 'The Dark Knight';
UPDATE movies
SET cert = '12A'
WHERE title = 'The Dark Knight';

UPDATE movies
SET movie_id = 4
WHERE title = 'The Princess Bride';
UPDATE movies
SET cert = 'PG'
WHERE title = 'The Princess Bride';

UPDATE movies
SET movie_id = 5
WHERE title = 'Point Break';
UPDATE movies
SET cert = 'R'
WHERE title = 'Point Break';

#4 - Delete (drop) the column called studio

ALTER TABLE movies
DROP COLUMN studio;


