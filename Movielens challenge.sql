SELECT title, release_date FROM movies WHERE release_date BETWEEN '1983-01-01' AND '1993-12-31' ORDER BY release_date DESC;
SELECT m.title, AVG(r.rating) FROM movies m JOIN ratings r ON m.id=r.movie_id GROUP BY m.title ORDER BY AVG(r.rating);
SELECT DISTINCT * FROM movies m JOIN genres_movies gm ON m.id=gm.movie_id JOIN genres g ON gm.genre_id=g.id JOIN ratings r ON m.id=r.movie_id JOIN users u ON r.user_id=u.id JOIN occupations o ON u.occupation_id=o.id WHERE g.name='Sci-Fi' AND u.age=24 AND o.name='Student' AND u.gender='M' AND r.rating=5;
SELECT title FROM movies WHERE release_date=(SELECT release_date FROM movies GROUP BY release_date ORDER BY COUNT(*) DESC LIMIT 1);
SELECT g.name, COUNT(*) from genres g JOIN genres_movies gm ON g.id=gm.genre_id JOIN movies m ON gm.movie_id=m.id GROUP BY g.name ORDER BY COUNT(*);