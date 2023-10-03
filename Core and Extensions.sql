CREATE TABLE IF NOT EXISTS films (
	id SERIAL PRIMARY KEY,
	title TEXT,
	genre TEXT,
	year INTEGER,
	score INTEGER
);

INSERT INTO films (
	title,
	genre,
	year,
	score
)

VALUES 
	('The Shawshank Redemption', 'Drama', 1994, 9),
	('The Godfather', 'Crime', 1972, 9),
	('The Dark Knight', 'Action', 2008, 9),
	('Alien', 'SciFi', 1979, 9),
	('Total Recall', 'SciFi', 1990, 8),
	('The Matrix', 'SciFi', 1999, 8),
	('The Matrix Resurrections', 'SciFi', 2021, 5),
	('The Matrix Reloaded', 'SciFi', 2003, 6),
	('The Hunt for Red October', 'Thriller', 1990, 7),
	('Misery', 'Thriller', 1990, 7),
	('The Power Of The Dog', 'Western', 2021, 6),
	('Hell or High Water', 'Western', 2016, 8),
	('The Good the Bad and the Ugly', 'Western', 1966, 9),
	('Unforgiven', 'Western', 1992, 7);

SELECT * FROM films;

SELECT * FROM films ORDER BY score DESC;

SELECT * FROM films ORDER BY year ASC;

SELECT * FROM films WHERE score >= 8;

SELECT * FROM films WHERE score <= 7;

SELECT * FROM films WHERE year = 1990;

SELECT * FROM films WHERE year < 2000;

SELECT * FROM films WHERE year > 1990;

SELECT * FROM films WHERE year BETWEEN 1990 AND 1999;

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre = 'Western' OR genre = 'SciFi';

SELECT * FROM films WHERE genre != 'SciFi';

SELECT * FROM films WHERE genre = 'Western' AND year < 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';


--Extension 1

SELECT AVG(score) FROM films;

SELECT COUNT(title) FROM films;

SELECT AVG(score) FROM films WHERE genre = 'Drama';

SELECT AVG(score) FROM films WHERE genre = 'Crime';

SELECT AVG(score) FROM films WHERE genre = 'Action';

SELECT AVG(score) FROM films WHERE genre = 'SciFi';

SELECT AVG(score) FROM films WHERE genre = 'Thriller';

SELECT AVG(score) FROM films WHERE genre = 'Western';

--Extension 2

CREATE TABLE IF NOT EXISTS directors (
	id SERIAL PRIMARY KEY,
	name TEXT
);

INSERT INTO directors (
	name
)

VALUES 
('Quentin Tarantino'),
('Guy Ritchie'),
('Christopher Nolan'),
('Peter Jackson');


CREATE TABLE IF NOT EXISTS films2 (
    id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    year INTEGER,
    score INTEGER,
    directorId INTEGER
);

INSERT INTO films2 (
	title,
	genre,
	year,
	score,
	directorId
)

VALUES 
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
	('The Godfather', 'Crime', 1972, 9, 2),
	('The Dark Knight', 'Action', 2008, 9, 3),
	('Alien', 'SciFi', 1979, 9, 4),
	('Total Recall', 'SciFi', 1990, 8, 1),
	('The Matrix', 'SciFi', 1999, 8, 2),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
	('The Hunt for Red October', 'Thriller', 1990, 7, 1),
	('Misery', 'Thriller', 1990, 7, 2),
	('The Power Of The Dog', 'Western', 2021, 6, 3),
	('Hell or High Water', 'Western', 2016, 8, 4),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
	('Unforgiven', 'Western', 1992, 7, 2);


SELECT films2.*, directors.name
FROM films2
INNER JOIN directors ON films2.directorid = directors.id;