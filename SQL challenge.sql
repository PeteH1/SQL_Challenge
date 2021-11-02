SELECT COUNT(name) FROM city WHERE countrycode='USA';
SELECT name, population, lifeexpectancy FROM country WHERE name='Argentina';
SELECT name, lifeexpectancy FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy DESC LIMIT 1;
SELECT country.name AS Country, city.name AS Capital FROM country JOIN city ON city.ID=country.capital WHERE country.name='Spain';
SELECT c.name, cl.language FROM country c JOIN countrylanguage cl ON c.code=cl.countrycode WHERE c.region='Southeast Asia';
SELECT name FROM city WHERE name LIKE 'f%' LIMIT 25;
SELECT COUNT(city.name) FROM city JOIN country ON city.countrycode=country.code WHERE country.name='China';
SELECT name, population FROM country WHERE population!=0 ORDER BY population LIMIT 1;
SELECT COUNT(name) FROM country;
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 10;
SELECT name, population FROM city WHERE countrycode='JPN' ORDER BY population DESC LIMIT 5;
SELECT name, headofstate FROM country WHERE headofstate='Elizabeth II';
SELECT name, population, surfacearea AS area, population/surfacearea AS ratio FROM country WHERE population!=0 ORDER BY ratio LIMIT 10;
SELECT language FROM countrylanguage GROUP BY language ORDER BY language;
SELECT name, GNP FROM country ORDER BY GNP DESC LIMIT 10;
SELECT c.name, COUNT(cl.language) AS num_of_languages FROM country c JOIN countrylanguage cl ON c.code=cl.countrycode GROUP BY c.name ORDER BY COUNT(cl.language) DESC LIMIT 10;
SELECT c.name, cl.percentage FROM country c JOIN countrylanguage cl ON c.code=cl.countrycode WHERE cl.language='German' AND cl.percentage>50;
SELECT name, lifeexpectancy FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy LIMIT 1;
SELECT governmentform, COUNT(*) AS frequency FROM country GROUP BY governmentform ORDER BY COUNT(*) DESC LIMIT 3;
SELECT COUNT(indepyear) AS num_of_indepents FROM country WHERE indepyear IS NOT NULL;